package com.TripsAndTramps.Login;

import java.io.IOException;
import com.TripsAndTramps.Common.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/TouristLoginServlet")
public class TouristLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean check = false;
		try(Connection conn = databaseConnection.getConnection() ) {
			check = LoginTourist.validateLogin(email, password);
			if(check==true) {
				String type = "Tourist";
				LoginTourist.saveLoggerDetails(email);
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("password", password);
				session.setAttribute("type", type);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/01touristHomepage.jsp");
				dispatcher.forward(request, response);
			}
			if(check==false) {
				response.sendRedirect("01Login.jsp");
			}
			
			
		} catch (SQLException ex) {
			// TODO: handle exception
		}
	}

}
