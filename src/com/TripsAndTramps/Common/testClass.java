package com.TripsAndTramps.Common;



import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.TripsAndTramps.RoomReservation.Model.Room;
import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomService;
import com.TripsAndTramps.RoomReservation.Service.ViewRoomReservationService;

public class testClass {
	public static void main(String args[]) {

		
		
		
		RoomReservationService rr= new RoomReservationService();
		String d1 = "2020-10-30";
		String d2 = "2020-12-18";
		Date fromDate =Date.valueOf(d1);
		Date toDate = Date.valueOf(d2);
		int touristID = 1;
		
		
		List<RoomReservation> r1 = rr.searchRoomReservation(fromDate, toDate, touristID);
		for(RoomReservation r:r1) {
			System.out.println(r);
		}
		
		
		
	}

}
