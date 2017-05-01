package com.roomieweb.model;

import java.util.ArrayList;

public class Meeting {

	

	private int meetingId;
	private Room room;
	private ArrayList<User> users;
	private String startTime;
	private String endTime;
	private String interruptReason;
	private String meetingName;
	
	public int getMeetingId() {
		return meetingId;
	}
	public void setMeetingId(int meetingId) {
		this.meetingId = meetingId;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public ArrayList<User> getUsers() {
		return users;
	}
	public void setUsers(ArrayList<User> users) {
		this.users = users;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getInterruptReason() {
		return interruptReason;
	}
	public void setInterruptReason(String interruptReason) {
		this.interruptReason = interruptReason;
	}
	public String getMeetingName() {
		return meetingName;
	}
	public void setMeetingName(String meetingName) {
		this.meetingName = meetingName;
	}
	
	
	
}
