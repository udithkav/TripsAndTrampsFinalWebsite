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
		int touristID = 0;
		String touristIdString = null;
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
				String sqlGetTouristID = "SELECT "+DatabaseVariables.touristTable_id + " FROM "+DatabaseVariables.touristTable+" WHERE "+DatabaseVariables.touristTable_email+"=(?)";
				
				PreparedStatement ps = conn.prepareStatement(sqlGetTouristID);
				
				ps.setString(1, email);
				
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					touristID = rs.getInt(1);
				}
				touristIdString = String.valueOf(touristID);
				session.setAttribute("touristID", touristIdString);
				conn.close();
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
