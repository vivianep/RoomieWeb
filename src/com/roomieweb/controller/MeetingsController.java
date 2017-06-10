package com.roomieweb.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import javax.servlet.http.HttpServletRequest;

import org.kaaproject.kaa.client.DesktopKaaPlatformContext;
import org.kaaproject.kaa.client.Kaa;
import org.kaaproject.kaa.client.KaaClient;
import org.kaaproject.kaa.client.KaaClientProperties;
import org.kaaproject.kaa.client.SimpleKaaClientStateListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.roomieweb.dao.MeetingDAO;
import com.roomieweb.dao.RoomDAO;
import com.roomieweb.dao.UserDAO;
import com.roomieweb.model.Meeting;
import com.roomieweb.model.Room;
import com.roomieweb.model.User;
import com.roomieweb.util.KaaClientClass;
//import com.roomieweb.util.KaaClientClass;
import com.roomieweb.util.Util;

@Controller 
public class MeetingsController {
	
	public static KaaClient kaaClient;
	final String KEYS_DIR ="keys_for_java_event_demo";
	MeetingDAO meetingDao;
	UserDAO userDao;
	RoomDAO roomDao;
	
	@Autowired
	public MeetingsController(MeetingDAO meetingDao, UserDAO userDao, RoomDAO roomDao){
		
		this.meetingDao = meetingDao;
		this.userDao= userDao;
		this.roomDao= roomDao;
		
	}
	
	public String convertToDateTime(String date, String time){
		
		
		if(time.length()==7)
			return date.substring(6, 10)+"-"+date.substring(3, 5)+"-"+date.substring(0, 2)+ " 0"+time.substring(0,4)+":00";
		
		return date.substring(6, 10)+"-"+date.substring(3, 5)+"-"+date.substring(0, 2)+ " "+time.substring(0,5)+":00";
		
	}
	
	@RequestMapping("registerMeeting")
	public String RegisterMeetings(HttpServletRequest request,Model model) throws ClassNotFoundException {
		
		
		User u = (User) request.getSession().getAttribute("LoggedUser");
		
		if(u!=null){	
			ArrayList<User> users = userDao.getUsers(u.getEmail());
			ArrayList<Room> rooms = roomDao.getRooms();
			ModelAndView mv = new ModelAndView("registerMeeting");
			mv.addObject("users", users);
			mv.addObject("rooms", rooms);
			mv.addObject("user", u);
			model.addAttribute("user",u);
			
			model.addAttribute("users", users);
			model.addAttribute("rooms",rooms);
			return "registerMeeting";
			
		}	  
		return "login";
		
	}
	
	@RequestMapping(value="doremoveMeeting",method=RequestMethod.POST)
	public String doremoveMeeting(Model model,Meeting m) throws ClassNotFoundException, SQLException, IOException, InterruptedException {
		
			
			Meeting meeting = meetingDao.getMeetingbyId(m.getMeetingId());
			meetingDao.removeMeeting(m);
			if(Util.isOnCurrentHour(meeting)) {
				KaaClientClass kaaClient = new KaaClientClass(meeting.getMeetingId());
			}
			
			return "redirect:showMeetings";		
		
	}
	
	
	
	
	@RequestMapping("editMeeting")
	public String editMeeting(Model model,HttpServletRequest request,Meeting m) throws ClassNotFoundException, SQLException, ParseException {
		
		User u = (User) request.getSession().getAttribute("LoggedUser");
		Meeting meeting = meetingDao.getMeetingbyId(m.getMeetingId());
		if(u!=null){
			ArrayList<User> users = userDao.getUsers(u.getEmail());
			//ArrayList<Meeting> meetings = meetingDao.getMeetings(u.getEmail());
			ModelAndView mv = new ModelAndView("showMeetings");
			mv.addObject("users", users);
			model.addAttribute("users",users);
			ArrayList<Integer> usersIds = new ArrayList<Integer>();
			for(int i=0 ; i<users.size();i++) {
				usersIds.add(users.get(i).getUserId());
				
			}
			mv.addObject("usersIds", usersIds);
			model.addAttribute("usersIds",usersIds);
			String startDate = Util.retrieveDate(meeting.getStartTime());
			String endDate = Util.retrieveDate(meeting.getEndTime());
			String startHour = Util.retrieveHour(meeting.getStartTime());
			String endHour =  Util.retrieveHour(meeting.getEndTime());
			
		
			
			ArrayList<Room> rooms = roomDao.getRooms();
			mv.addObject("rooms", rooms);
			model.addAttribute("rooms",rooms);
			mv.addObject("meeting", meeting);
			model.addAttribute("meeting",meeting);
			mv.addObject("startDate",startDate );
			model.addAttribute("startDate", startDate);
			mv.addObject("startHour", startHour);
			model.addAttribute("startHour",startHour);
			mv.addObject("endDate", endDate);
			model.addAttribute("endDate",endDate);
			mv.addObject("endHour", endHour);
			model.addAttribute("endHour",endHour);
			
			
			
			
		return "editMeeting";
		}
		
		return "login";
		
	}
	
	@RequestMapping("showMeetings")
	public String showMeetings(Model model,HttpServletRequest request) throws ClassNotFoundException, SQLException {
		
		User u = (User) request.getSession().getAttribute("LoggedUser");
		if(u!=null){
			ArrayList<Meeting> meetings = meetingDao.getMeetings(u.getEmail());
			ModelAndView mv = new ModelAndView("showMeetings");
			mv.addObject("user", u);
			model.addAttribute("user",u);
			mv.addObject("meetings", meetings);
			model.addAttribute("meetings",meetings);
			
		return "showMeetings";}
		
		return "login";
		
	}

	@RequestMapping("doUpdateMeeting")
	public String doUpdateMeeting(HttpServletRequest request,String meetingName,Integer roomId, Integer[] usersId,String startDate,String startTime,String endDate,String endTime, int meetingId ) throws ClassNotFoundException, IOException, InterruptedException {
		
		User loggedUser = (User) request.getSession().getAttribute("LoggedUser");
		if(loggedUser!=null) {
			Meeting m = new Meeting();
			m.setMeetingName(meetingName);
			m.setMeetingId(meetingId);
			ArrayList<User> users = new ArrayList<User>();
			Room r = new Room();
			r.setRoomId(roomId);
			m.setRoom(r);
			loggedUser.setOwner(true);
			users.add(loggedUser);
			for(int i=0; i < usersId.length;i++){
				User user = new User();
				user.setUserId(usersId[i]);
				user.setOwner(false);
				users.add(user);
			}
			m.setUsers(users);
			String startDateTime= convertToDateTime(startDate, startTime);
			String endDateTime= convertToDateTime(endDate, endTime);
			m.setStartTime(startDateTime);
			m.setEndTime(endDateTime);
			
			meetingDao.updateMeeting(m);
			if(Util.isOnCurrentHour(m)) {
				KaaClientClass kaaClient = new KaaClientClass(m.getMeetingId());
			}
			return "redirect:showMeetings";
			
		}else {
			

			return "login";
		}
	}
	@RequestMapping("doregisterMeeting")
	public String doRegisterMeetings(HttpServletRequest request,String meetingName,Integer roomId, Integer[] usersId,String startDate,String startTime,String endDate,String endTime ) throws ClassNotFoundException, IOException, InterruptedException {
		
		User loggedUser = (User) request.getSession().getAttribute("LoggedUser");
		if(loggedUser!=null) {
			Meeting m = new Meeting();
			m.setMeetingName(meetingName);
			ArrayList<User> users = new ArrayList<User>();
			Room r = new Room();
			r.setRoomId(roomId);
			m.setRoom(r);
			loggedUser.setOwner(true);
			users.add(loggedUser);
			for(int i=0; i < usersId.length;i++){
				User user = new User();
				user.setUserId(usersId[i]);
				user.setOwner(false);
				users.add(user);
			}
			m.setUsers(users);
			
			String startDateTime= convertToDateTime(startDate, startTime);
			String endDateTime= convertToDateTime(endDate, endTime);
			m.setStartTime(startDateTime);
			m.setEndTime(endDateTime);
			
			int id=meetingDao.addMeeting(m);
			if(Util.isOnCurrentHour(m)) {
				KaaClientClass kaaClient = new KaaClientClass(id);
			}
			
			return "redirect:showMeetings";
		}else {
			

			return "login";
		}

}
}