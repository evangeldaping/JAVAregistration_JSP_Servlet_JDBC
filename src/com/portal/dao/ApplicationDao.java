package com.portal.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.portal.bean.User;


public class ApplicationDao {
	
	public boolean createRegistrationInfo(String dbUserName, User user) {
		
		try {
			Connection connection = DBConnection.getConnectionToMySQl(dbUserName);
			PreparedStatement stmt;			
			String query = "INSERT INTO members(firstname, lastname, email, uname, pass) VALUES (?, ?, ?, ?, ?)";
			stmt = connection.prepareStatement(query);
			stmt.setString(1, user.getFirstname());
			stmt.setString(2, user.getLastname());
			stmt.setString(3, user.getEmail());
			stmt.setString(4, user.getUname());
			stmt.setString(5, user.getPass());
			
			int rowInserted = stmt.executeUpdate();
			 if (rowInserted > 0) { 
			        System.out.println("User is created successfully");
			    } 
		
		}catch (Exception ex) {
			ex.getStackTrace();
		}

		return true;
	}
}
