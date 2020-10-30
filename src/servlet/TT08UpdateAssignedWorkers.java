package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Work_assign;
import service.Service;

/**
 * Servlet implementation class TT08UpdateAssignedWorkers
 */
@WebServlet("/TT08UpdateAssignedWorkers")
public class TT08UpdateAssignedWorkers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TT08UpdateAssignedWorkers() {
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
		
		int wid = Integer.parseInt(request.getParameter("wid"));
		
		try{
			Work_assign work = Service.getSpecificWork(wid);
			request.setAttribute("work", work);
			
		}catch(Exception e)
		{e.printStackTrace();}
		
		RequestDispatcher RD = request.getRequestDispatcher("/08UpdateWorkAssignmentForm.jsp");
		RD.forward(request, response);
		
	}
	
}
