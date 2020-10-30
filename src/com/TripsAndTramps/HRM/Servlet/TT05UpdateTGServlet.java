package com.TripsAndTramps.HRM.Servlet;

import java.io.IOException;
import java.sql.Date;
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
 * Servlet implementation class UpdateTGServlet
 */
@WebServlet("/TT05UpdateTGServlet")
public class TT05UpdateTGServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TT05UpdateTGServlet() {
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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String province = request.getParameter("province");
		Date dob = Date.valueOf(request.getParameter("dob"));
		String email = request.getParameter("email");
		String language = request.getParameter("language");
		String nic = request.getParameter("nic");
		
		try {
			
			Service.UpdateTourGuide(id, fname, lname, province, dob, email, language, nic);
			
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
