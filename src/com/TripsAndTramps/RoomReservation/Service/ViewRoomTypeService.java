package com.TripsAndTramps.RoomReservation.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.TripsAndTramps.Common.databaseConnection;
import com.TripsAndTramps.RoomReservation.Model.Room;

public class ViewRoomTypeService implements ViewRoomTypeInterface {

	@Override
	public List<Room> getAllRoomTypes() {
		
		List<Room> roomTypeList = new ArrayList<Room>();
		String sql = "SELECT RoomType_ID,RoomType_Name FROM room_type";
		
		Connection con = databaseConnection.getConnection();
		
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Room ro = new Room();
				ro.setRoomTypeName(rs.getString(2));
				ro.setRoomType(rs.getInt(1));
				roomTypeList.add(ro);
			}
			return roomTypeList;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
		
		
	}

}
