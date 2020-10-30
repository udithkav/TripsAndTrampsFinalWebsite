package com.TripsAndTramps.FinanceManagment.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TripsAndTramps.FinanceManagment.Model.expense;
import com.TripsAndTramps.FinanceManagment.Model.payment;
import com.TripsAndTramps.FinanceManagement.Service.Service;


/**
 * Servlet implementation class DeleteExpenseServlet
 */
@WebServlet("/DeleteExpenseServlet")
public class DeleteExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteExpenseServlet() {
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
		
int Ex_id = Integer.parseInt(request.getParameter("Ex_id"));
		
		try {
			Service.DeleteExpense(Ex_id);;
			
			List<payment> p = Service.getPaymentDetails();
			request.setAttribute("paymentdetails",p);
			
				List<expense> i = Service.getExpenseDetails();
				request.setAttribute("expensesdetails",i);
				
			}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		RequestDispatcher RD = request.getRequestDispatcher("/viewDetails.jsp");
		RD.forward(request,response);
	}

}