package com.TripsAndTramps.VehicleReservation.Model;

public class Vehicle {

	private String vehicleNumber;
	private String model;
	private String vehicleType;
	private String vehcleBrand;
	private Double amount;
	private int numOfSeats;
	private String ac;
	
	public Vehicle() {
		super();
	}

	public Vehicle(String vehicleNumber, String model, String vehicleType, String vehcleBrand, Double amount,
			int numOfSeats, String ac) {
		super();
		this.vehicleNumber = vehicleNumber;
		this.model = model;
		this.vehicleType = vehicleType;
		this.vehcleBrand = vehcleBrand;
		this.amount = amount;
		this.numOfSeats = numOfSeats;
		this.ac = ac;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public String getVehicleType() {
		return vehicleType;
	}

	public String getVehcleBrand() {
		return vehcleBrand;
	}

	public Double getAmount() {
		return amount;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public int getNumOfSeats() {
		return numOfSeats;
	}

	public String getAc() {
		return ac;
	}

	public String getModel() {
		return model;
	}
	
}
