package com.roomieweb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.roomieweb.model.Meeting;
import com.roomieweb.model.Room;
import com.roomieweb.model.User;

@Repository
public class MeetingDAO {

	Connection connection;
	
	@Autowired  
	public MeetingDAO(DataSource dataSource) throws SQLException {
	    this.connection = dataSource.getConnection();
    }
	
	private int getLastId() throws SQLException, ClassNotFoundException{
		
		String sql = "SELECT max(m.meeting_id) as max_id FROM roomie.meeting m";					
		
		PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
		ResultSet rs =  preparedStat.executeQuery();
		
		while(rs.next()){
			return rs.getInt("max_id");
		}
		
		return 0;
	
		
	}
	
	public void removeMeeting(Meeting m) throws SQLException{
		
		String sql = "DELETE FROM roomie.meeting_guest  "
				+ "WHERE roomie.meeting_guest.meeting_id=? ";
		PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
		preparedStat.setInt(1,m.getMeetingId());
		preparedStat.executeUpdate();
		
		sql = "DELETE FROM roomie.meeting  WHERE roomie.meeting.meeting_id=? ";
		
		preparedStat= (PreparedStatement) connection.prepareStatement(sql);
		preparedStat.setInt(1,m.getMeetingId());
		preparedStat.executeUpdate();
		
		
	}
	
	public void addMeeting(Meeting m) throws ClassNotFoundException{
			
			try {
				String sql = "INSERT INTO roomie.meeting(meeting_name,room_id,"
						+ "start_time, end_time) "
						+ "	VALUES(?,?,?,?)";					
				
				PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
				preparedStat.setString(1,m.getMeetingName());
				preparedStat.setInt(2,m.getRoom().getRoomId());
				preparedStat.setString(3,m.getStartTime());
				preparedStat.setString(4,m.getEndTime());
				preparedStat.executeUpdate();
				
				
				int lastId = getLastId();
				for( int i =0; i<m.getUsers().size();i++){
					
					sql = "INSERT INTO roomie.meeting_guest(user_id,meeting_id, isOwner) "
							+ "VALUES (?,?,?)";
					preparedStat= (PreparedStatement) connection.prepareStatement(sql);
					preparedStat.setInt(1, m.getUsers().get(i).getUserId());
					preparedStat.setInt(2,lastId);
					preparedStat.setBoolean(3, m.getUsers().get(i).isOwner());
					
					preparedStat.executeUpdate();
				}
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}

		public ArrayList<Meeting> getMeetings(String email) throws ClassNotFoundException, SQLException{
			
			ArrayList<Meeting> meetings = new ArrayList<Meeting>();
			String sql = "SELECT m.meeting_id, m.meeting_name, m.start_time, m.end_time, "
					+ "u.user_id, u.name, u.email, u.rfid_code, mg.isOwner,r.room, r.location, r.room_id "
					+ "FROM roomie.meeting m JOIN roomie.meeting_guest mg ON mg.meeting_id= m.meeting_id "
					+ "JOIN roomie.user u ON u.user_id = mg.user_id "
					+ "JOIN roomie.room r ON r.room_id = m.room_id "
					+ "WHERE u.email =? ORDER BY m.meeting_id DESC";

			PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
			
			preparedStat= (PreparedStatement) connection.prepareStatement(sql);
			preparedStat.setString(1, email);
			System.out.println(preparedStat);
			ResultSet rs = preparedStat.executeQuery();			
			while(rs.next()){
				User u = new User();
				ArrayList<User> users = new ArrayList<User>();
				Meeting m = new Meeting();
				Room r = new Room();
				m.setMeetingName(rs.getString("m.meeting_name"));
				m.setStartTime(rs.getString("m.start_time"));
				m.setEndTime(rs.getString("m.end_time"));
				m.setMeetingId(rs.getInt("m.meeting_id"));
				r.setRoomName(rs.getString("r.room"));
				r.setRoomLocation(rs.getString("r.location"));
				r.setRoomId(rs.getInt("r.room_id"));
				m.setRoom(r);
				u.setOwner(rs.getBoolean("mg.isOwner"));
				users.add(u);
				m.setUsers(users);
				meetings.add((Meeting) m);
				
			}
			
			return meetings;

			
		}


/*
		public ArrayList<Meeting> getMeetings(String email) throws ClassNotFoundException, SQLException{
			
			ArrayList<Meeting> meetings = new ArrayList<Meeting>();
			Connection connection = ConnectionFactory.getConnection();
			String sql = "Select mu.meeting_name, mu.start_time, mu.end_time,mu.room, mu.location,mu.meeting_id "
					+ "FROM "
							+ "((SELECT m.meeting_name,m.start_time,m.end_time,r.room,r.location,m.meeting_id FROM roomie.meeting m "
							+ "JOIN roomie.user u ON u.user_id = m.user_id "
							+ "JOIN roomie.room r ON r.room_id = m.room_id "
							+ "WHERE u.email = ? ) UNION "
							+ "(SELECT m2.meeting_name,m2.start_time,m2.end_time,r2.room,r2.location, m2.meeting_id FROM roomie.meeting_guest mg " 
							+ "JOIN roomie.meeting m2 ON mg.meeting_id = m2.meeting_id "
							+ "JOIN roomie.user u2 ON u2.user_id = mg.user_id "
							+ "JOIN roomie.room r2 ON r2.room_id = m2.room_id "
							+ "WHERE u2.email = ? )) "
							+ "as mu ORDER BY mu.start_time DESC";

			PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
			
			preparedStat= (PreparedStatement) connection.prepareStatement(sql);
			preparedStat.setString(1, email);
			preparedStat.setString(2,email);
			ResultSet rs = preparedStat.executeQuery();			
			
			while(rs.next()){

				com.roomieweb.model.Meeting m = new com.roomieweb.model.Meeting();
				Room r = new Room();
				m.setMeetingName(rs.getString("mu.meeting_name"));
				m.setStartTime(rs.getString("mu.start_time"));
				m.setEndTime(rs.getString("mu.end_time"));
				m.setMeetingId(rs.getInt("mu.meeting_id"));
				r.setRoomName(rs.getString("mu.room"));
				r.setRoomLocation(rs.getString("mu.location"));
				m.setRoom(r);
				meetings.add((Meeting) m);
				
			}
			
			return meetings;

			
		}
*/

}
	

