package com.roomieweb.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;
import com.roomieweb.model.Meeting;
import com.roomieweb.model.Room;

public class MeetingDao {


	
private int getLastId() throws SQLException, ClassNotFoundException{
	
	Connection connection = ConnectionFactory.getConnection();
	String sql = "SELECT max(m.meeting_id) as max_id FROM roomie.meeting m";					
	
	PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
	ResultSet rs =  preparedStat.executeQuery();
	while(rs.next()){
		return rs.getInt("max_id");
	}
	return 0;

	
}
	
public void insertMeeting(Meeting m) throws ClassNotFoundException{
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO roomie.meeting(meeting_name,room_id,"
					+ "user_id,start_time, end_time) "
					+ "	VALUES(?,?,?,?,?)";					
			
			PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
			preparedStat.setString(1,m.getMeetingName());
			preparedStat.setInt(2,m.getRoom().getRoomId());
			preparedStat.setInt(3,m.getUsers().get(0).getUserId());
			preparedStat.setString(4,m.getStartTime());
			preparedStat.setString(5,m.getEndTime());
			preparedStat.executeUpdate();
			
			
			int lastId = getLastId();
			for( int i =0; i<m.getUsers().size();i++){
				
				sql = "INSERT INTO roomie.meeting_guest(user_id,meeting_id) "
						+ "VALUES (?,?)";
				preparedStat= (PreparedStatement) connection.prepareStatement(sql);
				preparedStat.setInt(1, m.getUsers().get(i).getUserId());
				preparedStat.setInt(2,lastId);
				preparedStat.executeUpdate();
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
	

