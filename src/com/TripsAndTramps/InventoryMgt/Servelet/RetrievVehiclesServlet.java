package com.TripsAndTramps.InventoryMgt.Servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.InventoryMgt.Model.VehicleOwnerAndVehicle;
import com.TripsAndTramps.InventoryMgt.Service.Service;

/**
 * Servlet implementation class RetrievVehiclesServlet
 */
@WebServlet("/RetrievVehiclesServlet")
public class RetrievVehiclesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrievVehiclesServlet() {
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
		
		try 
		{
	
			List<VehicleOwnerAndVehicle> VandO = Service.getAVehicle();
			request.setAttribute("VandO", VandO);
			
			int countforcars = Service.countforcars();
			request.setAttribute("countforcars", countforcars);
			
			int countforvans = Service.countforvans();
			request.setAttribute("countforvans", countforvans);
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/07Vehicle_View.jsp");
		RD.forward(request,response);
	}

}
