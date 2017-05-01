package com.roomieweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    public static Connection getConnection() throws ClassNotFoundException {
    	Class.forName("com.mysql.jdbc.Driver");
    	String url = "jdbc:mysql://localhost:3306/roomie"; //Nome da base de dados
		String user = "root"; //nome do usuário do MySQL
		String password = "123456"; //senha do MySQL
	
        try {
            return DriverManager.getConnection(url,user,password);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}