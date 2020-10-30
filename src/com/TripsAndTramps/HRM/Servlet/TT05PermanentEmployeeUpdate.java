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
 * Servlet implementation class ToUpdateFormServlet
 */
@WebServlet("/TT05PermanentEmployeeUpdate")
public class TT05PermanentEmployeeUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		int id = Integer.parseInt(request.getParameter("pid"));
		
		try {
			
			List<Employeee> Pemployeee = Service.getSpecificPEmployee(id);
			request.setAttribute("permanentemployee", Pemployeee);
			
			
			
		} catch (Exception e){
			e.printStackTrace();
			
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/05DetailsPupdate.jsp");
		RD.forward(request, response);
	}

}
