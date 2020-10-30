package com.TripsAndTramps.VehicleReservation.Service;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Date;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.TripsAndTramps.VehicleReservation.Model.Vehicle;
import com.TripsAndTramps.VehicleReservation.Model.Vehicle_Owner;
import com.TripsAndTramps.VehicleReservation.Model.Vehicle_Reservation;
import com.TripsAndTramps.VehicleReservation.Util.dbconnection;
import com.TripsAndTramps.VehicleReservation.Util.Query;

public class Service{
	
	public static List<Vehicle> getVehicles(String Vtype,String Vbrand)
	{
		ArrayList<Vehicle> vehicle = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getVehicleDetails(Vtype, Vbrand));
			
			while(RS.next()){
				
				String vehicleNumber = RS.getString(1);
				String model = RS.getString(2);
				String vehicleType = RS.getString(3);
				String vehicleBrand = RS.getString(4);
				Double amount = RS.getDouble(5); 
				int numofSeats = RS.getInt(7);
				String ac = RS.getString(8);
				
				Vehicle v = new Vehicle(vehicleNumber,model,vehicleType,vehicleBrand,amount,numofSeats,ac);
				
				 vehicle.add(v);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return vehicle;
	}
	
	public static List<Vehicle> getSpecificVehicle(String Vnum)
	{
		ArrayList<Vehicle> vehicle = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificVehicleDetails(Vnum));
			
			while(RS.next()){
				
				String vehicleNumber = RS.getString(1);
				String model = RS.getString(2);
				String vehicleType = RS.getString(3);
				String vehicleBrand = RS.getString(4);
				Double amount = RS.getDouble(5); 
				int numofSeats = RS.getInt(7);
				String ac = RS.getString(8);
				
				Vehicle v = new Vehicle(vehicleNumber,model,vehicleType,vehicleBrand,amount,numofSeats,ac);
				
				 vehicle.add(v);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return vehicle;
	}
	
	public static void insertReservation(String Vnum,String dec,Date from,Date to,double amount,String name,int phonrnumber,String tourist,double afd)
	{
		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.insertReservation(Vnum,dec,from,to,amount,name,phonrnumber,tourist,afd));
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
			
	}
	
	public static List<Vehicle_Reservation> getVehicleReservations(String tourist)
	{
		ArrayList<Vehicle_Reservation> reservation = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getReservation(tourist));
			
			while(RS.next()){
				
				int rid = RS.getInt(1);
				String vehicleNumber = RS.getString(2);
				String decision = RS.getString(3);
				Date from = RS.getDate(4);
				Date to = RS.getDate(5);
				double total = RS.getDouble(6);
				String name = RS.getString(7);
				int PN = RS.getInt(8);
				double amountforday = RS.getDouble(10);
				
				Vehicle_Reservation VR = new Vehicle_Reservation(rid, vehicleNumber, decision, from, to, total,name,PN,amountforday);
				
				 reservation.add(VR);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return reservation;
	}
	
	public static void DeleteVehicleReservation(int rid)
	{
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.DeleteReservation(rid));
		}catch(Exception e)
		{
		e.printStackTrace();
		}
	
	}
	
	public static List<Vehicle_Owner> getVehicleOwnerDetails(String Vnum)
	{
		ArrayList<Vehicle_Owner> owner = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getVehicleOwnerDetails(Vnum));
			
			while(RS.next()){
				
				String name = RS.getString(2);
				int age = RS.getInt(3);
				String languages = RS.getString(4);
				String vehicleNumber = RS.getString(5);
				int phoneNumber = RS.getInt(6);
				
				Vehicle_Owner VO = new Vehicle_Owner(name, age, languages, vehicleNumber, phoneNumber);
				
				 owner.add(VO);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return owner;
	}

	public static void insertReservationWithoutDriver(String vnumber, String decision, Date from, Date to, Double total,
			Double amount,String tourist) {
		
		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.insertReservationWithoutDriver(vnumber,decision,from,to,total,amount,tourist));
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	public static int toVehicleReservationPage(String username) {
		
		int count=0;
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getTotalReservationOfUser(username));
			
			while(RS.next()){
				
				count++;
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return count;
		
	}

	public static Vehicle_Reservation getSpecificReservation(int reservationid) {

		Vehicle_Reservation reservation = new Vehicle_Reservation();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificReservation(reservationid));
			
			while(RS.next()){
				
				int rid = RS.getInt(1);
				String vehicleNumber = RS.getString(2);
				String decision = RS.getString(3);
				Date from = RS.getDate(4);
				Date to = RS.getDate(5);
				double total = RS.getDouble(6);
				String name = RS.getString(7);
				int PN = RS.getInt(8);
				double amountforday = RS.getDouble(10);
				
				Vehicle_Reservation VR = new Vehicle_Reservation(rid, vehicleNumber, decision, from, to, total,name,PN,amountforday);
				
				 reservation = VR;
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return reservation;
	}

	public static void UpdateVehicleReservation(int reservationId, Date from, Date to, Double total) {
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.UpdateVehicleReservation(reservationId,from,to,total));
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		

	}

	public static void ChangeVehicleAvailability(String id) {

		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.ChangeVehicleAvailability(id));
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	public static void AgainChangeVehicleAvailability(String vid) {

		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(Query.AgainChangeVehicleAvailability(vid));
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	public static List<Vehicle> getVehiclesFromPackage01() {

		ArrayList<Vehicle> vehicle = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getVehiclesFromPackage01());
			
			while(RS.next()){
				
				String vehicleNumber = RS.getString(1);
				String model = RS.getString(2);
				String vehicleType = RS.getString(3);
				String vehicleBrand = RS.getString(4);
				Double amount = RS.getDouble(5); 
				int numofSeats = RS.getInt(7);
				String ac = RS.getString(8);
				
				Vehicle v = new Vehicle(vehicleNumber,model,vehicleType,vehicleBrand,amount,numofSeats,ac);
				
				 vehicle.add(v);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return vehicle;
	}

	public static List<Vehicle> getVehiclesFromPackage02() {
		ArrayList<Vehicle> vehicle = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getVehiclesFromPackage02());
			
			while(RS.next()){
				
				String vehicleNumber = RS.getString(1);
				String model = RS.getString(2);
				String vehicleType = RS.getString(3);
				String vehicleBrand = RS.getString(4);
				Double amount = RS.getDouble(5); 
				int numofSeats = RS.getInt(7);
				String ac = RS.getString(8);
				
				Vehicle v = new Vehicle(vehicleNumber,model,vehicleType,vehicleBrand,amount,numofSeats,ac);
				
				 vehicle.add(v);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return vehicle;
	}

	public static List<Vehicle> getVehiclesFromPackage03() {
		ArrayList<Vehicle> vehicle = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getVehiclesFromPackage03());
			
			while(RS.next()){
				
				String vehicleNumber = RS.getString(1);
				String model = RS.getString(2);
				String vehicleType = RS.getString(3);
				String vehicleBrand = RS.getString(4);
				Double amount = RS.getDouble(5); 
				int numofSeats = RS.getInt(7);
				String ac = RS.getString(8);
				
				Vehicle v = new Vehicle(vehicleNumber,model,vehicleType,vehicleBrand,amount,numofSeats,ac);
				
				 vehicle.add(v);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return vehicle;
	}

	public static List<Vehicle> getSpecificVehicleFromPackage(String vnumber) {
		
		ArrayList<Vehicle> vehicle = new ArrayList<>();
		
		try {
			
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			ResultSet RS = statement.executeQuery(Query.getSpecificVehicleDetailsFromPackage(vnumber));
			
			while(RS.next()){
				
				String vehicleNumber = RS.getString(1);
				String model = RS.getString(2);
				String vehicleType = RS.getString(3);
				String vehicleBrand = RS.getString(4);
				Double amount = RS.getDouble(5); 
				int numofSeats = RS.getInt(7);
				String ac = RS.getString(8);
				
				Vehicle v = new Vehicle(vehicleNumber,model,vehicleType,vehicleBrand,amount,numofSeats,ac);
				
				 vehicle.add(v);
			}
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return vehicle;
	}
	
}
