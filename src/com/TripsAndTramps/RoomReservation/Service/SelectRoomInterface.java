package com.TripsAndTramps.RoomReservation.Service;
import com.TripsAndTramps.RoomReservation.Model.*;
import java.util.*;
import java.sql.Date;

public interface SelectRoomInterface {


	public Room getRoomAvailable(String checkInDate, String checkOutDate, int RoomType_ID);
	public void getRoomInformation(int roomID);

}
