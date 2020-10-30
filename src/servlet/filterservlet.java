package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Temporary_Employee;
import model.Work_assign;
import service.Service;

/**
 * Servlet implementation class filterservlet
 */
@WebServlet("/filterservlet")
public class filterservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public filterservlet() {
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

		List<Work_assign> assigned = Service.getAssignWorkers();
		request.setAttribute("assigned", assigned);
		
	int id=Integer.parseInt(request.getParameter("searchEmp"));
		Service service=new Service();
		
		List emp=service.getTemployeeByID(id);
		
		HttpSession session=request.getSession();
        session.setAttribute("emp",emp);
        

		List<Temporary_Employee> employees = Service.getTemployees();
		request.setAttribute("employees", employees);
		
        
        
    	RequestDispatcher RD = request.getRequestDispatcher("/08TemporaryEmployeesDetails.jsp");
		RD.forward(request, response);
        
		
				}

}