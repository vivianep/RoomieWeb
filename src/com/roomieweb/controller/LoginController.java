package com.roomieweb.controller;



import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.roomieweb.dao.UserDao;
import com.roomieweb.model.User;


@Controller 
public class LoginController {

	 private Logger logger = LoggerFactory.getLogger(LoginController.class);

	@RequestMapping("/login")
	public ModelAndView login() {
 
			return new ModelAndView("login");
	}
	
	@RequestMapping("/index")
	public ModelAndView index() {
 
			return new ModelAndView("index");
	}

	
	@RequestMapping("doLogin")
	public ModelAndView doLogin(String username, String password, HttpSession session) throws ClassNotFoundException {
	  User u = new User();
	  u.setEmail(username);
	  u.setHashedPassword(password);
	  if(new UserDao().userExists(u)) {
	   session.setAttribute("LoggedUser", u);
	   return new ModelAndView("index");
		 
	  }
	  return new ModelAndView("login");
	   
	}
	/*
	
	@RequestMapping("newMeeting")
	public ModelAndView doLogin(String username, String password, HttpSession session) throws ClassNotFoundException {
	  User u = new User();
	  u.setEmail(username);
	  u.setHashedPassword(password);
	  if(new UserDao().userExists(u)) {
	   session.setAttribute("LoggedUser", u);
	   return new ModelAndView("index");
		 
	  }
	  return new ModelAndView("login");
	   
	}


	*/
}
