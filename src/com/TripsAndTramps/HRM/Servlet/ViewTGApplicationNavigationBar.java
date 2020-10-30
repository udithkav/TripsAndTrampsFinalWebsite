package com.TripsAndTramps.HRM.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.HRM.Model.TourGuide;
import com.TripsAndTramps.HRM.Service.Service;

/**
 * Servlet implementation class ViewTGApplicationNavigationBar
 */
@WebServlet("/ViewTGApplicationNavigationBar")
public class ViewTGApplicationNavigationBar extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewTGApplicationNavigationBar() {
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

			List<TourGuide> tourguide = Service.getTGEmployeefromTemp();
			request.setAttribute("tourguide", tourguide);
			
		} catch (Exception e){
			
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/05ApplicationReview.jsp");
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
