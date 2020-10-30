package com.TripsAndTramps.InventoryMgt.Util;

public class query {

	public static String insertaddinventory(String inventory_id,String inventory_type,String brand) {
		
		String sql ="Insert into inventory(inventory_id,inventory_type,brand)values ('"+inventory_id+"','"+inventory_type+"','"+brand+"');";
		
		return sql;
	
	
	}
	
	public static String getInventoryDetails() {
		
		String sql = "select * from inventory";
		
		return sql;
	}
	
	public static String deleteInventory(String id)
	{
		String sql = "DELETE FROM inventory WHERE inventory_id ='"+id+"'; ";
		
		return sql;
	}
	
	
	public static String insertaddvehicle(String vehicle_no, String vehicle_type, String v_brand, Integer seats, String model, String ac, double amount) {
		
		String ava = "Available";
		
		String sql ="Insert into vehicle(vehicle_number,model,vehicle_type,vehicle_brand,amount,Availability,numOfSeats,ac)values ('"+vehicle_no+"','"+model+"','"+vehicle_type+"','"+v_brand+"','"+amount+"','"+ava+"','"+seats+"','"+ac+"');";
		
		return sql;
	}

	public static String getVehicleDetails() {
		
		String sql = "select v.vehicle_number,v.model,v.vehicle_type,v.vehicle_brand,v.amount,v.Availability,v.numOfSeats,v.ac,vo.vehicle_owner_id,vo.name,vo.age,vo.Languages,vo.phoneNumber from vehicle v,vehicle_owner vo where vo.vehicle_number = v.vehicle_number;";
		
		return sql;
		
	}

	public static String insertvehicleOwner(String oname, String language, Integer age, String vno, Integer pnumber) {
		
		String sql = "insert into vehicle_owner(vehicle_owner_id,name,age,Languages,vehicle_number,phoneNumber) values (0,'"+oname+"','"+age+"','"+language+"','"+vno+"','"+pnumber+"');";
		
		return sql;
		
	}

	public static String getCountOfCars() {
		
		String type = "Car";

		String sql = "SELECT COUNT(vehicle_number) AS NumberOfcars FROM vehicle where vehicle_type = '"+type+"';";
		
		return sql;
		
	}

	public static String getCountOfVans() {

		String type = "Van";

		String sql = "SELECT COUNT(vehicle_number) AS NumberOfVans FROM vehicle where vehicle_type = '"+type+"';";
		
		return sql;
	}

	public static String getCountOfAC() {

		String type = "A/C";

		String sql = "SELECT COUNT(inventory_id) AS NumberOfac FROM inventory where inventory_type = '"+type+"';";
		
		return sql;
	}

	public static String getCountOfTV() {
		String type = "Television";

		String sql = "SELECT COUNT(inventory_id) AS NumberOfac FROM inventory where inventory_type = '"+type+"';";
		
		return sql;
	}

	public static String getCountOfBeds() {

		String type = "bed";

		String sql = "SELECT COUNT(inventory_id) AS NumberOfac FROM inventory where inventory_type = '"+type+"';";
		
		return sql;
	}

	public static String getSpecificInventory(String id) {

		String sql = "select * from inventory where inventory_id = '"+id+"'";
		
		return sql;
		
	}

	public static String UpdateInventoryDetails(String id, String type, String brand) {
		
		String sql = "UPDATE inventory SET inventory_type = '"+type+"', brand = '"+brand+"' WHERE inventory_id = '"+id+"';";
		
		return sql;
		
	}

	public static String getSpecificVehicleDetails(String vno) {
		
		String sql = "select v.vehicle_number,v.model,v.vehicle_type,v.vehicle_brand,v.amount,v.Availability,v.numOfSeats,v.ac,vo.vehicle_owner_id,vo.name,vo.age,vo.Languages,vo.phoneNumber from vehicle v,vehicle_owner vo where vo.vehicle_number = v.vehicle_number and v.vehicle_number = '"+vno+"';";
		
		return sql;
		
	}

	public static String Updatevehicle(String vno, String vtype, String vbrand, Integer seat, String model, String ac) {
		
		String sql = "UPDATE vehicle SET model = '"+model+"', vehicle_type = '"+vtype+"', vehicle_brand = '"+vbrand+"', numOfSeats = '"+seat+"', ac = '"+ac+"' WHERE vehicle_number = '"+vno+"';";
		
		return sql;
		
	}

	public static String UpdatevehicleOwner(String oname, String language, Integer age, String vno, Integer pnumber) {
		
		String sql = "UPDATE vehicle_owner SET name = '"+oname+"', age = '"+age+"' , Languages = '"+language+"', phoneNumber = '"+pnumber+"'  WHERE vehicle_number = '"+vno+"';";
		
		return sql;

	}

	public static String DeletevehicleOwner(String oid) {
	
		String sql = "delete from vehicle_owner where vehicle_owner_id = '"+oid+"';";
		
		return sql;
		
	}

	public static String Deletevehicle(String vno) {

		String sql = "delete from vehicle where vehicle_number = '"+vno+"';";
		
		return sql;
		
	}

	public static String insertaroom(String room_id, String peid, String rtype_id) {
		
		String sql ="Insert into aroom(room_id,p_emp_id,room_type_id)values ('"+room_id+"','"+peid+"','"+rtype_id+"');";
		
		return sql;
		
		
	}

	public static String getRoomDetails() {
		
		String sql = "select * from aroom";
		
		return sql;
		
	}
		


}
