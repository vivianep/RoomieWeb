package com.roomieweb.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.roomieweb.dao.MeetingDAO;
import com.roomieweb.dao.RoomDAO;
import com.roomieweb.dao.UserDAO;
import com.roomieweb.model.Meeting;
import com.roomieweb.model.Room;
import com.roomieweb.model.User;
//import com.roomieweb.util.KaaClientClass;

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
	
	@RequestMapping("doregisterMeeting")
	public String doRegisterMeetings(HttpServletRequest request,String meetingName,Integer roomId, Integer[] usersId,String startDate,String startTime,String endDate,String endTime ) throws ClassNotFoundException, IOException, InterruptedException {
		
		Meeting m = new Meeting();
		m.setMeetingName(meetingName);
		ArrayList<User> users = new ArrayList<User>();
		Room r = new Room();
		r.setRoomId(roomId);
		m.setRoom(r);
		User loggedUser = (User) request.getSession().getAttribute("LoggedUser");
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
		
		meetingDao.addMeeting(m);
		//KaaClientClass kaaClient = new KaaClientClass(roomId);
		
		return "redirect:showMeetings";

}
}