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
 * Servlet implementation class SpecificVehiclefromPackageServlet
 */
@WebServlet("/SpecificVehiclefromPackageServlet")
public class SpecificVehiclefromPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SpecificVehiclefromPackageServlet() {
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
		
		String Vnumber = request.getParameter("vehicle_number");
		
		try {
			List<Vehicle> vehicle = Service.getSpecificVehicleFromPackage(Vnumber);
			request.setAttribute("data", vehicle);
		
			}catch(Exception e){
				e.printStackTrace();
			}
			RequestDispatcher RD = request.getRequestDispatcher("/02VehicleDetailsFromPackage.jsp");
			RD.forward(request, response);
	}

}
