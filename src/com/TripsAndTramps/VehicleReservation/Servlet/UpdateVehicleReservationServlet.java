package com.TripsAndTramps.VehicleReservation.Servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.VehicleReservation.Model.Vehicle_Reservation;
import com.TripsAndTramps.VehicleReservation.Service.Service;

/**
 * Servlet implementation class UpdateVehicleReservationServlet
 */
@WebServlet("/UpdateVehicleReservationServlet")
public class UpdateVehicleReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVehicleReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int reservationId = Integer.parseInt(request.getParameter("rid"));
		Double amount  = Double.parseDouble(request.getParameter("amountForDay"));
		Date from = Date.valueOf(request.getParameter("from"));
		Date to = Date.valueOf(request.getParameter("to"));
		@SuppressWarnings("deprecation")
		int diff = to.getDate()-from.getDate();
		Double Total = amount * diff;
		String tourist = "Malindu";
		
		try {	
		
			Service.UpdateVehicleReservation(reservationId,from,to,Total);
			
			List<Vehicle_Reservation> reservation = Service.getVehicleReservations(tourist);
			request.setAttribute("reservation", reservation);

		}catch(Exception e){
			e.printStackTrace();
		}
			RequestDispatcher RD = request.getRequestDispatcher("/02ReservationList.jsp");
			RD.forward(request, response);
		}
	}

