package com.TripsAndTramps.Common;



import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.TripsAndTramps.Login.LoginEmployee;
import com.TripsAndTramps.RoomReservation.Model.Room;
import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomService;
import com.TripsAndTramps.RoomReservation.Service.ViewRoomReservationService;

public class testClass {
	public static void main(String args[]) {

		
		
		
	LoginEmployee d1= new LoginEmployee();
	boolean new1 = d1.validateLogin("hell@gmail.com", "78945612325V");
	System.out.println(new1);
	}

}
