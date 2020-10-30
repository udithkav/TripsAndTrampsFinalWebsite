package com.TripsAndTramps.VehicleReservation.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.VehicleReservation.Model.Vehicle;
import com.TripsAndTramps.VehicleReservation.Model.Vehicle_Reservation;
import com.TripsAndTramps.VehicleReservation.Service.Service;

/**
 * Servlet implementation class DisplayVehicleReservationServlet
 */
@WebServlet("/DisplayVehicleReservationServlet")
public class DisplayVehicleReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayVehicleReservationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int reservationid = Integer.parseInt(request.getParameter("reservationid"));
		
		try {	
			Vehicle_Reservation reservation = Service.getSpecificReservation(reservationid);
			List<Vehicle> vehicle = Service.getSpecificVehicle(reservation.getVehicle_num());

			for(Vehicle v:vehicle)
			{
				reservation.setModel(v.getModel());
				reservation.setVehicle_brand(v.getVehcleBrand());
				reservation.setVehicle_type(v.getVehicleType());
			}
			
			request.setAttribute("reservation", reservation);
		}catch(Exception e){
			e.printStackTrace();
		}
			RequestDispatcher RD = request.getRequestDispatcher("/02Reservations.jsp");
			RD.forward(request, response);
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
