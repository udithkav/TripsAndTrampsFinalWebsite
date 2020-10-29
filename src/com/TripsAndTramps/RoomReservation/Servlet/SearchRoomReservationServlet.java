package com.TripsAndTramps.RoomReservation.Servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;


@WebServlet("/SearchRoomReservationServlet")
public class SearchRoomReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchRoomReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String d1 = String.valueOf(request.getParameter("searchDate"));
		String d2 = String.valueOf(request.getParameter("searchDate2"));
		String touristIdSession = (String) session.getAttribute("touristID");
		int tId = Integer.valueOf(touristIdSession);
		RoomReservationService r1 = new RoomReservationService();
		List<RoomReservation> listOfReservations = r1.searchRoomReservation(Date.valueOf(d1), Date.valueOf(d2), tId);
		
		request.setAttribute("roomReservationList", listOfReservations);
		request.getRequestDispatcher("01viewRoomReservation.jsp").forward(request, response);
		
	}


}
