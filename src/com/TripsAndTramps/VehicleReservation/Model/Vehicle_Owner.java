package com.TripsAndTramps.VehicleReservation.Model;

public class Vehicle_Owner {
	
	private String name;
	private int age;
	private String languages;
	private String vehicleNumber;
	private int phoneNumber;
	
	public Vehicle_Owner() {
		super();
	}

	public Vehicle_Owner(String name, int age, String languages, String vehicleNumber, int phoneNumber) {
		super();
		this.name = name;
		this.age = age;
		this.languages = languages;
		this.vehicleNumber = vehicleNumber;
		this.phoneNumber = phoneNumber;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getLanguages() {
		return languages;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public int getPhoneNumber() {
		return phoneNumber;
	}
	
	

}
