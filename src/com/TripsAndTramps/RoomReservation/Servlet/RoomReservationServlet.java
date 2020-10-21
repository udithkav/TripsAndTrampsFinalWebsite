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


import com.TripsAndTramps.RoomReservation.Service.RoomReservationInterface;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomInterface;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomService;
import com.TripsAndTramps.Login.TouristLoggerDetails;
import com.TripsAndTramps.RoomReservation.Model.*;

/**
 * Servlet implementation class RoomReservationServlet
 */
@WebServlet("/RoomReservationServlet")
public class RoomReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int roomTypeID = Integer.valueOf(request.getParameter("roomType"));
		int numberOfAdults = Integer.valueOf(request.getParameter("numberOfAdults"));
		int numberOfChildren = Integer.valueOf(request.getParameter("numberOfChildren"));
		int totalPeople = numberOfAdults+numberOfChildren;
		Date checkInDate = Date.valueOf(request.getParameter("checkInDate"));
		Date checkOutDate = Date.valueOf(request.getParameter("checkOutDate"));
		String remarks = request.getParameter("remarks");

		
		RoomReservationInterface w = new RoomReservationService();
		
		SelectRoomInterface s = new SelectRoomService();
		
		List<Room> lds = new ArrayList<Room>();
		Room r = new Room();
		lds = s.getRoomAvailable(checkInDate, checkOutDate, roomTypeID);
		if(lds==null) {
			PrintWriter out = response.getWriter();  
			response.setContentType("text/html");  
			out.println("<script type=\"text/javascript\">");  
			out.println("alert('Please Enter Different Check In and Check Out Dates');");  
			out.println("</script>");
		}
		else {
			r = lds.get(0);
			r.setAmount(r.getRoomType());
			
			
			RoomReservation reservation = new RoomReservation(r.getRoomNumber(),TouristLoggerDetails.getPassportID(),r.getAmount(),checkInDate,checkOutDate,totalPeople,remarks);
			
			
		
			
			w.createRoomReservation(reservation);
			
		}
	
		
	}

}
