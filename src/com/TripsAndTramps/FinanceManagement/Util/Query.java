package com.TripsAndTramps.FinanceManagement.Util;

public class Query {

	public static String insertExpense(String date,String details,double amount){
	
		String sql = "Insert into expense(Ex_id,date,details,amount) values(0,'"+date+"','"+details+"','"+amount+"');";
		
		return sql;
	}
	
	public static String getExpenseDetails() {
		String sql = "select* from expense";
		return sql;
	}
	
	
	public static String getSpecificExpense(int Ex_id)
	{
		String sql = "select * from expense where Ex_id = '"+Ex_id+"'";
		
		return sql;
	}
	
	
	public static String updateExpense(int Ex_id,String date,String details,double amount)
	{
		String sql = "UPDATE expense SET date = '"+date+"', details = '"+details+"', amount = '"+amount+"' WHERE Ex_id = '"+Ex_id+"';";
		
		return sql;
	}
	
	
	public static String deleteExpense(int Ex_id)
	{
		String sql = "DELETE FROM expense WHERE Ex_id='"+Ex_id+"';";
		
		return sql;
	}
	
	public static String getPaymentDetails() {
		String sql = "select* from payment";
		return sql;
	}
	
}
