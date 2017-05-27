package com.roomieweb.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import com.roomieweb.model.Meeting;
import com.roomieweb.model.User;

@Repository
public class UserDAO {

	
	Connection connection;
	
	
	@Autowired  
	public UserDAO(DataSource datasource) throws SQLException {
		this.connection= datasource.getConnection();
    }
	
	public void removeUser(User u) throws SQLException{
		
		System.out.println("Before called");
		
		if(u.getUserId()>-1){	
			String sql = "DELETE FROM roomie.user  WHERE user_id=? ";
			
			PreparedStatement preparedStat=connection.prepareStatement(sql);
			preparedStat.setInt(1,u.getUserId());
			System.out.println("Before execute");
			System.out.println(preparedStat);
			preparedStat.execute();
			System.out.println(preparedStat);
			
		
		}
			
		
	}
	
	public boolean userExists(User user) throws ClassNotFoundException{
		try {
			String sql = "SELECT EXISTS ("
				+ " SELECT * FROM roomie.user WHERE email =? AND password =? ) as exist";
			PreparedStatement preparedStat=  connection.prepareStatement(sql);
			preparedStat.setString(1, user.getEmail());		
			preparedStat.setString(2, user.getHashedPassword());
			ResultSet rs =  preparedStat.executeQuery();
			while(rs.next()){
				if(rs.getBoolean("exist"))
					return true;
			}
			return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	
	public ArrayList<User> getUsers(String email) throws ClassNotFoundException{
		
		try {
			String sql = "SELECT u.email,u.user_id, u.name from roomie.user u where u.email !=?";
			PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
			preparedStat.setString(1, email);
			ResultSet rs =  preparedStat.executeQuery();
			ArrayList<User> users = new ArrayList<User>();
			while(rs.next()){
				User u = new User();
				u.setEmail(rs.getString("u.email"));
				u.setName(rs.getString("u.name"));
				u.setUserId(rs.getInt("u.user_id"));
				users.add(u);
			}
			return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
	}
	
public ArrayList<User> addUser(User u ) throws ClassNotFoundException{
		
		try {
			String sql = "INSERT INTO roomie.user(rfid_code,name,email,password) "
					+ "VALUES (?,?,?,?)";
			PreparedStatement preparedStat= connection.prepareStatement(sql);
			preparedStat.setString(1, u.getRfidCode());
			preparedStat.setString(2, u.getName());
			preparedStat.setString(3, u.getEmail());
			preparedStat.setString(4, u.getHashedPassword());
			preparedStat.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
		
}
	
	
public User getUser(String email)throws ClassNotFoundException{
	
	try {
		String sql = "SELECT DISTINCT u.email,u.user_id, u.name,u.rfid_code from roomie.user u where u.email =?";
		PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
		preparedStat.setString(1, email);
		ResultSet rs =  preparedStat.executeQuery();
		User u = new User();
		
		while(rs.next()){
			u.setEmail(rs.getString("u.email"));
			u.setName(rs.getString("u.name"));
			u.setUserId(rs.getInt("u.user_id"));
			u.setRfidCode(rs.getString("u.rfid_code"));
			
		}
		return u;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	
	
}

}