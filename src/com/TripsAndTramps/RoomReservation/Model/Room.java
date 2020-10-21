package com.TripsAndTramps.RoomReservation.Model;
import java.sql.*;

import com.TripsAndTramps.Common.databaseConnection;
public class Room {
	
	protected int roomNumber;
	protected int roomType;
	protected float amount;
	protected String roomTypeName;
	

	public String getRoomTypeName() {
		return roomTypeName;
	}
	public void setRoomTypeName(String roomTypeName) {
		this.roomTypeName = roomTypeName;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(int roomType) {
		
		String sql = "SELECT amount from room_type WHERE RoomType_ID ="+roomType;
		try(Connection c = databaseConnection.getConnection();) {
			PreparedStatement ps = c.prepareStatement(sql);
			ResultSet s = ps.executeQuery();
			this.amount = s.getFloat(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int getRoomType() {
		return roomType;
	}
	public void setRoomType(int roomType) {
		this.roomType = roomType;
	}
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	
	

}
