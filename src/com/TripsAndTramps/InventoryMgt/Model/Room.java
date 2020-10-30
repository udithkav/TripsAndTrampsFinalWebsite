package com.TripsAndTramps.InventoryMgt.Model;

public class Room {
	
	private String room_id;
	private String p_emp_id;
	private String room_type_id;
	
	
	
	
	
	public Room(String room_id, String p_emp_id, String room_type_id) {
		super();
		this.room_id = room_id;
		this.p_emp_id = p_emp_id;
		this.room_type_id = room_type_id;
		
	}
	public String getRoom_id() {
		return room_id;
	}
	public void setRoom_id(String room_id) {
		this.room_id = room_id;
	}
	public String getP_emp_id() {
		return p_emp_id;
	}
	public void setP_emp_id(String p_emp_id) {
		this.p_emp_id = p_emp_id;
	}
	public String getRoom_type_id() {
		return room_type_id;
	}
	public void setRoom_type_id(String room_type_id) {
		this.room_type_id = room_type_id;
	}
	
	
	
	
}
