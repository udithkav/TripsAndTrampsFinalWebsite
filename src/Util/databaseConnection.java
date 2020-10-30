package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class databaseConnection {
	
	public static Connection getConnection() {
		String databaseURL ="jdbc:mysql://localhost:3306/tripsandtramps";
		String username ="root";
		String password ="MALIndu123#";
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
				System.out.println("Unable to Connec to Server");
			}
			
		}
		catch(SQLException ex){
			ex.printStackTrace();
		}
		return con;
	}

}
