package com.TripsAndTramps.RoomReservation.Service;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;



import com.TripsAndTramps.Common.databaseConnection;
import com.TripsAndTramps.RoomReservation.Model.Room;


public class SelectRoomService implements SelectRoomInterface {

	@Override
	public Room getRoomAvailable(String checkInDate, String checkOutDate, int RoomType_ID) {
		
		Date cI = Date.valueOf(checkInDate);
		Date cO =Date.valueOf(checkOutDate);
		String sqlSelectAvailableRoom = "SELECT RoomID,RoomType_ID FROM room_manage r WHERE (r.RoomID NOT IN (SELECT Room_Id FROM room_reservation_table rr WHERE(rr.check_in_date BETWEEN ? AND ?) AND (rr.check_out_date BETWEEN ? AND ?))AND r.RoomType_ID = ?) ";
		try(Connection con = databaseConnection.getConnection();) {
			PreparedStatement ps = con.prepareStatement(sqlSelectAvailableRoom);
			ps.setDate(1,cI);
			ps.setDate(2,cO);
			ps.setDate(3,cI);
			ps.setDate(4,cO);
			ps.setInt(5,RoomType_ID);
			System.out.println(ps);
			ResultSet rs = ps.executeQuery();
			Room ld1 = new Room();
			
			if(rs!=null) {
			while(rs.next()) {
			ld1.setRoomType(rs.getInt(2));
			ld1.setRoomNumber(rs.getInt(1));
			}
			}
			else {
				ld1.setRoomType(-1);
				ld1.setRoomNumber(-1);
			}
			System.out.println("Room Number: " + ld1.getRoomNumber());
			
			con.close();
			return ld1;
			
			
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void getRoomInformation(int roomID) {
		// TODO Auto-generated method stub
		
	}
	

	
}
