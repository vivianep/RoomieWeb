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
public class RoomDAO {

	Connection connection;
	@Autowired  
	public RoomDAO(DataSource datasource) throws SQLException {
	    this.connection = datasource.getConnection();
	    
    }
	
public void removeRoom(Room r) throws SQLException{
		
		String sql = "DELETE FROM roomie.room r WHERE r.room_id=? ";
		
		PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
		preparedStat.setInt(1,r.getRoomId());
		preparedStat.executeUpdate();
		
		
	}
public ArrayList<Room> getRooms() throws ClassNotFoundException{
		
		try {
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
