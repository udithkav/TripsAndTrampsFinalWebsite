package com.TripsAndTramps.RoomReservation.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.Login.TouristLoggerDetails;
import com.TripsAndTramps.RoomReservation.Model.Room;
import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationInterface;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomInterface;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomService;

/**
 * Servlet implementation class RoomReservationUpdate
 */
@WebServlet("/RoomReservationUpdate")
public class RoomReservationUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int reservationID = Integer.valueOf(request.getParameter("reservationID"));
		int roomTypeID = Integer.valueOf(request.getParameter("roomType"));
		int numberOfAdults = Integer.valueOf(request.getParameter("numberOfPeople"));
		int totalPeople = numberOfAdults;
		String checkInDate = String.valueOf(request.getParameter("checkInDate"));
		String checkOutDate = String.valueOf(request.getParameter("checkOutDate"));
		String remarks = request.getParameter("remarks");
		HttpSession session = request.getSession();
		
		RoomReservationInterface w = new RoomReservationService();
		SelectRoomInterface s = new SelectRoomService();
	
	
		Room r = new Room();
		r = s.getRoomAvailable(checkInDate, checkOutDate, roomTypeID);
	if(r==null) {
		PrintWriter out = response.getWriter();  
		response.setContentType("text/html");  
		out.println("<script type=\"text/javascript\">");  
		out.println("alert('It is not possible to change your Reservation please Contact Customer Support!');");
		out.println("</script>");
	}
	else {
		w.deleteRoomReservation(reservationID);
		r.setAmount(r.getRoomType());
		r.setAmount(r.getRoomType());
		r.setRoomTypeName(r.getRoomType());
		
		String touristIdSession = (String) session.getAttribute("touristID");
		int tId = Integer.valueOf(touristIdSession);
		System.out.println(checkInDate+" "+ checkOutDate +" " + totalPeople+" "+ r.getRoomNumber() + " " + tId+ " "+ r.getAmount()+ " " + remarks);
		RoomReservation reservation = new RoomReservation(checkInDate, checkOutDate, totalPeople, r.getRoomNumber(), tId, r.getAmount(), remarks);
		
		w.createRoomReservation(reservation);
		
		response.sendRedirect("viewRoomReservations");
		
	}
	
	}

}
