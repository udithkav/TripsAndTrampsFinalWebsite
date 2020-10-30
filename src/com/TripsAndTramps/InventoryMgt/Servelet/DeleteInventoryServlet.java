package com.TripsAndTramps.InventoryMgt.Servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.InventoryMgt.Model.Inventory;
import com.TripsAndTramps.InventoryMgt.Service.Service;

/**
 * Servlet implementation class DeleteInventoryServlet
 */
@WebServlet("/DeleteInventoryServlet")
public class DeleteInventoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteInventoryServlet() {
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
		
		String id = request.getParameter("id");
		
		try 
		{
			Service.deleteInvetory(id);
			
			int countforAC = Service.countforAC();
			request.setAttribute("countforAC", countforAC);
			
			int countforTV = Service.countforTV();
			request.setAttribute("countforTV", countforTV);
			
			int countforBed = Service.countforBed();
			request.setAttribute("countforBed", countforBed);
			
			List<Inventory> Iinventory = Service.getAInventory();
			request.setAttribute("addinventory", Iinventory);
					
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/07Inventory_View.jsp");
		RD.forward(request,response);
	}

}
