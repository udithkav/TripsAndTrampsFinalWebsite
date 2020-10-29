package com.TripsAndTramps.RoomReservation.Model;

import java.sql.Date;

public class RoomReservationReport {
	protected int roomReservationID;
	protected Date checkInDate;
	protected Date checkOutDate;
	protected int people;
	protected int roomID;
	protected int touristID;
	protected double amount;
	protected String Remarks;
	protected String confirm;
	protected String roomTypeValue;
	protected String aboutRoom;
	protected String roomManagerFirstName;
	protected String roomManagerLastName;
	protected String roomManagerEmail;
	
	public int getRoomReservationID() {
		return roomReservationID;
	}
	public void setRoomReservationID(int roomReservationID) {
		this.roomReservationID = roomReservationID;
	}
	public Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}
	public Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getRoomID() {
		return roomID;
	}
	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}
	public int getTouristID() {
		return touristID;
	}
	public void setTouristID(int touristID) {
		this.touristID = touristID;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getRemarks() {
		return Remarks;
	}
	public void setRemarks(String remarks) {
		Remarks = remarks;
	}
	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
	public String getRoomTypeValue() {
		return roomTypeValue;
	}
	public void setRoomTypeValue(String roomTypeValue) {
		this.roomTypeValue = roomTypeValue;
	}
	public String getAboutRoom() {
		return aboutRoom;
	}
	public void setAboutRoom(String aboutRoom) {
		this.aboutRoom = aboutRoom;
	}
	public String getRoomManagerFirstName() {
		return roomManagerFirstName;
	}
	public void setRoomManagerFirstName(String roomManagerFirstName) {
		this.roomManagerFirstName = roomManagerFirstName;
	}

	public String getRoomManagerLastName() {
		return roomManagerLastName;
	}
	public void setRoomManagerLastName(String roomManagerLastName) {
		this.roomManagerLastName = roomManagerLastName;
	}
	public String getRoomManagerEmail() {
		return roomManagerEmail;
	}
	public void setRoomManagerEmail(String roomManagerEmail) {
		this.roomManagerEmail = roomManagerEmail;
	}
	public RoomReservationReport() {
		
	}
	public RoomReservationReport(int roomReservationID, Date checkInDate, Date checkOutDate, int people, int roomID,
			int touristID, double amount, String remarks, String confirm, String roomTypeValue, String aboutRoom,
			String roomManagerFirstName, String roomManagerLastName, String roomManagerEmail) {
		super();
		this.roomReservationID = roomReservationID;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
		this.people = people;
		this.roomID = roomID;
		this.touristID = touristID;
		this.amount = amount;
		this.Remarks = remarks;
		this.confirm = confirm;
		this.roomTypeValue = roomTypeValue;
		this.aboutRoom = aboutRoom;
		this.roomManagerFirstName = roomManagerFirstName;
		this.roomManagerLastName = roomManagerLastName;
		this.roomManagerEmail = roomManagerEmail;
	}
	
}
