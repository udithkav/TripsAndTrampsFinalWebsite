package com.TripsAndTramps.Common;
import java.sql.*;

public class databaseConnection {
	public static Connection getConnection() {
		String databaseURL ="jdbc:mysql://localhost:3666/"+DatabaseVariables.tripsAndTrampsDatabaseName;
		String username ="root";
		String password ="";
		Connection con = null;
		try {
			/*Loading the Driver*/	
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Successfully connected to MYSQL Driver");
			   }
	    catch(ClassNotFoundException e) {
				   System.out.println("Failed to Connect to MYSQL Driver");
			   }
		try {
			/*Connecting to the database*/

			con = DriverManager.getConnection(databaseURL, username, password);
			if(con!=null) {
				System.out.println("Succesfully Connected to Server");
			}
			else {
				System.out.println("Unable to Connect to Server");
			}
			
		}
		catch(SQLException ex){
			ex.printStackTrace();
		}
		return con;
	}
}
