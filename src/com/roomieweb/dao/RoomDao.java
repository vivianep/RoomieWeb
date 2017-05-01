package com.roomieweb.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;
import com.roomieweb.model.Room;
import com.roomieweb.model.User;

public class RoomDao {

	
public ArrayList<Room> getRooms() throws ClassNotFoundException{
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			String sql = "select r.room, r.location, r.room_id from roomie.room r";
			PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
			ResultSet rs =  preparedStat.executeQuery();
			ArrayList<Room> rooms = new ArrayList<Room>();
			while(rs.next()){
				Room r = new Room();
				r.setRoomName(rs.getString("r.room"));
				r.setRoomLocation(rs.getString("r.location"));
				r.setRoomId(rs.getInt("r.room_id"));
				rooms.add(r);
			}
			return rooms;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}
}
