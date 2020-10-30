package com.TripsAndTramps.PC.Servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.PC.Model.Packageee;
import com.TripsAndTramps.PC.Model.TourGuideReservation;
import com.TripsAndTramps.PC.Service.Service;

/**
 * Servlet implementation class ToReservationServlet
 */
@WebServlet("/ToReservationServlet")
public class ToReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToReservationServlet() {
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
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String aname = request.getParameter("aname");
		String location = request.getParameter("loca");
		double amount = Double.parseDouble(request.getParameter("amount"));
		String tgname = request.getParameter("tname");
		Date fro = Date.valueOf(request.getParameter("fromm"));
        Date to = Date.valueOf(request.getParameter("too"));
        int diff = to.getDate()-fro.getDate();
        double Total = amount*diff;
        
		try {
			
			Service.insertTourguideReservation(aname, location, Total, tgname, fro, to, amount);
			
			List<TourGuideReservation> tg = Service.getSpecificReservation(tgname);
			request.setAttribute("ReservationDetails", tg);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/ViewP.jsp");
		
		RD.forward(request, response);
	}

	
	
	
}
