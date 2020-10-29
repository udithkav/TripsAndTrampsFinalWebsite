package com.TripsAndTramps.RoomReservation.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TripsAndTramps.Common.databaseConnection;
import com.TripsAndTramps.RoomReservation.Model.RoomReservationReport;

/**
 * Servlet implementation class RoomReservationReportGeneratorServlet
 */
@WebServlet("/RoomReservationReportGeneratorServlet")
public class RoomReservationReportGeneratorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomReservationReportGeneratorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String touristIdSession = (String) session.getAttribute("touristID");
		int tId = Integer.valueOf(touristIdSession);
		String d1 = String.valueOf(request.getParameter("checkInDateRep"));
		String d2 = String.valueOf(request.getParameter("checkOutDateRep"));
		
		int roomReservationID= Integer.valueOf(request.getParameter("TouristIDRep"));
		Date checkInDate = Date.valueOf(d1);
		Date checkOutDate= Date.valueOf(d2);;
		int people = Integer.valueOf(request.getParameter("PeopleRep"));
		int touristID= tId;
		double amount = Double.valueOf(request.getParameter("AmountRep"));
		String Remarks = String.valueOf(request.getParameter("remarksRep"));
		String confirm  = String.valueOf(request.getParameter("ConfirmRep"));
		int roomID = 0;
		String roomTypeValue = null;
		String aboutRoom = null;
		String roomManagerFirstName = null;
		String roomManagerLastName = null;
		String roomManagerEmail = null;
		
		String reportSql = "SELECT rrt.Room_Id,pe.Fname,pe.Lname,pe.Email,rt.description,rt.roomType_Name FROM room_manage rm,room_type rt,room_reservation_table rrt,permenant_employee pe WHERE rrt.id = ? LIMIT 1";
		
		try(Connection con = databaseConnection.getConnection();){
			PreparedStatement stmt = con.prepareStatement(reportSql);
			stmt.setInt(1, roomReservationID);
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				roomID = rs.getInt(2);
				roomTypeValue = rs.getString(7);
				aboutRoom = rs.getString(6);
				roomManagerFirstName = rs.getString(3);
				roomManagerLastName = rs.getString(4);
				roomManagerEmail = rs.getString(5);
			}
			
			RoomReservationReport r1 = new RoomReservationReport(roomReservationID,  checkInDate, checkOutDate,  people, roomID,
					touristID, amount, Remarks,confirm, roomTypeValue, aboutRoom,
					roomManagerFirstName, roomManagerLastName, roomManagerEmail);
			request.setAttribute("reportObject", r1);
			request.getRequestDispatcher("RoomReservationReport.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
