package com.TripsAndTramps.RoomReservation.Model;
import java.sql.Date;
public class RoomReservation {
	protected int roomID;
	protected String passportID;
	protected float amount;
	protected Date checkInDate;
	protected Date checkOutDate;
	protected int people;
	public String Remarks;
	
	
	public String getRemarks() {
		return Remarks;
	}
	public void setRemarks(String getRemarks) {
		this.Remarks = getRemarks;
	}
	public int getRoomID() {
		return roomID;
	}
	public void setRoomID(int roomID) {
		this.roomID = roomID;
	}
	public String getPassportID() {
		return passportID;
	}
	public void setPassportID(String passportID) {
		this.passportID = passportID;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
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
	
public RoomReservation(int roomID,String passportID,float amount,Date checkInDate,Date checkOutDate,int people,String remarks){
		
		setRoomID(roomID);
		setPassportID(passportID);
		setAmount(amount);
		setCheckInDate(checkInDate);
		setCheckOutDate(checkOutDate);
		setPeople(people);
		setRemarks(remarks);
		
	}

	
	
	
}
