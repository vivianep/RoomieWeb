package com.roomieweb.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.mysql.jdbc.PreparedStatement;
import com.roomieweb.model.User;

@Repository
public class UserDao {

	
	public boolean userExists(User user) throws ClassNotFoundException{
		try {
			Connection connection = ConnectionFactory.getConnection();
			String sql = "SELECT EXISTS ("
				+ " SELECT * FROM roomie.user WHERE email =? AND password =? ) as exist";
			PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
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
	
	public ArrayList<User> getUsers() throws ClassNotFoundException{
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			String sql = "SELECT u.email,u.user_id, u.name from roomie.user u";
			PreparedStatement preparedStat= (PreparedStatement) connection.prepareStatement(sql);
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

}