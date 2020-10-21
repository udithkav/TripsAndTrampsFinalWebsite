package com.TripsAndTramps.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.TripsAndTramps.Common.DatabaseVariables;
import com.TripsAndTramps.Common.databaseConnection;



public class LoginTourist {
	
	
	public static boolean validateLogin(String email, String password) {
		
		Connection conn = databaseConnection.getConnection();
		
		boolean status=false;
		
		try {
			String query="SELECT password FROM "+DatabaseVariables.touristTable+ " WHERE "+DatabaseVariables.touristTable_email+"=? AND " +DatabaseVariables.touristTable_password+"=?";
			
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
	
	public static void saveLoggerDetails(String email) {
		TouristLoggerDetails l1 = new TouristLoggerDetails();
		
		Connection con = databaseConnection.getConnection();
		
		
		try {
			String emailT=null;
			String password = null;
			String fName = null;
			String Lname = null;
			String country = null;
			String phoneNumber=null;
			String touristID = null;
			String passportID = null;
			String query = "SELECT * FROM "+ DatabaseVariables.touristTable + " WHERE "+ DatabaseVariables.touristTable_email +"= ?";
			
			
			
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, email);
		

			ResultSet rs = ps.executeQuery();
			System.out.println(touristID+fName+Lname+passportID+emailT+phoneNumber+password+country);
			if(rs.next()) {
				touristID= rs.getString(DatabaseVariables.touristTable_id);
				fName= rs.getString(DatabaseVariables.touristTable_firstName);
				Lname= rs.getString(DatabaseVariables.touristTable_lastName);
				passportID=rs.getString(DatabaseVariables.touristTable_passportNumber);
				emailT=rs.getString(DatabaseVariables.touristTable_email);
				phoneNumber=rs.getString(DatabaseVariables.touristTable_contactNumber);	
				password=rs.getString(DatabaseVariables.touristTable_password);
				country=rs.getString(DatabaseVariables.touristTable_country);
			}
			
			System.out.println(touristID+fName+Lname+passportID+emailT+phoneNumber+password+country);
			
			l1.setEmail(emailT);
			l1.setLname(Lname);
			l1.setfName(fName);
			l1.setCountry(country);
			l1.setPassportID(passportID);
			l1.setPassword(password);
			l1.setTouristID(Integer.parseInt(touristID));
			l1.setPhoneNumber(Integer.parseInt(phoneNumber));
			ps.close();
			con.close();
			
		}catch(Exception e2) {System.out.println(e2);}
	}
	}

	
	

