package com.TripsAndTramps.RoomReservation.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.RoomReservation.Service.RoomReservationService;

/**
 * Servlet implementation class DeleteRoomReservation
 */
@WebServlet("/DeleteRoomReservation")
public class DeleteRoomReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRoomReservation() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int roomReservationID = Integer.valueOf(request.getParameter("roomReservationID"));
		
		RoomReservationService r1 = new RoomReservationService();
		
		r1.deleteRoomReservation(roomReservationID);
		
		request.getRequestDispatcher("viewRoomReservations").forward(request, response);
		
	}

}
