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
 * Servlet implementation class ToUpdateVehiclePageServlet
 */
@WebServlet("/ToUpdateVehiclePageServlet")
public class ToUpdateVehiclePageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToUpdateVehiclePageServlet() {
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
		
		String vno = request.getParameter("id");
		
		try 
		{
			VehicleOwnerAndVehicle VandO = Service.getSpecificVehicle(vno);
			request.setAttribute("VandO", VandO);
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/07Update_Vehicle.jsp");
		RD.forward(request,response);
		
		
	}

}
