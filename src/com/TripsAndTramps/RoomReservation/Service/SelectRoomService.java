package com.TripsAndTramps.RoomReservation.Service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



import com.TripsAndTramps.Common.databaseConnection;
import com.TripsAndTramps.RoomReservation.Model.Room;


public class SelectRoomService implements SelectRoomInterface {

	@Override
	public List<Room> getRoomAvailable(Date checkInDate, Date checkOutDate, int RoomType_ID) {
		
		
		String sqlSelectAvailableRooms = "SELECT RoomID,RoomType_ID FROM room_manage r WHERE (r.RoomID NOT IN (SELECT rr.Room_ID from room_reservation rr WHERE (?)<rr.Check_In_Date AND (?)>rr.Check_Out_Date ) and r.RoomType_ID=(?))";
		try(Connection con = databaseConnection.getConnection();) {
			PreparedStatement ps = con.prepareStatement(sqlSelectAvailableRooms);
			ps.setDate(1,checkInDate);
			ps.setDate(2,checkOutDate);
			ps.setInt(3,RoomType_ID);
			ResultSet rs = ps.executeQuery();
			
			List<Room> rooms = new ArrayList<Room>();
			
			while(rs.next()) {
				Room ld1 = new Room();
				ld1.setRoomType(rs.getInt(2));
				ld1.setRoomNumber(rs.getInt(1));
				rooms.add(ld1);
				}
			con.close();
			Room r1 = rooms.get(1);
			Room r2 = rooms.get(2);
			Room r3 = rooms.get(3);
			
			System.out.println(r1.getRoomNumber());
			System.out.println(r2.getRoomNumber());
			System.out.println(r3.getRoomNumber());
			return rooms;
			
			
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int pickAvailableRoom(List<Room> r) {
		
		int i = -1;
		
		// TODO Auto-generated method stub
		
		
		return i;
	}

	@Override
	public void getRoomInformation(int roomID) {
		// TODO Auto-generated method stub
		
	}
	

	
}
