package com.TripsAndTramps.RoomReservation.Service;
import com.TripsAndTramps.RoomReservation.Model.*;
import java.util.*;
import java.sql.Date;

public interface SelectRoomInterface {


	public List<Room> getRoomAvailable(Date checkInDate, Date checkOutDate, int RoomType_ID);
	public int pickAvailableRoom(List<Room> r);
	public void getRoomInformation(int roomID);

}
