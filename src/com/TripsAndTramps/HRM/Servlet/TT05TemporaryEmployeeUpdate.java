package com.TripsAndTramps.HRM.Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.HRM.Model.Employeee;
import com.TripsAndTramps.HRM.Service.Service;

/**
 * Servlet implementation class TemporaryEmployeeUpdate
 */
@WebServlet("/TT05TemporaryEmployeeUpdate")
public class TT05TemporaryEmployeeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TT05TemporaryEmployeeUpdate() {
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
		
		int id = Integer.parseInt(request.getParameter("tid"));
		
		try {
			
			Employeee Temployeee = Service.getSpecificTEmployee(id);
			request.setAttribute("temporaryemployee", Temployeee);
			
		} catch (Exception e){
			e.printStackTrace();
			
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/05DetailsTUpdate.jsp");
		RD.forward(request, response);
	}

}
