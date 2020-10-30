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
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.VehicleReservation.Model.Vehicle_Owner;
import com.TripsAndTramps.VehicleReservation.Model.Vehicle_Reservation;
import com.TripsAndTramps.VehicleReservation.Service.Service;

/**
 * Servlet implementation class FinalDetailsServlet
 */
@WebServlet("/FinalDetailsServlet")
public class FinalDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FinalDetailsServlet() {
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
		
		HttpSession session = request.getSession();
		
		String Vnumber = request.getParameter("vehicle_number");
		String decision = request.getParameter("decision");
		Double amount  = Double.parseDouble(request.getParameter("amount"));
		Date from = Date.valueOf(request.getParameter("from"));
		Date to = Date.valueOf(request.getParameter("to"));
		@SuppressWarnings("deprecation")
		int diff = to.getDate()-from.getDate();
		Double Total = amount * diff;
		String tourist = "Malindu";
		//tourist =(String) session.getAttribute("email");
		System.out.println("Total for reservation = " + Total);
		
		try {
			
			if(decision.equals("yes"))
			{
				Service.insertReservationWithoutDriver(Vnumber,decision,from,to,Total,amount,tourist);
				Service.ChangeVehicleAvailability(Vnumber);
			}
			else if(decision.equals("no"))
			{
				List<Vehicle_Owner> owner = Service.getVehicleOwnerDetails(Vnumber);
				
				for(Vehicle_Owner vo:owner)
				{
				
					Service.insertReservation(Vnumber,decision,from,to,Total,vo.getName(),vo.getPhoneNumber(),tourist,amount);
					Service.ChangeVehicleAvailability(Vnumber);
				}
				
			}
				List<Vehicle_Reservation> reservation = Service.getVehicleReservations(tourist);
				request.setAttribute("reservation", reservation);
		
			}catch(Exception e){
				e.printStackTrace();
			}
			RequestDispatcher RD = request.getRequestDispatcher("/02ReservationList.jsp");
			RD.forward(request, response);
	}

}
