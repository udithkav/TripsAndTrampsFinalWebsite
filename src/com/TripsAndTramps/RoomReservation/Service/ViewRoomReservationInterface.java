package com.TripsAndTramps.RoomReservation.Service;

import java.util.List;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;

public interface ViewRoomReservationInterface {
	public List<RoomReservation> getRoomReservationList(int TouristID);
}
