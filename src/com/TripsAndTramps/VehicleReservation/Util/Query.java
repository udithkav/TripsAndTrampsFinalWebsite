package com.TripsAndTramps.VehicleReservation.Util;

import java.sql.Date;

public class Query {
	
	public static String getVehicleDetails(String VType,String VBrand)
	{
		String ava = "Available";
		String sql = "select * from vehicle where vehicle_type= '"+VType+"' and vehicle_brand = '"+VBrand+"' and Availability = '"+ava+"'";
		
		return sql;
		
	}
	
	public static String getSpecificVehicleDetails(String Vnum)
	{
		String sql = "select * from vehicle where vehicle_number= '"+Vnum+"'";
		
		return sql;
		
	}
	
	public static String insertReservation(String Vnum,String decision,Date from,Date to,double amount,String name,int phonenumber,String tourist,double afd)
	{
		String sql = "insert into vehicle_reservation(reservation_id,vehicle_number,decision,fromm,tooo,amounttt,driver_name,phoneNumber,tourist,amountForDay) values(0,'"+Vnum+"','"+decision+"','"+from+"','"+to+"','"+amount+"','"+name+"','"+phonenumber+"','"+tourist+"','"+afd+"');";
		
		return sql;
	}
	
	public static String getReservation(String tourist)
	{
		String sql = "select * from vehicle_reservation where tourist = '"+tourist+"'";
		
		return sql;
	}
	
	public static String DeleteReservation(int rid)
	{
		String sql = "DELETE FROM vehicle_reservation WHERE reservation_id ='"+rid+"';";
		
		return sql;
	}
	
	public static String getVehicleOwnerDetails(String vnum)
	{
		String sql = "select * from vehicle_owner where vehicle_number = '"+vnum+"'";
		
		return sql;
	}

	public static String insertReservationWithoutDriver(String vnumber, String decision, Date from, Date to,
			Double amount, Double amount2, String tourist) 
	{
		String none = "------------";
		
		String sql = "insert into vehicle_reservation(reservation_id,vehicle_number,decision,fromm,tooo,amounttt,driver_name,tourist,amountForDay) values(0,'"+vnumber+"','"+decision+"','"+from+"','"+to+"','"+amount+"','"+none+"','"+tourist+"','"+amount2+"');";

		return sql;
	}

	public static String getTotalReservationOfUser(String username) {
		
		String sql = "select * from vehicle_reservation where tourist='"+username+"'";
		
		return sql;
	}

	public static String getSpecificReservation(int reservationid) {

		String sql = "select * from vehicle_reservation where reservation_id = '"+reservationid+"'";
		
		return sql;
		
	}

	public static String UpdateVehicleReservation(int reservationId, Date from, Date to, Double total) {
		
		String sql = "UPDATE vehicle_reservation SET fromm = '"+from+"',tooo = '"+to+"',amounttt = '"+total+"' WHERE reservation_id = '"+reservationId+"';";
		
		return sql;
	}

	public static String ChangeVehicleAvailability(String id) {
		
		String ava = "Un-Available";
		
		String sql = "UPDATE vehicle SET Availability = '"+ava+"' WHERE vehicle_number = '"+id+"';"; 
		
		return sql;
	}

	public static String AgainChangeVehicleAvailability(String vid) {

		String ava = "Available";
		
		String sql = "UPDATE vehicle SET Availability = '"+ava+"' WHERE vehicle_number = '"+vid+"';"; 
		
		return sql;
	}

	public static String getVehiclesFromPackage01() {
		String ava="Available";
		
		String sql = "select * from package01 where Availability = '"+ava+"';";
		
		return sql;
		
	}

	public static String getVehiclesFromPackage02() {
		String ava="Available";
		
		String sql = "select * from package02 where Availability = '"+ava+"';";
		
		return sql;
	}

	public static String getVehiclesFromPackage03() {
		String ava="Available";
		
		String sql = "select * from package03 where Availability = '"+ava+"';";
		
		return sql;
	}

	public static String getSpecificVehicleDetailsFromPackage(String vnumber) {
		
		String sql = "select * from package01 where vehicle_number= '"+vnumber+"'";
		
		return sql;
	}

}
