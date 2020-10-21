package com.TripsAndTramps.RoomReservation.Service;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
public interface RoomReservationInterface {
	public void createRoomReservation(RoomReservation R);
	public void checkDetails();
	public void deleteRoomReservation(int roomReservationID);
}
