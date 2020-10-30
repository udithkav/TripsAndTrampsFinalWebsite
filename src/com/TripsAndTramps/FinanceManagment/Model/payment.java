package com.TripsAndTramps.FinanceManagment.Model;

public class payment {

	private int payment_id;
	private String username;
	private double Package_Reservation;
	private double Room_Reservation;
	private double Vehicle_Reservation;
	private String DateFor_PR;
	private String DateFor_VR;
	private String DateFor_RR;
	
	
	public payment(int payment_id, String username, double package_Reservation, double room_Reservation,
			double vehicle_Reservation, String dateFor_PR, String dateFor_VR, String dateFor_RR) {
		super();
		this.payment_id = payment_id;
		this.username = username;
		Package_Reservation = package_Reservation;
		Room_Reservation = room_Reservation;
		Vehicle_Reservation = vehicle_Reservation;
		DateFor_PR = dateFor_PR;
		DateFor_VR = dateFor_VR;
		DateFor_RR = dateFor_RR;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public double getPackage_Reservation() {
		return Package_Reservation;
	}
	public void setPackage_Reservation(double package_Reservation) {
		Package_Reservation = package_Reservation;
	}
	public double getRoom_Reservation() {
		return Room_Reservation;
	}
	public void setRoom_Reservation(double room_Reservation) {
		Room_Reservation = room_Reservation;
	}
	public double getVehicle_Reservation() {
		return Vehicle_Reservation;
	}
	public void setVehicle_Reservation(double vehicle_Reservation) {
		Vehicle_Reservation = vehicle_Reservation;
	}
	public String getDateFor_PR() {
		return DateFor_PR;
	}
	public void setDateFor_PR(String dateFor_PR) {
		DateFor_PR = dateFor_PR;
	}
	public String getDateFor_VR() {
		return DateFor_VR;
	}
	public void setDateFor_VR(String dateFor_VR) {
		DateFor_VR = dateFor_VR;
	}
	public String getDateFor_RR() {
		return DateFor_RR;
	}
	public void setDateFor_RR(String dateFor_RR) {
		DateFor_RR = dateFor_RR;
	}
	
	
}
