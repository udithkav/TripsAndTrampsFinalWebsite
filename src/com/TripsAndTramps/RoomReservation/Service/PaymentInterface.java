package com.TripsAndTramps.RoomReservation.Service;

import java.util.List;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;

public interface PaymentInterface {
	public List<RoomReservation> getAllUnconfirmedRoomReservations();
	
}
