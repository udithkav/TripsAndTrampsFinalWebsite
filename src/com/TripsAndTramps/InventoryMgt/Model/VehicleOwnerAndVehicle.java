package com.TripsAndTramps.InventoryMgt.Model;

public class VehicleOwnerAndVehicle {

	private String vehicle_no;
	private String model;
	private String vehicle_type;
	private String v_brand;
	private double amount;
	private String Availability;
	private Integer seats;
	private String ac;
	private int vehicleOid;
	private String name;
	private int age;
	private String language;
	private int phonenum;
	
	public VehicleOwnerAndVehicle(String vehicle_no, String model, String vehicle_type, String v_brand, double amount,
			String availability, Integer seats, String ac, int vehicleOid, String name, int age, String language,
			int phonenum) {
		super();
		this.vehicle_no = vehicle_no;
		this.model = model;
		this.vehicle_type = vehicle_type;
		this.v_brand = v_brand;
		this.amount = amount;
		Availability = availability;
		this.seats = seats;
		this.ac = ac;
		this.vehicleOid = vehicleOid;
		this.name = name;
		this.age = age;
		this.language = language;
		this.phonenum = phonenum;
	}

	public VehicleOwnerAndVehicle() {
		// TODO Auto-generated constructor stub
	}

	public int getVehicleOid() {
		return vehicleOid;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getLanguage() {
		return language;
	}

	public int getPhonenum() {
		return phonenum;
	}

	public String getVehicle_no() {
		return vehicle_no;
	}

	public String getModel() {
		return model;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}

	public String getV_brand() {
		return v_brand;
	}

	public double getAmount() {
		return amount;
	}

	public String getAvailability() {
		return Availability;
	}

	public Integer getSeats() {
		return seats;
	}

	public String getAc() {
		return ac;
	}
	
}
