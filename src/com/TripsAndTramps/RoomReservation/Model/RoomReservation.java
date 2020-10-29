package com.TripsAndTramps.RoomReservation.Model;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.TripsAndTramps.Common.databaseConnection;
public class RoomReservation {
	protected Date checkInDate;
	protected Date checkOutDate;
	protected int people;
	protected int roomID;
	protected int roomTypeId;
	protected int touristID;
	protected double amount;
	protected String Remarks;
	protected int roomReservationID;
	protected String confirm;
	

	public String getConfirm() {
		return confirm;
	}
	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}
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
	public int getRoomTypeId() {
		return roomTypeId;
	}
	public void setRoomTypeId(int roomID) {
		String sql = "SELECT RoomType_ID FROM room_manage WHERE RoomID = ?";
		try(Connection con = databaseConnection.getConnection();){
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, roomID);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				this.roomTypeId = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public RoomReservation() {
		
	}
	
	public RoomReservation(String checkInDate, String checkOutDate, int people,int roomID,int touristID,Double amount,String Remarks){
		
		
		Date cI = Date.valueOf(checkInDate);
		Date cO = Date.valueOf(checkOutDate);
		
		
		setCheckInDate(cI);
		setCheckOutDate(cO);
		setPeople(people);
		setRoomID(roomID);
		setTouristID(touristID);
		setAmount(amount);
		setRemarks(Remarks);
		
	}
	
	public RoomReservation(int roomResID,String checkInDate, String checkOutDate, int people,int roomID,int touristID,Double amount,String Remarks,String conf){
		
		
		Date cI = Date.valueOf(checkInDate);
		Date cO = Date.valueOf(checkOutDate);
		setConfirm(conf);
		setRoomReservationID(roomResID);
		setCheckInDate(cI);
		setCheckOutDate(cO);
		setPeople(people);
		setRoomID(roomID);
		setTouristID(touristID);
		setAmount(amount);
		setRemarks(Remarks);
		
	}
	
	
	
}
