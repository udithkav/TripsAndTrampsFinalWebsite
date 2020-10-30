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

import com.TripsAndTramps.HRM.Model.TourGuide;
import com.TripsAndTramps.HRM.Service.Service;

/**
 * Servlet implementation class InsertTourGuideServlet
 */
@WebServlet("/TT05InsertTourGuideServlet")
public class TT05InsertTourGuideServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TT05InsertTourGuideServlet() {
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
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		Date dob = Date.valueOf(request.getParameter("dob"));
		String email = request.getParameter("email");
		String province = request.getParameter("province");
		String nic = request.getParameter("nic");
		String[] ck = request.getParameterValues("ck");
		String language = "";
		
		for(int i=0;i<ck.length;i++)
		{
			language = language + "/" + ck[i];
		}
		
		try {
			Service.insertTGEmp(firstname, lastname, dob, email, province, language, nic);

			List<TourGuide> tourguide = Service.getTGFromTempTable();
			request.setAttribute("tourguide", tourguide);
			
		} catch (Exception e){
			
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/05ApplicationReview.jsp");
		RD.forward(request, response);
	}
}
