package com.TripsAndTramps.PC.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.PC.Model.Packageee;
import com.TripsAndTramps.PC.Service.Service;

/**
 * Servlet implementation class ToPackageServlet
 */
@WebServlet("/ToPackageServlet")
public class ToPackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToPackageServlet() {
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
		
		String tname = request.getParameter("TRName");
		
		
		try {
			List<Packageee> p = Service.getPackages();
			request.setAttribute("packageD", p);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/tguide.jsp");
		RD.forward(request, response);
	}

}
