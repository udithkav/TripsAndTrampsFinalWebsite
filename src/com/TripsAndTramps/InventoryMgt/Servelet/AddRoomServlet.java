package com.TripsAndTramps.InventoryMgt.Servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.InventoryMgt.Model.Room;
import com.TripsAndTramps.InventoryMgt.Service.Service;

/**
 * Servlet implementation class AddRoomServlet
 */
@WebServlet("/AddRoomServlet")
public class AddRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRoomServlet() {
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
		
		String room_id = request.getParameter("room_id");
		String peid = request.getParameter("peid");
		String rtype_id = request.getParameter("rtype_id");
		
		
		try {
			Service.insertRoom(room_id,peid,rtype_id);
			
			List<Room> Rroom = Service.getARoom();
			request.setAttribute("addroom", Rroom);
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/07Room_View.jsp");
		RD.forward(request,response);
	}

}
