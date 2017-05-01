package com.roomieweb.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import org.kaaproject.kaa.client.DesktopKaaPlatformContext;
import org.kaaproject.kaa.client.Kaa;
import org.kaaproject.kaa.client.KaaClient;
import org.kaaproject.kaa.client.KaaClientProperties;
import org.kaaproject.kaa.client.SimpleKaaClientStateListener;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.roomieweb.dao.MeetingDao;
import com.roomieweb.dao.RoomDao;
import com.roomieweb.dao.UserDao;
import com.roomieweb.model.Meeting;
import com.roomieweb.model.Room;
import com.roomieweb.model.User;
import com.roomieweb.util.KaaClientClass;

@Controller 
public class MeetingsController {
	public static KaaClient kaaClient;
	final String KEYS_DIR ="keys_for_java_event_demo";
	
	
	public String convertToDateTime(String date, String time){
		
		
		if(time.length()==7)
			return date.substring(6, 10)+"-"+date.substring(3, 5)+"-"+date.substring(0, 2)+ " 0"+time.substring(0,4)+":00";
		
		return date.substring(6, 10)+"-"+date.substring(3, 5)+"-"+date.substring(0, 2)+ " "+time.substring(0,5)+":00";
		
	}
	
	
	@RequestMapping("registerMeeting")
	public String RegisterMeetings(Model model) throws ClassNotFoundException {
		
		ArrayList<User> users = new UserDao().getUsers();
		ArrayList<Room> rooms = new RoomDao().getRooms();
		ModelAndView mv = new ModelAndView("registerMeeting");
		mv.addObject("users", users);
		mv.addObject("rooms", rooms);
		model.addAttribute("users", users);
		model.addAttribute("rooms",rooms);
		  
		return "registerMeeting";
		
	}
	
	@RequestMapping("doregisterMeeting")
	public ModelAndView RegisterMeetings(String meetingName,Integer roomId, Integer[] usersId,String startDate,String startTime,String endDate,String endTime ) throws ClassNotFoundException, IOException, InterruptedException {
		
		Meeting m = new Meeting();
		m.setMeetingName(meetingName);
		ArrayList<User> users = new ArrayList<User>();
		Room r = new Room();
		r.setRoomId(roomId);
		m.setRoom(r);
		for(int i=0; i < usersId.length;i++){
			User user = new User();
			user.setUserId(usersId[i]);
			users.add(user);
		}
		m.setUsers(users);
		
		String startDateTime= convertToDateTime(startDate, startTime);
		String endDateTime= convertToDateTime(endDate, endTime);
		m.setStartTime(startDateTime);
		m.setEndTime(endDateTime);
		
		MeetingDao md = new MeetingDao();
		md.insertMeeting(m);
		KaaClientClass kaaClient = new KaaClientClass(roomId);
		CountDownLatch startUpLatch = new CountDownLatch(1);	
				

		return new ModelAndView("registerMeeting");
			
		
	}
	
}
