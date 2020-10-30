<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.HRM.Model.Employeee" %>
	<%@page import="com.TripsAndTramps.HRM.Model.TourGuide" %>    
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html style="margin-top: 0px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Employee Details</title>
    <link rel="stylesheet" href="HRM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="HRM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="HRM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="HRM/assets/css/footer.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="HRM/assets/css/NavigationBar.css">
    <link rel="stylesheet" href="HRM/assets/css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>

<body>
    <ul class="nav nav-tabs">
        <li class="nav-item"></li>
        <li class="nav-item"></li>
        <li class="nav-item"></li>
    </ul><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="HRM/assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Employee</a>
                <div role="menu" class="dropdown-menu">
                	<a role="presentation" class="dropdown-item" href="05AddPermanentEmployee.jsp">Add a Permanent Employee</a>
                    <a role="presentation" class="dropdown-item" href="05AddTemporaryEmployee.jsp">Add a Temporary Employee</a>
                    <a role="presentation" class="dropdown-item" href="<%=request.getContextPath()%>/TT05RetrieveEmployeesFromNavigation">Employee Details</a>
                    <a role="presentation" class="dropdown-item" href="<%=request.getContextPath()%>/TurnOverNavigationView">Turnover Employee List</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Tour Guide</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="<%=request.getContextPath()%>/ViewTGApplicationNavigationBar">View Tourguide Application</a></div>
                </li>
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <form action ="PermanentEmpReport.jsp" method="POST">
    <button class="btn btn-primary" type="submit" style="background-color:rgb(86,221,38); margin-left: 1180px; margin-top:50px;">Generate Report</button>
    </form>
    <h5 class="text-center" style="margin-top: 10px;">Permanent Employee Details&nbsp;</h5>
    <div class="table-responsive" style="padding: 100px;padding-top: 25px;">
        <table class="table" id="supp">
            <thead class="text-center">
                <tr>
                    <th>P_EID</th>
                    <th>Fname</th>
                    <th>Lname</th>
                    <th>Salary</th>
                    <th>Position</th>
                    <th>DOB</th>
                    <th>Email</th>
                    <th>NIC</th>
                    <th style="padding: 12px;width: 300px;"><input type="text" id="myInput1" onkeyup="myFunction()" placeholder="Search Position.." title="Type in a name"><button class="btn btn-primary" type="button" style="height: 35px;margin-left: 5PX;margin-bottom: 5PX;">Search</button></th>
                </tr>
            </thead>
            <tbody>
            <%List<Employeee> PE = (List<Employeee>)request.getAttribute("permanentemployee"); 
            	for(Employeee emp:PE){%>
                <tr>
                    <td><%=emp.getEid()%></td>
                    <td><%=emp.getFirstname()%></td>
                    <td><%=emp.getLastname()%></td>
                    <td><%=emp.getSalary()%></td>
                    <td><%=emp.getPosition()%></td>
                    <td><%=emp.getDob()%></td>
                    <td><%=emp.getEmail()%></td>
                    <td><%=emp.getNic()%></td>
                    <td><form method="POST" action="TT05PermanentEmployeeUpdate"><input type="hidden" value="<%=emp.getEid()%>" name="pid"><button class="btn btn-primary border rounded-0" type="submit" style="background-color: rgb(86,221,38);opacity: 1;">Update</button></form>
                    	<form method="POST" action="TT05DeletePermanentEmployeeServlet"><input type="hidden" value="<%=emp.getEid()%>" name="pid"><button class="btn btn-primary" type="submit" style="padding-bottom: 8px;margin-left: 180px; background-color: rgb(255,31,16);">Delete</button></form></td>
                </tr>
                <%} %>
                <tr></tr>
            </tbody>
        </table>
    </div>
    
    
        <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  filter = input.value.toUpperCase();
  table = document.getElementById("supp");
  tr = table.getElementsByTagName("tr");
  
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[4];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
    
    
    <form action ="TemporaryEmployeeReport.jsp" method="POST">
    <button class="btn btn-primary" type="submit" style="background-color:rgb(86,221,38); margin-left: 1180px; margin-top:50px;">Generate Report</button>
    </form>
    <h5 class="text-center" style="margin-top: 0px;">Temporary Employee Details&nbsp;</h5>
    <div class="table-responsive" style="padding: 100px;padding-top: 25px;margin-top: 0px;">
        <table class="table" id="supp1">
            <thead class="text-center">
                <tr>
                    <th>T_EID</th>
                    <th>Fname</th>
                    <th>Lname</th>
                    <th>Salary</th>
                    <th>Position</th>
                    <th>DOB</th>
                    <th>Email</th>
                    <th>NIC</th>
                    <th style="width: 300px;"><input type="text" id="myInput2" onkeyup="myFunction1()" placeholder="Search Position.." title="Type in a name"><button class="btn btn-primary" type="button" style="height: 35px;margin-bottom: 5PX;margin-left: 5PX;">Search</button></th>
                </tr>
            </thead>
            <tbody>
            <%List<Employeee> TE = (List<Employeee>)request.getAttribute("temporaryemployee");
            for(Employeee emp:TE){%>
                <tr>
                    <td><%=emp.getEid()%></td>
                    <td><%=emp.getFirstname()%></td>
                    <td><%=emp.getLastname()%></td>
                    <td><%=emp.getSalary()%></td>
                    <td><%=emp.getPosition()%></td>
                    <td><%=emp.getDob()%></td>
                    <td><%=emp.getEmail()%></td>
                    <td><%=emp.getNic()%></td>
                    <td><form method="POST" action="TT05TemporaryEmployeeUpdate"><input type="hidden" value="<%=emp.getEid()%>" name="tid"><button class="btn btn-primary" type="submit" style="background-color:rgb(86,221,38);">Update</button></form>
                   	<form method="POST" action="TT05DeleteTemporaryEmployeeServlet"><input type="hidden" value="<%=emp.getEid()%>" name="tid"><button class="btn btn-primary" type="submit" style="padding-bottom: 8px;margin-left: 180px;background-color: rgb(255,31,16);">Delete</button></form></td>
                    
                </tr>
                <%} %>
                <tr></tr>
            </tbody>
        </table>
    </div>
    
<script>
    
function myFunction1() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput2");
  filter = input.value.toUpperCase();
  table = document.getElementById("supp1");
  tr = table.getElementsByTagName("tr");
  
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[4];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

</script>    
    
    
    
    <form action ="TourGuideReport.jsp" method="POST">
    <button class="btn btn-primary" type="submit" style="background-color:rgb(86,221,38); margin-left: 1180px; margin-top:50px;">Generate Report</button>
    </form>
     <h5 class="text-center" style="margin-top: 0px;">Tour Guide Details</h5>
    <div class="table-responsive" style="padding: 100px;padding-top: 25px;margin-top: 0px;">
        <table class="table" id="supp2">
            <thead class="text-center">
                <tr>
                    <th>TG_EID</th>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Email</th>
                    <th>Date of Birth</th>
                    <th>Languages</th>
                    <th>Province</th>
                    <th>NIC</th>
                    <th style="width: 300px;"><input type="text" id="myInput3" onkeyup="myFunction2()" placeholder="Search Area Of Guide.." title="Type in a name"><button class="btn btn-primary" type="button" style="height: 35px;margin-bottom: 5PX;margin-left: 5PX;">Search</button></th>
                </tr>
            </thead>
            <tbody>
            <%List<TourGuide> TG = (List<TourGuide>)request.getAttribute("tourguide");
            for(TourGuide tg:TG){%>
                <tr>
                    <td><%=tg.getApp_no() %></td>
                    <td><%=tg.getFirstname() %></td>
                    <td><%=tg.getLastname() %></td>
                    <td><%=tg.getEmail() %></td>
                    <td><%=tg.getDob() %></td>
                    <td><%=tg.getLanguage() %></td>
                    <td><%=tg.getProvince() %></td>
                    <td><%=tg.getNic() %></td>
                    <td>
                    	<form action="TT05UpdateTourGuideServlet" method="POST"><input type="hidden" value="<%=tg.getApp_no() %>" name="tid"><button class="btn btn-primary" type="submit" style="background-color: rgb(86,221,38);">Update</button></form>
                    	<form action="TT05DeleteTourGuideServlet" method="POST"><input type="hidden" value="<%=tg.getApp_no() %>" name="tid"><button class="btn btn-primary" type="submit" style="padding-bottom: 8px;margin-left: 180px;background-color: rgb(255,31,16);">Delete</button></form>
                    </td>
                </tr>
                <% } %>
                <tr></tr>
            </tbody>
        </table>
    </div>
    

    <script>
    
function myFunction2() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput3");
  filter = input.value.toUpperCase();
  table = document.getElementById("supp2");
  tr = table.getElementsByTagName("tr");
  
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[6];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}

</script> 
   
    
    <form action="TT05ToTourguideReviewPageServlet" method="POST"><input type="Submit" style="margin-left:72%;margin-top:0px;margin-bottom:20px;" class="btn btn-outline-dark" value="View Pending Application of Tour Guides"></form>
    <br><br><br>
    <div class="footer-dark">
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
                        <p><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We're
                            in the business of making your travel arrangements <br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Ceylon Trips and Tramps © 2020</p>
            </div>
        </footer>
    </div>
    <script src="HRM/assets/js/jquery.min.js"></script>
    <script src="HRM/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>