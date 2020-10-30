package com.TripsAndTramps.FC.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.TripsAndTramps.FC.Model.Feedback;
import com.TripsAndTramps.FC.Service.Service;

/**
 * Servlet implementation class updateFeedbackServlet
 */
@WebServlet("/updateFeedbackServlet")
public class updateFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateFeedbackServlet() {
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
		
		int fno = Integer.parseInt(request.getParameter("fno"));
		String des = request.getParameter("message");
		
		try {
			Service.updateFeedback(fno, des);;
			
			List<Feedback> f = Service.getFeedbacks();
			request.setAttribute("feedback", f); ;
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/FD.jsp");
		RD.forward(request, response);
	}
		
		
	

}
