package com.TripsAndTramps.RoomReservation.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.TripsAndTramps.Common.DatabaseVariables;
import com.TripsAndTramps.Common.databaseConnection;
import com.TripsAndTramps.RoomReservation.Model.Room;

public class ViewRoomTypeService implements ViewRoomTypeInterface {
	@Override
	public List<Room> getAllRoomTypes() {
		
		List<Room> roomTypeList = new ArrayList<Room>();
		String sql = "SELECT * FROM "+DatabaseVariables.roomTypeTable;
		System.out.println(sql);
		Connection con = databaseConnection.getConnection();
		
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				Room ro = new Room();
				ro.setRoomTypeNameDirect(rs.getString(3));
				ro.setRoomType(rs.getInt(1));
				ro.setAmountDirect(rs.getDouble(2));
				roomTypeList.add(ro);
			}
			
			
			
			return roomTypeList;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
		
		
	}

	@Override
	public Room getSpecificRoomData(int roomNumber) {
		// TODO Auto-generated method stub
		return null;
	}

}
