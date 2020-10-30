package com.TripsAndTramps.PC.Service;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.TripsAndTramps.PC.Model.Packageee;
import com.TripsAndTramps.PC.Model.TourGuideReservation;
import com.TripsAndTramps.PC.Util.Query;
import com.TripsAndTramps.PC.Util.databaseConnection;

public class Service {

	
	public static void insertPackage(String act_name,String location,double amount,String TRName)
	{
       try {
			
			Connection con = databaseConnection.getConnection();
			Statement statement= con.createStatement();
	
			statement.executeUpdate(Query.insertPackage(act_name, location, amount, TRName));
			
       }catch (Exception e) {
			 
			 e.printStackTrace();
		 }
	}
	
	
	public static List<Packageee> getPackages() 
	{
		ArrayList<Packageee> p = new ArrayList<>();
		try {
			
			Connection con = databaseConnection.getConnection();
			Statement statement= con.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getPackageDetails());
			
			while(RS.next())
			{
				int pkgID = RS.getInt(1);
				String activity_name = RS.getString(2);
				String location = RS.getString(3);
				Double amt = RS.getDouble(4);
				String tgName = RS.getString(5);
				
				Packageee pp = new Packageee(pkgID, activity_name, location, amt, tgName);
				
				p.add(pp);
			}
			
			
		 }catch (Exception e) {
			 
			 e.printStackTrace();
		 }
		
		return p;
		
		
	}
	
	
	//view
	
	public static List<Packageee> getSpecificPackage(int pid)
	{
		ArrayList<Packageee> p = new ArrayList<>();
		
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificPackage(pid));
		
			while(RS.next())
			{
				int pidd = RS.getInt(1);
				String aname = RS.getString(2);
				String location=RS.getString(3);
				double amount=RS.getFloat(4);
				String name = RS.getString(5);
				
				Packageee pp = new Packageee(pid,aname,location,amount,name);
				
				p.add(pp);
			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return p;
	}
	
	public static void insertTourguideReservation(String aname,String location,double amount,String tgname,Date fromm,Date too,double amountforday)
	{
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.insertTourGuideRservation(aname, location, amount, tgname, fromm, too, amountforday));
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static List<TourGuideReservation> getSpecificReservation(String tgname)
	{
		ArrayList<TourGuideReservation> tgreservation = new ArrayList<>();
		
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificReservation(tgname));
			
			while(RS.next())
			{
				int id = RS.getInt(1);
				String aname = RS.getString(2);
				String loca = RS.getString(3);
				double amt = RS.getDouble(4);
				String ttgname = RS.getString(5);
				Date fromm = RS.getDate(6);
				Date too = RS.getDate(7);
				double amountforday = RS.getDouble(8);
				
				TourGuideReservation tg = new TourGuideReservation(id, aname, loca, amt, ttgname, fromm, too, amountforday);
				
				tgreservation.add(tg);
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return tgreservation;
	}
	
	
	public static void DeletePackageReservation(int tgrid)
	{
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.deletePackageReservation(tgrid));
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	
	
	
	public static void DeletePackage(int pid)
	{
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.deletePackage(pid));
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	
	public static List<Packageee> getSpecificPackageToUpdate(int pid)
	{
		ArrayList<Packageee> p = new ArrayList<>();
		
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificPackageToUpdate(pid));
		
			while(RS.next())
			{
				int pidd = RS.getInt(1);
				String aname = RS.getString(2);
				String location=RS.getString(3);
				double amount=RS.getFloat(4);
				String name = RS.getString(5);
				
				Packageee pp = new Packageee(pidd,aname,location,amount,name);
				
				p.add(pp);
			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return p;
	}
	
	
	
public static void UpdatePackage(int pid,String act_name,String location,double amount,String TRName) {
		
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.UpdatePackage(pid, act_name, location, amount, TRName));
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	

	
	public static List<TourGuideReservation> getSpecificReservationToUpdate(int id)
	{
		ArrayList<TourGuideReservation> tgreservation = new ArrayList<>();
		
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificReservationToUpdate(id));
			
			while(RS.next())
			{
				int idd = RS.getInt(1);
				String aname = RS.getString(2);
				String loca = RS.getString(3);
				double amt = RS.getDouble(4);
				String ttgname = RS.getString(5);
				Date fromm = RS.getDate(6);
				Date too = RS.getDate(7);
				double amountforday = RS.getDouble(8);
				
				TourGuideReservation tg = new TourGuideReservation(idd, aname, loca, amt, ttgname, fromm, too, amountforday);
				
				tgreservation.add(tg);
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return tgreservation;
	}


	public static void UpdatePackageReservation(int id, Date fro, Date to, double total) {
		
		try {
			Connection conn = databaseConnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.UpdatePackageReservation(id,fro,to,total));
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	
	
	
	
	
	
}
