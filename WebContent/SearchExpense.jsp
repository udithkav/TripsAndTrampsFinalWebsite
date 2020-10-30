<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="com.TripsAndTramps.FinanceManagment.Model.expense" %>
        <%@page import="com.TripsAndTramps.FinanceManagement.Service.Service" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Expense Details</title>
    <link rel="stylesheet" href="FM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="FM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="FM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="FM/assets/css/footer.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="FM/assets/css/NavigationBar.css">
    <link rel="stylesheet" href="FM/assets/css/styles.css">
</head>
<body>

<nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="FM/assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
               
                <li role="presentation" class="nav-item"></li>
                 <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Finance</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Add a Expense</a></div>
                </li>
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>

<%
	

	
	String date =  request.getParameter("date1");

	
		Service getExpenseDetails = new Service();
		expense exp = getExpenseDetails.get_values_of_expense(date);
					
					
		
									if (exp == null) {
										out.println("<script type=\"text/javascript\">");
										out.println("alert('This date dosent exisit');");
										out.println("location='SearchExpense.jsp';");
										out.println("</script>");
									}
									%>


	<%
		if (exp != null) {
	%>
	
	<div class="table-responsive" style="padding: 100px;padding-top: 25px;">
	<table class="table" style="max-height:500px;">
    
   		<thead>
            <tr>
            <td>Ex_id</td>
            <td>Date</td>
            <td>Details</td>
            <td>Amount</td>
            </tr>
        </thead>
        <tbody style="max-height:500px;">
      
            <tr>
                <td><%=exp.getEx_id() %></td> 
            
                <td><%=exp.getDate() %></td>
            
                <td><%=exp.getDetails() %></td>
            
         		<td><%=exp.getAmount() %></td>

            </tr>  
         
        </tbody>
    </table>
    
    
             <%}%>
      </div>       
             
	
</body>
</html>