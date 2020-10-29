package com.TripsAndTramps.RoomReservation.Model;
import java.sql.*;

import com.TripsAndTramps.Common.DatabaseVariables;
import com.TripsAndTramps.Common.databaseConnection;
public class Room {
	
	protected int roomNumber = -1;
	protected int roomType;
	protected Double amount;
	protected String roomTypeName;
	protected String roomTypeNameDirect;
	protected Double amountDirect;
	

	public Double getAmountDirect() {
		return amountDirect;
	}
	public void setAmountDirect(Double amountDirect) {
		this.amountDirect = amountDirect;
	}
	public String getRoomTypeNameDirect() {
		return roomTypeNameDirect;
	}
	public void setRoomTypeNameDirect(String roomTypeNameDirect) {
		this.roomTypeNameDirect = roomTypeNameDirect;
	}
	public String getRoomTypeName() {
		return roomTypeName;
	}
	public void setRoomTypeName(int roomType) {
		String sql = "SELECT "+DatabaseVariables.roomTypeTable_Name +" from room_type WHERE "+DatabaseVariables.roomTypeTable_id+" ="+roomType;
		try(Connection c = databaseConnection.getConnection();) {
			PreparedStatement ps = c.prepareStatement(sql);
			ResultSet s = ps.executeQuery();
			while(s.next()) {
			this.roomTypeName = s.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(int roomType) {
		
		String sql = "SELECT " +DatabaseVariables.roomTypeTable_Amount+" FROM "+DatabaseVariables.roomTypeTable+" WHERE "+DatabaseVariables.roomTypeTable_id+" =?";
		try(Connection c = databaseConnection.getConnection();) {
			PreparedStatement ps = c.prepareStatement(sql);
			ps.setInt(1,roomType);
			ResultSet s = ps.executeQuery();
			while(s.next()) {
			this.amount = s.getDouble(1);
			}
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
