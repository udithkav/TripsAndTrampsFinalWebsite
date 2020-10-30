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
 * Servlet implementation class UpdatePEmployee
 */
@WebServlet("/TT05UpdatePEmployee")
public class TT05UpdatePEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		int id = Integer.parseInt(request.getParameter("pid"));
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		float salary = (Float.parseFloat(request.getParameter("salary")));
		String position = request.getParameter("position");
		Date dob = Date.valueOf(request.getParameter("date"));
		String email = request.getParameter("email");
		String nic = request.getParameter("nic");
		
		try {
			Service.updatePEmployee(id, firstname, lastname, salary, position, dob, email, nic);
			
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


