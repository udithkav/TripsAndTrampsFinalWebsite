package com.TripsAndTramps.FC.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.TripsAndTramps.FC.Model.Complaint;
import com.TripsAndTramps.FC.Model.Feedback;
import com.TripsAndTramps.FC.Util.Query;
import com.TripsAndTramps.FC.Util.dbconnection;

public class Service {
	
	public static void insertFeedback(String des)
	{
		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.insertFeedback(des));
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		
		public static void insertComplaint(String des)
		{
			try {
				Connection conn = dbconnection.getConnection();
				Statement statement = conn.createStatement();
				
				statement.executeUpdate(Query.insertComplaint(des));
			}catch(Exception e) {
				e.printStackTrace();
			}
		
	}
		//view
		public static List<Complaint> getComplaints()
		{
			ArrayList<Complaint> c = new ArrayList<>();
			
			try {
				
				Connection conn = dbconnection.getConnection();
				Statement statement = conn.createStatement();
			
				ResultSet RS =statement.executeQuery(Query.getComplaintDetails());
				
				while(RS.next())
				{
					int cno = RS.getInt(1);
					String des = RS.getString(2);
					
					Complaint complaint = new Complaint(cno,des);
					
					c.add(complaint);
				}
			
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return c;
		}
		
		public static void deleteComplaint(int cno)
		{
			try {
				Connection conn = dbconnection.getConnection();
				Statement statement = conn.createStatement();
				
				statement.executeUpdate(Query.deleteComplaint(cno));
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		public static void updateComplaint(int cno,String des)
		{
			try {
				Connection conn = dbconnection.getConnection();
				Statement statement = conn.createStatement();
				
				statement.executeUpdate(Query.updateComplaint(cno,des));
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		//view
				public static List<Feedback> getFeedbacks()
				{
					ArrayList<Feedback> f = new ArrayList<>();
					
					try {
						
						Connection conn = dbconnection.getConnection();
						Statement statement = conn.createStatement();
					
						ResultSet RS =statement.executeQuery(Query.getFeedbackDetails());
						
						while(RS.next())
						{
							int fno = RS.getInt(1);
							String des = RS.getString(2);
							
							Feedback feedback = new Feedback(fno,des);
							
							f.add(feedback);
						}
					
					}catch(Exception e)
					{
						e.printStackTrace();
					}
					
					return f;
				}
				public static void deleteFeedback(int fno)
				{
					try {
						Connection conn = dbconnection.getConnection();
						Statement statement = conn.createStatement();
						
						statement.executeUpdate(Query.deleteFeedback(fno));
					}catch(Exception e)
					{
						e.printStackTrace();
					}
				}
				public static void updateFeedback(int fno,String des)
				{
					try {
						Connection conn = dbconnection.getConnection();
						Statement statement = conn.createStatement();
						
						statement.executeUpdate(Query.updateFeedback(fno,des));
						
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
    }


