package com.TripsAndTramps.HRM.Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.TripsAndTramps.HRM.Model.TourGuide;
import com.TripsAndTramps.HRM.Service.Service;

/**
 * Servlet implementation class ViewTourguideApplicationServlet
 */
@WebServlet("/TT05ViewTourguideApplicationServlet")
public class TT05ViewTourguideApplicationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TT05ViewTourguideApplicationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		int app_no = Integer.parseInt(request.getParameter("app_no"));
		
		try {
			
			TourGuide TG = Service.getTourGuideToPreview(app_no);
			request.setAttribute("TG", TG);
			
		} catch (Exception e){
			
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/05ApplicationPreview.jsp");
		RD.forward(request, response);
		
		
	}

}
