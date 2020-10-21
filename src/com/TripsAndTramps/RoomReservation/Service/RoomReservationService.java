package com.TripsAndTramps.RoomReservation.Service;

import java.sql.*;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.Common.*;

public class RoomReservationService implements RoomReservationInterface {

	@Override
	public void createRoomReservation(RoomReservation R) {
		
		String SQLRoomReservation = "INSERT INTO room_reservation VALUES (?,?,?,?,?,?,?,?)";
		try(Connection con = databaseConnection.getConnection();) {
			PreparedStatement ps = con.prepareStatement(SQLRoomReservation);
			ps.setInt(1, 0);
			ps.setInt(2, R.getPeople());
			ps.setDate(3,R.getCheckInDate());
			ps.setDate(4,R.getCheckOutDate());
			ps.setFloat(5,R.getAmount());
			ps.setString(6,R.getPassportID());
			ps.setInt(7, R.getRoomID());
			ps.setString(8, R.getRemarks());
			ps.executeUpdate();
			
			ps.close(); 
	        con.close(); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	@Override
	public void checkDetails() {
		
		
	}

	@Override
	public void deleteRoomReservation(int roomReservationID) {
		String DelSQLRoomReservation = "DELETE FROM room_reservation WHERE RReservation_ID="+roomReservationID;
		try(Connection con = databaseConnection.getConnection();) {
			PreparedStatement ps = con.prepareStatement(DelSQLRoomReservation);
			ps.executeUpdate(DelSQLRoomReservation);
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
	}




}
