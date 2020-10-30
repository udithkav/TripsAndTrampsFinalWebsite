package com.TripsAndTramps.FC.Servlet;



	import java.io.IOException;
	import java.util.List;
	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.FC.Model.Complaint;
import com.TripsAndTramps.FC.Service.Service;

	/**
	 * Servelet implementation class InsertComplaintServlet
	 */
	@WebServlet("/InsertComplaintServlet")
	public class InsertComplaintServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;
	       
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public InsertComplaintServlet() {
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
			
			String mes = request.getParameter("Description");
			
			try {
				Service.insertComplaint(mes);
				
				List<Complaint> c = Service.getComplaints();
				request.setAttribute("complaint",c);
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			RequestDispatcher RD = request.getRequestDispatcher("/CP.jsp");
			RD.forward(request, response);
		}

	}


