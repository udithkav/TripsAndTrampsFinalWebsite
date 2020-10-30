package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Temporary_Employee;
import service.Service;

/**
 * Servlet implementation class AssignWorkersServlet
 */
@WebServlet("/AssignWorkersServlet")
public class AssignWorkersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignWorkersServlet() {
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
		
		int tid = Integer.parseInt(request.getParameter("tid"));

		try {
			Temporary_Employee tm = Service.getSpecificWorker(tid);
			request.setAttribute("tm", tm);
		
		} catch (Exception e){
			e.printStackTrace();
		
		}
	
	RequestDispatcher RD = request.getRequestDispatcher("/08WorkAssignmentForm.jsp");
	RD.forward(request, response);
	
	}

}
