package com.TripsAndTramps.FinanceManagement.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.TripsAndTramps.FinanceManagment.Model.expense;
import com.TripsAndTramps.FinanceManagment.Model.payment;
import com.TripsAndTramps.FinanceManagement.Util.Query;
import com.TripsAndTramps.FinanceManagement.Util.dbconnection;

public class Service {

	public static void insertExpense(String date,String details,double amount) 
	{

		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.insertExpense(date,details,amount));
		
		
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
	public static List<expense> getExpenseDetails()
	{
		ArrayList<expense> i = new ArrayList<>();
		
		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getExpenseDetails());
			
			while(RS.next())
			{
				int Ex_id = RS.getInt(1);
				String date = RS.getString(2);
				String details = RS.getString(3);
				double amount = RS.getDouble(4);
				
				expense ii = new expense(Ex_id,date,details,amount);
				
				i.add(ii);
			}
		}catch(Exception eee) {
			eee.printStackTrace();
		}
		
		return i;
	}
	
	
	public static List<expense> getSpecificExpense(int Ex_id)
	{
	ArrayList<expense> i = new ArrayList<>();
	
	try {
		Connection conn = dbconnection.getConnection();
		Statement statement = conn.createStatement();
		
		ResultSet RS = statement.executeQuery(Query.getSpecificExpense(Ex_id));
		
		while(RS.next())
		{
			int Ex_id1 = RS.getInt(1);
			String date =RS.getString(2);
			String details = RS.getString(3);
			double amount = RS.getDouble(4);
			
			
			expense ii = new expense(Ex_id1,date,details,amount);
			
			i.add(ii);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return i;
	}
	
	
	public static void UpdateExpense(int Ex_id,String date,String details,double amount)
	{
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.updateExpense(Ex_id, date, details, amount));
		
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	public static void DeleteExpense(int Ex_id)
	{
		try {
			
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(Query.deleteExpense(Ex_id));
		
		}catch(Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	public static List<payment> getPaymentDetails()
	{
		ArrayList<payment> p = new ArrayList<>();
		
		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getPaymentDetails());
			
			while(RS.next())
			{
				int payment_id = RS.getInt(1);
				String username = RS.getString(2);
				double Package_Reservation = RS.getDouble(3);
				double Room_Reservation = RS.getDouble(4);
				double Vehicle_Reservation = RS.getDouble(5);
				String DateFor_PR = RS.getString(6);
				String DateFor_VR = RS.getString(7);
				String DateFor_RR = RS.getString(8);
				
				payment pp = new payment(payment_id,username,Package_Reservation,Room_Reservation,Vehicle_Reservation,DateFor_PR,DateFor_VR,DateFor_RR);
				
				p.add(pp);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return p;
	}

	

	/////////
	
	public expense get_values_of_expense(String date) {

		expense exp = new expense();
	
		Connection connection = dbconnection.getConnection();
		PreparedStatement preparedstatement = null;
		ResultSet resultset = null;

		System.out.println("inside servlet"+date);

		try {

			String sql = "select * from expense where date LIKE ?";
			
		
			preparedstatement = (PreparedStatement) connection.prepareStatement(sql);
			preparedstatement.setString(1, date+"%");
			resultset = preparedstatement.executeQuery();

			while (resultset.next()) {

				exp.setAmount(Double.parseDouble(resultset.getString("amount")));
				exp.setEx_id(Integer.parseInt(resultset.getString("Ex_id")));
				exp.setDate(resultset.getString("date"));
				exp.setDetails(resultset.getString("details"));
				
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		if (exp.getDate() == null) {

			return null;
		} else {
			return exp;
		}

	}


	
	
	
	////////
	
	
	
}
