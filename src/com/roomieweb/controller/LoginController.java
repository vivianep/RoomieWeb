package com.roomieweb.controller;



import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.roomieweb.dao.MeetingDAO;
import com.roomieweb.dao.RoomDAO;
import com.roomieweb.dao.UserDAO;
import com.roomieweb.model.Room;
import com.roomieweb.model.User;
import com.roomieweb.util.Util;


@Controller 
public class LoginController {

	
	public UserDAO userDao;
	
	@Autowired
	public LoginController(UserDAO userDao){
		
		this.userDao = userDao;
	}
	 private Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping("/login")
	public ModelAndView login() {
 
			return new ModelAndView("login");
	}
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request,Model model) {
		
		User u = (User) request.getSession().getAttribute("LoggedUser");
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("user", u);
		model.addAttribute("user", u);
		
		return "index";
	}
	
	
	@RequestMapping("doLogin")
	public String doLogin(String username, String password, HttpSession session) throws ClassNotFoundException, NoSuchAlgorithmException {
	  User u = new User();
	  u.setEmail(username);
	  u.setHashedPassword(password);
	  if(userDao.userExists(u)) {
		  u = userDao.getUser(username);
		   session.setAttribute("LoggedUser", u);
		   //return "/showMeetings";
	
			return "redirect:/showMeetings";
		 
	  }
	  return  "redirect:/index";
	   
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
	  session.invalidate();
	  return "redirect:login";
	}

}
