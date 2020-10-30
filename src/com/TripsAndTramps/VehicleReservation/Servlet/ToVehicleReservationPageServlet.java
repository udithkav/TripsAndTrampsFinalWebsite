package com.TripsAndTramps.VehicleReservation.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.VehicleReservation.Service.Service;

/**
 * Servlet implementation class ToVehicleReservationPageServlet
 */
@WebServlet("/ToVehicleReservationPageServlet")
public class ToVehicleReservationPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToVehicleReservationPageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		HttpSession session = request.getSession();
		
		String username = "Malindu";
		
		//tourist =(String) session.getAttribute("email");
		
		int count = Service.toVehicleReservationPage(username);
		
		System.out.println("Total Reservations" + count);
		
		if(count>=2)
		{
			RequestDispatcher RD = request.getRequestDispatcher("/02ErrorForTotalReservations.jsp");
			RD.forward(request, response);
		}else if(count<2 && count >=0)
				{
					RequestDispatcher RD = request.getRequestDispatcher("/02VehicleReservation.jsp");
					RD.forward(request, response);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}
}
