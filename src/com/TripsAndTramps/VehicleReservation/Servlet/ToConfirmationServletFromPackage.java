package com.TripsAndTramps.VehicleReservation.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.VehicleReservation.Model.Vehicle_Owner;
import com.TripsAndTramps.VehicleReservation.Service.Service;

/**
 * Servlet implementation class ToConfirmationServletFromPackage
 */
@WebServlet("/ToConfirmationServletFromPackage")
public class ToConfirmationServletFromPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToConfirmationServletFromPackage() {
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
		
		String Vnum = request.getParameter("vehicle_number");
		Double amount = Double.parseDouble(request.getParameter("amount"));
			
		try {
			List<Vehicle_Owner> owner = Service.getVehicleOwnerDetails(Vnum);;
			request.setAttribute("data", owner);
		
			}catch(Exception e){
				e.printStackTrace();
			}
			
			request.setAttribute("Vnum", Vnum);
			request.setAttribute("amount", amount);
		
			RequestDispatcher RD = request.getRequestDispatcher("/02ConfirmationFromPackage.jsp");
			RD.forward(request, response);
	}

}
