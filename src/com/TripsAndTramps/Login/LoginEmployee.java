package com.TripsAndTramps.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.TripsAndTramps.Common.DatabaseVariables;
import com.TripsAndTramps.Common.databaseConnection;

public class LoginEmployee {
	public static boolean validateLogin(String email, String password) {
		
		Connection conn = databaseConnection.getConnection();
		
		boolean status=false;
		
		try {
			String query="SELECT * FROM permenant_employee WHERE Email = ? AND NIC = ?";
			
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
			
			
			ps.close();
			conn.close();
			
		}catch(Exception e1) {System.out.println(e1);}
		
		return status;
	}
}
