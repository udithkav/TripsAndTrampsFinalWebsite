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
import com.TripsAndTramps.VehicleReservation.Service.Service;

/**
 * Servlet implementation class GetVehicleDetailsServlet
 */
@WebServlet("/GetVehicleDetailsServlet")
public class GetVehicleDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetVehicleDetailsServlet() {
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
		
		String Vtype = request.getParameter("vehicle_type");
		String Vbrand = request.getParameter("vehicle_brand");
		
		try {
			List<Vehicle> vehicle = Service.getVehicles(Vtype, Vbrand);
			request.setAttribute("data", vehicle);
		
			}catch(Exception e){
				e.printStackTrace();
			}
			RequestDispatcher RD = request.getRequestDispatcher("/02AvailableVehicle.jsp");
			RD.forward(request, response);
	}

}
