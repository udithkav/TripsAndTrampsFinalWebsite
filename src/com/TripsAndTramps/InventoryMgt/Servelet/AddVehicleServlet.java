package com.TripsAndTramps.InventoryMgt.Servelet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.TripsAndTramps.InventoryMgt.Model.VehicleOwnerAndVehicle;
import com.TripsAndTramps.InventoryMgt.Service.Service;

/**
 * Servlet implementation class AddVehicleServlet
 */
@WebServlet("/AddVehicleServlet")
public class AddVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVehicleServlet() {
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

	String vno = request.getParameter("no");
	String vtype = request.getParameter("vtype");
	String vbrand = request.getParameter("vbrand");
	Integer seat = Integer.parseInt(request.getParameter("nos"));
	String model = request.getParameter("model");
	String oname = request.getParameter("von");
	String language = request.getParameter("language");
	Integer age = Integer.parseInt(request.getParameter("age"));
	Integer pnumber = Integer.parseInt(request.getParameter("phone"));
	String ac = request.getParameter("ac");
	Double amount = Double.parseDouble(request.getParameter("amount"));
	System.out.println("number of seats =" + seat);
	
	
	try 
	{
		Service.insertVehicle(vno,vtype,vbrand,seat,model,oname,language,age,pnumber,ac,amount);
		
		List<VehicleOwnerAndVehicle> VandO = Service.getAVehicle();
		request.setAttribute("VandO", VandO);
		
		int countforcars = Service.countforcars();
		request.setAttribute("countforcars", countforcars);
		
		int countforvans = Service.countforvans();
		request.setAttribute("countforvans", countforvans);
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	RequestDispatcher RD = request.getRequestDispatcher("/07Vehicle_View.jsp");
	RD.forward(request,response);
	
	}
}

