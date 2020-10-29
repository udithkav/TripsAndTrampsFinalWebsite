package com.TripsAndTramps.RoomReservation.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.TripsAndTramps.Common.DatabaseVariables;
import com.TripsAndTramps.Common.databaseConnection;
import com.TripsAndTramps.RoomReservation.Model.RoomReservation;

public class ViewRoomReservationService implements ViewRoomReservationInterface {

	@Override
	public List<RoomReservation> getRoomReservationList(int TouristID) {
		List<RoomReservation> roomTypeList = new ArrayList<RoomReservation>();
		String getRoomReservationsSql = "SELECT * FROM "+DatabaseVariables.roomReservationTable+" WHERE "+DatabaseVariables.roomReservationTable_Tourist_Id+"=?";
		try(Connection con = databaseConnection.getConnection();){
			PreparedStatement ps = con.prepareStatement(getRoomReservationsSql);
			ps.setInt(1, TouristID);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			
			if(rs!=null) {
				while(rs.next()) {
					 int roomResId = rs.getInt(1);
					 String checkInDate = String.valueOf(rs.getDate(2));
					 String checkOutDate= String.valueOf(rs.getDate(3));
					 int people = rs.getInt(4);
					 int roomID = rs.getInt(5);
					 int touristID = rs.getInt(6);
					 Double amount = rs.getDouble(7);
					 String Remarks = rs.getString(8);
					 String conf = rs.getString(9);
					
					 RoomReservation r1 = new RoomReservation(roomResId,checkInDate, checkOutDate, people,roomID,touristID,amount,Remarks,conf);
					 
					 roomTypeList.add(r1);
				}
			}
			return roomTypeList;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		
	}

}
