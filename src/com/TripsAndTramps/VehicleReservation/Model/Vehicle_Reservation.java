package com.TripsAndTramps.VehicleReservation.Model;

import java.sql.Date;

public class Vehicle_Reservation {

	private int rID;
	private String vehicle_num;
	private String vehicle_type;
	private String vehicle_brand;
	private String model;
	private Date from;
	private Date to;
	private double finalamount;
	private double amountforday;
	private String name;
	private int pn;
	private String decision;
	
	public Vehicle_Reservation(int rID, String vehicle_num, String vehicle_type, String vehicle_brand, Date from,
			Date to, double amount, double afd) {
		super();
		this.rID = rID;
		this.vehicle_num = vehicle_num;
		this.vehicle_type = vehicle_type;
		this.vehicle_brand = vehicle_brand;
		this.from = from;
		this.to = to;
		this.finalamount = amount;
		this.amountforday = afd;
	}

	public Vehicle_Reservation(int rid2, String vehicleNumber, String decision, Date from2, Date to2, double total,
			String name2, int pN2, double amountforday2) {
		this.rID = rid2;
		this.vehicle_num = vehicleNumber;
		this.decision = decision;
		this.from = from2;
		this.to = to2;
		this.finalamount = total;
		this.amountforday = amountforday2;
		this.name = name2;
		this.pn = pN2;
	}

	public Vehicle_Reservation() {
		// TODO Auto-generated constructor stub
	}

	public String getDecision() {
		return decision;
	}

	public String getName() {
		return name;
	}

	public int getPn() {
		return pn;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}

	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}

	public String getVehicle_brand() {
		return vehicle_brand;
	}

	public void setVehicle_brand(String vehicle_brand) {
		this.vehicle_brand = vehicle_brand;
	}

	public int getrID() {
		return rID;
	}
	
	public String getVehicle_num() {
		return vehicle_num;
	}
	
	public Date getFrom() {
		return from;
	}
	
	public Date getTo() {
		return to;
	}
	
	public double getAmount() {
		return finalamount;
	}

	public double getAmountforday() {
		return amountforday;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}
	
	
}
