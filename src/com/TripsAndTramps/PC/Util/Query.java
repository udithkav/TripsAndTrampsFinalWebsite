package com.TripsAndTramps.PC.Util;

import java.sql.Date;

public class Query {

	public static String insertPackage(String act_name,String location,double amount,String TRName)
	{
	String sql = "insert into Package(Package_Id,Activity_Name,Location,Amount,TG_Name) values(0,'"+act_name+"','"+location+"','"+amount+"','"+TRName+"')";
	
	
	
	return sql;
	}
	
	public static String getPackageDetails()
	{
		String sql = "select * from package ";
		return sql;
	}
	
	public static String getSpecificPackage(int pid) 
	{
		String sql = "select * from package where Package_Id = '"+pid+"'";
		
		return sql;
	}
	
	public static String insertTourGuideRservation(String aname,String location,double amount,String tgname,Date fromm,Date too,double amountforday)
	{
		String sql = "insert into tourguide_reservation(reservation_id,Activity_Name,Location,Amount,TG_Name,fromm,too,amountforday) values(0,'"+aname+"','"+location+"','"+amount+"','"+tgname+"','"+fromm+"','"+too+"','"+amountforday+"');";
		
		return sql;
	}
   
	public static String getSpecificReservation(String tgname)
	{
		String sql = "select * from tourguide_reservation WHERE TG_Name = '"+tgname+"';";
		return sql;
	}

	
	public static String deletePackageReservation(int tgrid)
	{
		String sql= "Delete from tourguide_reservation Where reservation_id='"+tgrid+"'; ";
		return sql;
	}

	public static String getSpecificReservationToUpdate(int id) {

		String sql = "select * from tourguide_reservation where reservation_id = '"+id+"'";
		return sql;
	}

	public static String UpdatePackageReservation(int id, Date fro, Date to, double total) {
		
		String sql = "UPDATE tourguide_reservation SET fromm = '"+fro+"', too = '"+to+"', Amount = '"+total+"' WHERE reservation_id = '"+id+"';";
		
		return sql;
		
	}
	
	
	public static String deletePackage(int pid)
	{
		String sql= "Delete from package Where Package_Id ='"+pid+"'; ";
		return sql;
	}
	
	
	
	
	public static String getSpecificPackageToUpdate(int pid) {

		String sql = "select * from Package where Package_Id = '"+pid+"'";
		
		return sql;
	}

	
	
	
	
	public static String UpdatePackage(int pid,String act_name,String location,double amount,String TRName)
	{
	String sql = "UPDATE Package SET Activity_Name='"+act_name+"', Location='"+location+"', Amount='"+amount+"',TG_Name='"+TRName+"' WHERE Package_Id='"+pid+"' ;" ;
	
	
	
	return sql;
	}
	
	
	
	
	
}

 
