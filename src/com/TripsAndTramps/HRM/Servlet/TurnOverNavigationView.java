package com.TripsAndTramps.HRM.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.HRM.Model.Employeee;
import com.TripsAndTramps.HRM.Service.Service;

/**
 * Servlet implementation class TurnOverNavigationView
 */
@WebServlet("/TurnOverNavigationView")
public class TurnOverNavigationView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TurnOverNavigationView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try {
			
			List<Employeee> Pemployeee = Service.getPDeletedEmployee();
			request.setAttribute("deletedemployee", Pemployeee);
		
		
		} catch (Exception e){	
		e.printStackTrace();	
		}
	
		RequestDispatcher RD = request.getRequestDispatcher("/05TurnOverEmployeeTable.jsp");
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
