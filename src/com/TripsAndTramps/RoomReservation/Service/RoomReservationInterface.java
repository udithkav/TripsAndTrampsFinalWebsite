package com.TripsAndTramps.RoomReservation.Service;

import java.sql.Date;
import java.util.List;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
public interface RoomReservationInterface {
	public void createRoomReservation(RoomReservation R);
	public RoomReservation viewRoomReservation(int rrID);
	public void deleteRoomReservation(int roomReservationID);
	public List<RoomReservation> searchRoomReservation(Date fromDate,Date toDate,int TouristID);
	
}
