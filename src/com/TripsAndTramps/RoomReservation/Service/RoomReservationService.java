package com.TripsAndTramps.RoomReservation.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.Common.*;

public class RoomReservationService implements RoomReservationInterface {

	@Override
	public void createRoomReservation(RoomReservation R) {
		
		String SQLRoomReservation = "INSERT INTO "+ DatabaseVariables.roomReservationTable + "("+DatabaseVariables.roomReservationTable_check_in_date+","+DatabaseVariables.roomReservationTable_checl_out_date+","+DatabaseVariables.roomReservationTable_no_of_people+","+DatabaseVariables.roomReservationTable_Room_Id+","+DatabaseVariables.roomReservationTable_Tourist_Id+","+DatabaseVariables.roomReservationTable_Amount+","+DatabaseVariables.roomReservationTable_Remarks+")"+" VALUES (?,?,?,?,?,?,?)";
		try(Connection con = databaseConnection.getConnection();) {
			PreparedStatement ps = con.prepareStatement(SQLRoomReservation);
		
			if(R.getRoomID()!=-1) {
				ps.setDate(1, R.getCheckInDate());
				ps.setDate(2, R.getCheckOutDate());
				ps.setInt(3, R.getPeople());
				ps.setInt(4, R.getRoomID());
				ps.setInt(5,R.getTouristID());
				ps.setDouble(6, R.getAmount());
				ps.setString(7,R.getRemarks());
				
				ps.executeUpdate();
				
			}

			
			ps.close(); 
	        con.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	

	@Override
	public void deleteRoomReservation(int roomReservationID) {
		String DelSQLRoomReservation = "DELETE FROM room_reservation_table WHERE id="+roomReservationID;
		try(Connection con = databaseConnection.getConnection();) {
			PreparedStatement ps = con.prepareStatement(DelSQLRoomReservation);
			ps.executeUpdate(DelSQLRoomReservation);
		} catch (SQLException e) {
			// TODO: handle exception
		}
		
	}



	@Override
	public RoomReservation viewRoomReservation(int rrID) {
		String sql = "SELECT * FROM room_reservation_table WHERE id=?";
		try(Connection con = databaseConnection.getConnection();) {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, rrID);
			ResultSet rs = ps.executeQuery();
			RoomReservation rr = new RoomReservation();
			
			while(rs.next()) {
				rr.setRoomReservationID(rs.getInt(1));
				rr.setCheckInDate(rs.getDate(2));
				rr.setCheckOutDate(rs.getDate(3));
				rr.setPeople(rs.getInt(4));
				rr.setRoomID(rs.getInt(5));
				rr.setTouristID(rs.getInt(6));
				rr.setAmount(rs.getDouble(7));
				rr.setRemarks(rs.getString(8));
				rr.setConfirm(rs.getString(9));
				rr.setRoomTypeId(rr.getRoomID());
			}
			System.out.println(rr.getRoomID()+rr.getRoomReservationID());
			return rr;
		} catch (SQLException e) {
			return null;
		}
		
		
	}



	@Override
	public List<RoomReservation> searchRoomReservation(Date fromDate, Date toDate, int touristID) {
		String sql = "SELECT * FROM room_reservation_table WHERE id IN (SELECT id FROM room_reservation_table WHERE ((check_in_date BETWEEN ? AND ?) OR (check_out_date BETWEEN ? AND ?))AND Tourist_Id = ?)";
		
		try(Connection con = databaseConnection.getConnection();){
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setDate(1, fromDate);
			ps.setDate(2, toDate);
			ps.setDate(3, fromDate);
			ps.setDate(4, toDate);
			ps.setInt(5, touristID);
			
			ResultSet rs = ps.executeQuery();
			
			List<RoomReservation> rrListSearch = new ArrayList<RoomReservation>();
			
			while(rs.next()) {
				RoomReservation rr = new RoomReservation();
				rr.setRoomReservationID(rs.getInt(1));
				rr.setCheckInDate(rs.getDate(2));
				rr.setCheckOutDate(rs.getDate(3));
				rr.setPeople(rs.getInt(4));
				rr.setRoomID(rs.getInt(5));
				rr.setTouristID(rs.getInt(6));
				rr.setAmount(rs.getDouble(7));
				rr.setRemarks(rs.getString(8));
				rr.setConfirm(rs.getString(9));
				rr.setRoomTypeId(rr.getRoomID());
				rrListSearch.add(rr);
			}
			return rrListSearch;
			
		}
		 catch (SQLException e) {
				return null;
			}
	}

	


}
