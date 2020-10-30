package com.TripsAndTramps.InventoryMgt.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.TripsAndTramps.InventoryMgt.Model.Inventory;
import com.TripsAndTramps.InventoryMgt.Model.Room;
import com.TripsAndTramps.InventoryMgt.Model.VehicleOwnerAndVehicle;
import com.TripsAndTramps.InventoryMgt.Util.dbconnection;
import com.TripsAndTramps.InventoryMgt.Util.query;

public class Service {
	
	public static void insertInventory(String id,String type,String brand) 
	{
		try {
		Connection conn = dbconnection.getConnection();
		Statement statement = conn.createStatement();
		
		statement.executeUpdate(query.insertaddinventory(id,type,brand));
		
		}catch(Exception e) 
		{
			e.printStackTrace();
		}
		
		
	}
	

	public static List<Inventory> getAInventory()
	{
		ArrayList<Inventory>Ainventory = new ArrayList<>();
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getInventoryDetails());
			while(RS.next())
			{
				String id =RS.getString(1);
				String type= RS.getString(2);
				String brand= RS.getString(3);
				
				Inventory ai = new Inventory(id,type,brand);
				Ainventory.add(ai);
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return Ainventory;
	}
	
	

	public static void deleteInvetory(String id)
	{
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(query.deleteInventory(id));
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	}


	public static void insertVehicle(String vno, String vtype, String vbrand, Integer seat, String model, String oname,
			String language, Integer age, Integer pnumber, String ac,Double amount) {
		
		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(query.insertaddvehicle(vno, vtype, vbrand, seat, model, ac, amount));
			statement.executeUpdate(query.insertvehicleOwner(oname,language,age,vno,pnumber));
			
			}catch(Exception e) 
			{
				e.printStackTrace();
			}
		
	}


	public static List<VehicleOwnerAndVehicle> getAVehicle()
	{
		ArrayList<VehicleOwnerAndVehicle>Avehicle = new ArrayList<>();
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getVehicleDetails());
			while(RS.next())
			{
				String vno = RS.getString(1);
				String model = RS.getString(2);
				String vtype = RS.getString(3);
				String vbrand = RS.getString(4);
				double amount = RS.getDouble(5);
				String Availability = RS.getString(6);
				Integer seat = RS.getInt(7);
				String ac = RS.getString(8);
				int oid = RS.getInt(9);
				String name = RS.getString(10);
				int age = RS.getInt(11);
				String language = RS.getString(12);
				int phonenum = RS.getInt(13);
				
				VehicleOwnerAndVehicle av = new VehicleOwnerAndVehicle(vno, model, vtype, vbrand, amount, Availability, seat, ac, oid, name, age, language, phonenum);
				Avehicle.add(av);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// TODO Auto-generated method stub
		return Avehicle;
	}

	public static int countforcars() {
		
		int count = 0;
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getCountOfCars());

			while(RS.next())
			{
				int c = RS.getInt(1);
				
				count = c;
			}			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return count;
	}


	public static int countforvans() {
		int count = 0;
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getCountOfVans());

			while(RS.next())
			{
				int c = RS.getInt(1);
				
				count = c;
			}			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return count;
	}


	public static int countforAC() {
		
		int count = 0;
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getCountOfAC());

			while(RS.next())
			{
				int c = RS.getInt(1);
				
				count = c;
				System.out.println("count = " + count);
				System.out.println("c = " + c);
			}			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return count;
	}


	public static int countforTV() {

		int count = 0;
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getCountOfTV());

			while(RS.next())
			{
				int c = RS.getInt(1);
				
				count = c;
			}			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return count;
		
	}


	public static int countforBed() {
		
		int count = 0;
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getCountOfBeds());

			while(RS.next())
			{
				int c = RS.getInt(1);
				
				count = c;
			}			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return count;
	}


	public static Inventory getSpecificInventory(String id) {
		
		Inventory Ainventory = new Inventory();
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getSpecificInventory(id));
			while(RS.next())
			{
				String idd =RS.getString(1);
				String type= RS.getString(2);
				String brand= RS.getString(3);
				
				Inventory ai = new Inventory(idd,type,brand);
				Ainventory = ai;
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return Ainventory;
		
	}


	public static void UpdateInventory(String id, String type, String brand) {

		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			statement.executeUpdate(query.UpdateInventoryDetails(id,type,brand));
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
	}


	public static VehicleOwnerAndVehicle getSpecificVehicle(String vno) {

		VehicleOwnerAndVehicle Avehicle = new VehicleOwnerAndVehicle();
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getSpecificVehicleDetails(vno));
			while(RS.next())
			{
				String vnoo = RS.getString(1);
				String model = RS.getString(2);
				String vtype = RS.getString(3);
				String vbrand = RS.getString(4);
				double amount = RS.getDouble(5);
				String Availability = RS.getString(6);
				Integer seat = RS.getInt(7);
				String ac = RS.getString(8);
				int oid = RS.getInt(9);
				String name = RS.getString(10);
				int age = RS.getInt(11);
				String language = RS.getString(12);
				int phonenum = RS.getInt(13);
				
				VehicleOwnerAndVehicle av = new VehicleOwnerAndVehicle(vnoo, model, vtype, vbrand, amount, Availability, seat, ac, oid, name, age, language, phonenum);
				Avehicle = av;
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return Avehicle;
		
	}


	public static void UpdateVehicle(String vno, String vtype, String vbrand, Integer seat, String model, String oname,
			String language, Integer age, Integer pnumber, String ac) {

		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(query.Updatevehicle(vno, vtype, vbrand, seat, model, ac));
			statement.executeUpdate(query.UpdatevehicleOwner(oname,language,age,vno,pnumber));
			
			}catch(Exception e) 
			{
				e.printStackTrace();
			}
		
	}


	public static void DeleteVehicleAndOwner(String vno, String oid) {
		
		try {
			Connection conn = dbconnection.getConnection();
			Statement statement = conn.createStatement();
			
			statement.executeUpdate(query.DeletevehicleOwner(oid));
			statement.executeUpdate(query.Deletevehicle(vno));
			
			}catch(Exception e) 
			{
				e.printStackTrace();
			}
		
	}


	public static void insertRoom(String room_id, String peid, String rtype_id) {
		try {
		Connection conn = dbconnection.getConnection();
		Statement statement = conn.createStatement();
		
		statement.executeUpdate(query.insertaroom(room_id,peid,rtype_id));
		
		}catch(Exception e) 
		{
			e.printStackTrace();
		}
		
	}


	public static List<Room> getARoom() {
		ArrayList<Room>Aroom = new ArrayList<>();
		
		try {
			Connection con = dbconnection.getConnection();
			Statement statement = con.createStatement();
			
			ResultSet RS = statement.executeQuery(query.getRoomDetails());
			while(RS.next())
			{
				String room_id =RS.getString(1);
				String peid= RS.getString(2);
				String rtype_id= RS.getString(3);
				
				Room ar = new Room(room_id,peid,rtype_id);
				Aroom.add(ar);
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return Aroom;
		
	}




}
