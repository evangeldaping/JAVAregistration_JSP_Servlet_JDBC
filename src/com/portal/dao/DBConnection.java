package com.portal.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection getConnectionToMySQl(String dbUserName) {
		
		Connection connection = null;
	
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("MySQl JDBC Driver Registered!");
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/communityportal", dbUserName,"");
		}
		catch (ClassNotFoundException e) {
			System.out.println("MySQl JDBC Driver no found!");
			return null;
		}
		catch(SQLException e) {
			System.out.println("Connection failed");
			System.out.println(e.getMessage());
		}
		if(connection !=null) {
			System.out.println("Connection Made");
		}
		return connection;
	}

}
