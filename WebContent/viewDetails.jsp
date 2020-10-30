<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List" %>
    <%@page import="com.TripsAndTramps.FinanceManagment.Model.expense" %>
    <%@page import="com.TripsAndTramps.FinanceManagment.Model.payment" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Employee DetailsChanged</title>
    <link rel="stylesheet" href="FM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="FM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="FM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="FM/assets/css/footer.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="FM/assets/css/NavigationBar.css">
    <link rel="stylesheet" href="FM/assets/css/styles.css">
</head>

<body style="width: 100%;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="FM/assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
               
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="">Finance</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="06ExpensesDetails.jsp">Add a Expense</a></div>
                </li>
               
               
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <div class="col-md-6" style="width: 597px;max-height: 500px;margin-left: 352px;margin-top: 41px;">
        <div style="width: 550px;">
            <ul class="nav nav-tabs" style="width: 586px;">
                <li class="nav-item"><a class="nav-link" role="tab" data-toggle="tab" href="#tab-1" style="width: 293px;background-color: #f8f7f6;">Income</a></li>
                <li class="nav-item"><a class="nav-link active" role="tab" data-toggle="tab" href="#tab-3" style="width: 293px;padding-right: px;background-color: #f8f7f6;">Expenses</a></li>
            </ul>
            <div class="tab-content" style="width: 586px;">
                <div class="tab-pane" role="tabpanel" id="tab-1" style="background-color: white;width: 586px;"><div class="card">
    <div class="card-body" style="max-height:500px;">
        <h4 class="card-title">Income Details</h4>
        <div class="table-responsive" style="max-height:500px;">
        
    <table class="table" style="max-height:500px;">
        <thead>
            <tr>
            <td>Payment Id</td>
            <td>Username</td>
            <td>Package Reservation Amount</td>
            <td>Room Reservation Amount</td>
            <td>Vehicle Reservation Amount</td>
            <td>Package Reservation Date</td>
            <td>Room Reservation Date</td>
            <td>Vehicle Reservation Date</td>
            </tr>
        </thead>
        <tbody>
        
          <%List<payment> p = (List<payment>)request.getAttribute("paymentdetails");
            for(payment pay:p){%>
            <tr>
                <td><%=pay.getPayment_id() %></td>
                <td><%=pay.getUsername() %></td>
                <td><%=pay.getPackage_Reservation() %></td>
                <td><%=pay.getRoom_Reservation() %></td>
                <td><%=pay.getVehicle_Reservation() %></td>
                <td><%=pay.getDateFor_PR() %></td>
                <td><%=pay.getDateFor_RR() %></td>
                <td><%=pay.getDateFor_VR() %></td>
            </tr>
            <%} %>
            
        </tbody>
    </table>
</div><!--<button class="btn btn-primary" type="button"style="height: 30px;width: 80px; padding: 0px;">View</button>--></div>
</div></div>
                <div class="tab-pane active" role="tabpanel" id="tab-3" style="background-color: white;"><div class="card">
    <div class="card-body" style="max-height:500px;">
        <h4 class="card-title"> Expense Details</h4>
        <div class="table-responsive" style="max-height:500px;">
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
        <%List<expense> i = (List<expense>)request.getAttribute("expensesdetails");
            for(expense exp:i){%>
            <tr>
                <td><%=exp.getEx_id() %></td> 
            
                <td><%=exp.getDate() %></td>
            
                <td><%=exp.getDetails() %></td>
            
         		<td><%=exp.getAmount() %></td>

            	<td><form method="POST" action="ToExpenseUpdateServlet"><input type="hidden"  name="Ex_id" value="<%=exp.getEx_id()%>"><button class="btn btn-primary"  type="submit">UPDATE</button></form></td>
            	<td><form method="POST" action="DeleteExpenseServlet"><input type="hidden" name="Ex_id" value="<%=exp.getEx_id()%>"><button class="btn btn-primary" type="submit">DELETE</button></form></td>
             </tr>  
          
             <%} %>
             
             
        </tbody>
    </table>
    
    
</div><!--<button class="btn btn-primary" type="button"style="height: 30px;width: 80px; padding: 0px;">View</button>--></div>
</div></div>
            </div>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    
            <form  action="FinancialReport.jsp"  method="post">
            <input type="text" name="month" placeholder="Enter the Month.." style="margin-left: 800px;height:33px;">
            <button class="btn btn-primary" type="submit" style="margin-left: 1000px;margin-top:-60px;">Generate Report</button></form>
    
    	
    		 <form  action="SearchExpense.jsp"  method="post">
            <input type="text" name="date1" placeholder="Enter the Date.." style="margin-left: 800px;height:33px;">
            <button class="btn btn-primary" type="submit" style="margin-left: 1000px;margin-top:-60px;">Search</button></form>
    
      

    <div class="footer-dark" style="margin-top:50px;">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Address</h3>
                        <ul>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                        <p><br>No. 248/2, Vihara Mawatha, Hunupitiya, Wattala<br><br></p>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Contact</h3>
                        <ul>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                        <p><br> Email: info@ceylontripsandtramps.com&nbsp;<br>Phone: +94 76 527 3911<br><br></p>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>Ceylon Trips and Tramps</h3>
                        <p><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We’re
                            in the business of making your travel arrangements <br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Ceylon Trips and Tramps © 2020</p>
            </div>
        </footer>
   </div>
    <script src="FM/assets/js/jquery.min.js"></script>
    <script src="FM/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>