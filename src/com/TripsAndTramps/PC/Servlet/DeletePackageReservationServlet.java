package com.TripsAndTramps.PC.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.PC.Model.Packageee;
import com.TripsAndTramps.PC.Service.Service;
import com.TripsAndTramps.PC.Util.Query;
import com.TripsAndTramps.PC.Util.databaseConnection;

/**
 * Servlet implementation class DeletePackageReservationServlet
 */
@WebServlet("/DeletePackageReservationServlet")
public class DeletePackageReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePackageReservationServlet() {
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
		
		int TGRID= Integer.parseInt(request.getParameter("tgrid"));
		
		try {
			Service.DeletePackageReservation(TGRID); ;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		RequestDispatcher RD = request.getRequestDispatcher("/PackageConfirmation.jsp");
		RD.forward(request, response);
	}

}
