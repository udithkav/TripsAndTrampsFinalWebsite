<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Temporary_Employee" %>
    <%@page import="model.Work_assign"%>
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>shahani</title>
    <link rel="stylesheet" href="workflowmanager/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="workflowmanager/fonts/ionicons.min.css">
    <link rel="stylesheet" href="workflowmanager/css/Article-Dual-Column.css">
    <link rel="stylesheet" href="workflowmanager/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="workflowmanager/css/footer.css">
    <link rel="stylesheet" href="workflowmanager/css/navigation.css">
    <link rel="stylesheet" href="workflowmanager/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="workflowmanager/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="workflowmanager/img/New%20Folder/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Employee</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Add a Permenant Employee</a><a role="presentation" class="dropdown-item" href="#">Add a Temporary Employee</a><a role="presentation" class="dropdown-item" href="#">Employee Details</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Tour Guide</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">View Tourguide Application</a></div>
                </li>
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>

<%

List temp1=(List<Temporary_Employee>) session.getAttribute("emp");

if(temp1==null){

%>
    <h3 style="position: absolute;left: 37%;margin-top: 50px;">Temporary Employees </h3>
    <form method="POST" action="filterservlet">
    <button class="btn btn-primary" type="Submit" style="position: absolute;left: 53%;top: 145px;height: 31px;width: 89px;padding: 0px;margin-top: 70px;">
   Filter</button>
    <input type="hidden" name="assigned" value=<%=request.getAttribute("assigned") %>>
    <input type="search" style="position: absolute;left: 39%;top: 144px;margin-top: 70px;"
        placeholder="Enter Temporary employee id  to filter.."name="searchEmp" required>
        
        </form>
        <form method="POST" action="DisplayDetails">
        
        <button type="submit">View All </button>
        
        </form>
    <div class="table-responsive" style="max-width:60%; margin-left:19%; padding: 100px;padding-top: 25px;top: 102px;margin-top: 152px;">
        <table class="table">
            <thead>
                <tr>
                    <th>Emp ID</th>
                    <th>Name</th>
                    <th>Job</th>
                    <th style="width: 300px;"></th>
                </tr>
            </thead>
            <tbody>
              <% List<Temporary_Employee> A = (List<Temporary_Employee>)request.getAttribute("employees");
              		for(Temporary_Employee work:A){%>
                <tr>
                     <td><%=work.getTid() %>                
                    <td><%=work.getFname() + " " + work.getLname()%></td>
                    <td><%=work.getPosition()%></td>
                    <td>
                        <div class="btn-group" role="group"><form method="POST" action="AssignWorkersServlet"><input type="hidden" value="<%=work.getTid()%>" name="tid"><button class="btn btn-primary" type="submit" style="margin-left: 100px;">Assign</button></form></div>
                    </td>
                </tr>
                <% } %>
                <tr></tr>
            </tbody>
        </table>
    </div>
    
    
    <h2 style="margin-left: 38%;">Assigned Workers</h2>
    <form method="POST" action="Report.jsp">
    
    <input type="submit" value="Generate Report">
    </form>
    
     <div class="table-responsive" style="max-width:60%; margin-left:19%; padding: 100px;padding-top: 25px;top: 0px;margin-top: 0px;">
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Job</th>
                    <th>Location</th>
                    <th style="width: 300px;"></th>
                </tr>
            </thead>
            <tbody>
              <%List<Work_assign> B = (List<Work_assign>)request.getAttribute("assigned"); 
              for(Work_assign emp:B){%>
                <tr>
                    <td><%=emp.getName()%></td>
                    <td><%=emp.getJob()%></td>
                    <td><%=emp.getLocation()%></td>
                    <td>
                        <div class="btn-group" role="group">
                        <form method="POST" action="TT08UpdateAssignedWorkers"><input type="hidden" value="<%=emp.getWorkID()%>" name="wid"><button class="btn btn-primary" type="submit">Update</button></form>
                        <form method="POST" action="TT08deletework"><input type="hidden" value="<%=emp.getWorkID()%>" name="wid"><input type="hidden" value="<%=emp.getTid()%>" name="tid"><button class="btn btn-primary" type="submit" style="margin-left: 100px;">Delete</button></form>
                        </div>
                    </td>
                </tr>
                <% } %>
                <tr></tr>
            </tbody>
        </table>
    </div>
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
    <script src="workflow manager/js/jquery.min.js"></script>
    <script src="workflow manager/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
    
    <%}else{ %>
     
    
    <h3 style="position: absolute;left: 37%;margin-top: 50px;">Temporary Employees </h3>
    <form method="POST" action="filterservlet">
    <button class="btn btn-primary" type="Submit" style="position: absolute;left: 53%;top: 145px;height: 31px;width: 89px;padding: 0px;margin-top: 70px;">
   Filter</button>
   <input type="hidden" name="assigned" value=<%=request.getAttribute("assigned") %>>
    <input type="search" style="position: absolute;left: 39%;top: 144px;margin-top: 70px;"
        placeholder="Enter Temporary employee id  to filter.."name="searchEmp"required>
        
         </form>
        <form method="POST" action="DisplayDetails">
        
        <button type="submit">View All </button>
        
    <div class="table-responsive" style="max-width:60%; margin-left:19%; padding: 100px;padding-top: 25px;top: 102px;margin-top: 152px;">
        <table class="table">
            <thead>
                <tr>
                
                    <th>Emp ID</th>
                    <th>Name</th>
                    <th>Job</th>
                    <th style="width: 300px;"></th>
                </tr>
            </thead>
            <tbody>
            
              <% List<Temporary_Employee> A = (List<Temporary_Employee>)temp1;
              if(temp1.size()==0){
            	  
              
              %>
              <t>
              <td>This id no is not available or Already assigned!!..........</td>
              </tr>
              
              <%}
              		for(Temporary_Employee work:A){%>
                <tr>
                <td><%=work.getTid() %></td>
                    <td><%=work.getFname() + " " + work.getLname()%></td>
                    <td><%=work.getPosition()%></td>
                    <td>
                        <div class="btn-group" role="group"><form method="POST" action="AssignWorkersServlet"><input type="hidden" value="<%=work.getTid()%>" name="tid"><button class="btn btn-primary" type="submit" style="margin-left: 100px;">Assign</button></form></div>
                    </td>
                </tr>
                <% } %>
                <tr></tr>
            </tbody>
        </table>
    </div>
    
    
    <h2 style="margin-left: 38%;">Assigned Workers</h2>
    <form method="POST" action="Report.jsp">
    
    <input type="submit" value="Generate Report">
    </form>
    
     <div class="table-responsive" style="max-width:60%; margin-left:19%; padding: 100px;padding-top: 25px;top: 0px;margin-top: 0px;">
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Job</th>
                    <th>Location</th>
                    <th style="width: 300px;"></th>
                </tr>
            </thead>
            <tbody>
              <%List<Work_assign> B = (List<Work_assign>)request.getAttribute("assigned"); 
              for(Work_assign emp:B){%>
                <tr>
                    <td><%=emp.getName()%></td>
                    <td><%=emp.getJob()%></td>
                    <td><%=emp.getLocation()%></td>
                    <td>
                        <div class="btn-group" role="group">
                        <form method="POST" action="TT08UpdateAssignedWorkers"><input type="hidden" value="<%=emp.getWorkID()%>" name="wid"><button class="btn btn-primary" type="submit">Update</button></form>
                        <form method="POST" action="TT08deletework"><input type="hidden" value="<%=emp.getWorkID()%>" name="wid"><input type="hidden" value="<%=emp.getTid()%>" name="tid"><button class="btn btn-primary" type="submit" style="margin-left: 100px;">Delete</button></form>
                        </div>
                    </td>
                </tr>
                <% } %>
                <tr></tr>
            </tbody>
        </table>
    </div>
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
    <script src="workflow manager/js/jquery.min.js"></script>
    <script src="workflow manager/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
    
   <%
   session.removeAttribute("emp");
    }
   %> 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     
    
    
    
    