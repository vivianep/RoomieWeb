package com.roomieweb.model;

import java.security.NoSuchAlgorithmException;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


import org.springframework.stereotype.Component;

import com.roomieweb.util.Util;


public class User {

	private int userId;
	private String rfidCode;
	private String name;
	private String hashedPassword;
	private String email;
	private boolean isOwner;
	
	public boolean isOwner() {
		return isOwner;
	}
	public void setOwner(boolean isOwner) {
		this.isOwner = isOwner;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getRfidCode() {
		return rfidCode;
	}
	public void setRfidCode(String rfidCode) {
		this.rfidCode = rfidCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHashedPassword() {
		return hashedPassword;
	}
	public void setHashedPassword(String password) throws NoSuchAlgorithmException {
		this.hashedPassword = Util.codifySHA256(password);
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	
	
	
	
	
}
