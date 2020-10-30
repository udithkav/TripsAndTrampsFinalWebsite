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
 * Servlet implementation class GetVehiclesFromPackageServlet
 */
@WebServlet("/GetVehiclesFromPackageServlet")
public class GetVehiclesFromPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetVehiclesFromPackageServlet() {
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
		
		int num = Integer.parseInt(request.getParameter("package"));

		if(num==1)
		{
			try {
				List<Vehicle> vehicle = Service.getVehiclesFromPackage01();
				request.setAttribute("data", vehicle);
			
				}catch(Exception e){
					e.printStackTrace();
				}
				RequestDispatcher RD = request.getRequestDispatcher("/02AvailableVehicleFromPackage.jsp");
				RD.forward(request, response);
		}
		else if(num==2)
			 {
				try {
					List<Vehicle> vehicle = Service.getVehiclesFromPackage02();
					request.setAttribute("data", vehicle);
			
					}catch(Exception e){
						e.printStackTrace();
					}
					RequestDispatcher RD = request.getRequestDispatcher("/02AvailableVehicleFromPackage.jsp");
					RD.forward(request, response);
			 }
			 else if(num==3)
			 	  {
				 		try {
						List<Vehicle> vehicle = Service.getVehiclesFromPackage03();
						request.setAttribute("data", vehicle);
					
						}catch(Exception e){
							e.printStackTrace();
						}
						RequestDispatcher RD = request.getRequestDispatcher("/02AvailableVehicleFromPackage.jsp");
						RD.forward(request, response);
			 	  }
	}

}
