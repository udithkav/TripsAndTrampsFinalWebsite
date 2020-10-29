package com.TripsAndTramps.RoomReservation.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.RoomReservation.Service.ViewRoomReservationService;

/**
 * Servlet implementation class viewRoomReservations
 */
@WebServlet("/viewRoomReservations")
public class viewRoomReservations extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String touristIdSession = (String) session.getAttribute("touristID");
		int tId = Integer.valueOf(touristIdSession);
		ViewRoomReservationService r1 = new ViewRoomReservationService();
		List<RoomReservation> listOfReservations = r1.getRoomReservationList(tId);
		
		request.setAttribute("roomReservationList", listOfReservations);
		request.getRequestDispatcher("01viewRoomReservation.jsp").forward(request, response);
		
		
	}


}
