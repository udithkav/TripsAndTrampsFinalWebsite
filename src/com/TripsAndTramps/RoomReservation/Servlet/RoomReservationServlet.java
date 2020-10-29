package com.TripsAndTramps.RoomReservation.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.RoomReservation.Service.RoomReservationInterface;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomInterface;
import com.TripsAndTramps.RoomReservation.Service.SelectRoomService;
import com.TripsAndTramps.RoomReservation.Model.*;

/**
 * Servlet implementation class RoomReservationServlet
 */
@WebServlet("/RoomReservationServletFinal")
public class RoomReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int roomTypeID = Integer.valueOf(request.getParameter("roomType"));
		int numberOfAdults = Integer.valueOf(request.getParameter("numberOfAdults"));
		int numberOfChildren = Integer.valueOf(request.getParameter("numberOfChildren"));
		int totalPeople = numberOfAdults+numberOfChildren;
		String checkInDate = String.valueOf(request.getParameter("checkInDate"));
		String checkOutDate = String.valueOf(request.getParameter("checkOutDate"));
		String remarks = request.getParameter("remarks");
		
		System.out.println(checkInDate+" "+checkOutDate+ " " + roomTypeID);
		
		RoomReservationInterface w = new RoomReservationService();
		
		SelectRoomInterface s = new SelectRoomService();
		
		Room r = s.getRoomAvailable(checkInDate, checkOutDate, roomTypeID);
	
			r.setAmount(r.getRoomType());
			r.setRoomTypeName(r.getRoomType());
			
	
			
			
			if(r.getRoomNumber()==-1) {
				PrintWriter out = response.getWriter();  
				response.setContentType("text/html"); 
				out.println("");
				out.println("<script type=\"text/javascript\">");  
				out.println("alert('Please Enter Different Check In and Check Out Dates');"); 
				out.println("window.location = '01reserveRoom.jsp';");
				out.println("</script>");
				
			}
			else {
				String touristIdSession = (String) session.getAttribute("touristID");
				int tId = Integer.valueOf(touristIdSession);
				RoomReservation reservation = new RoomReservation(checkInDate, checkOutDate, totalPeople, r.getRoomNumber(),tId , r.getAmount(), remarks);
				w.createRoomReservation(reservation);
				response.sendRedirect("01reserveRoom.jsp");
			}
		
		
	
		
	}

}
