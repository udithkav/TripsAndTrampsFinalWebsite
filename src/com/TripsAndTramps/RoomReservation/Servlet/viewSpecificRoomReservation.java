package com.TripsAndTramps.RoomReservation.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.RoomReservation.Model.RoomReservation;
import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;

/**
 * Servlet implementation class viewSpecificRoomReservation
 */
@WebServlet("/viewSpecificRoomReservation")
public class viewSpecificRoomReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewSpecificRoomReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int roomReservationID = Integer.valueOf(request.getParameter("roomReservationIDu"));
		RoomReservationService rrs = new RoomReservationService();
		RoomReservation rr = rrs.viewRoomReservation(roomReservationID);
		if(rr!=null) {
			request.setAttribute("roomReservationInfo", rr);
			request.getRequestDispatcher("viewRoomReservations").forward(request, response);
		}
		
	}

}
