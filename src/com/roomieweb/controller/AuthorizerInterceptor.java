package com.roomieweb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthorizerInterceptor extends HandlerInterceptorAdapter {
	
	
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,
		      Object controller) throws Exception {

		 String uri = request.getRequestURI();
	      if(uri.endsWith("login") || 
	          uri.endsWith("doLogin") || 
	              uri.contains("resources")){
	        return true;
	      }
	      
	      if(request.getSession().getAttribute("LoggedUser") != null) {
	        return true;
	      }
	      
	      response.sendRedirect("login");
	      return false;

}

}