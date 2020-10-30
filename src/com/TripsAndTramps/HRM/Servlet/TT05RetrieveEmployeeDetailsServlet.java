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
import com.TripsAndTramps.HRM.Model.TourGuide;
import com.TripsAndTramps.HRM.Service.Service;

/**
 * Servlet implementation class RetrieveEmployeeDetailsServlet
 */
@WebServlet("/TT05RetrieveEmployeeDetailsServlet")
public class TT05RetrieveEmployeeDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TT05RetrieveEmployeeDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		//response.sendRedirect("/05EmployeeDetails.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
		
		try {
		
			List<Employeee> Pemployeee = Service.getPEmployee();
			request.setAttribute("permanentemployee", Pemployeee);
		
			List<Employeee> Temployeee = Service.getTEmployee();
			request.setAttribute("temporaryemployee", Temployeee);
			
			List<TourGuide> tourguide = Service.getTGEmployee();
			request.setAttribute("tourguide", tourguide);
		
		} catch (Exception e){	
		e.printStackTrace();	
		}
	
		RequestDispatcher RD = request.getRequestDispatcher("/05EmployeeDetails.jsp");
		RD.forward(request, response);
		
	}

}
