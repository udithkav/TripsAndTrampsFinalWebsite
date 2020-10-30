<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.HRM.Model.TourGuide" %> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Update Tour Guide</title>
    <link rel="stylesheet" href="HRM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="HRM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="HRM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="HRM/assets/css/footer.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="HRM/assets/css/NavigationBar.css">
    <link rel="stylesheet" href="HRM/assets/css/styles.css">
</head>

<body>
    <form method="post" style="background-color: rgb(217,217,217);">
        <div class="input-group">
            <div class="input-group-prepend"></div>
            <div class="input-group-append"></div>
        </div>
    </form><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
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
    <div class="contact-clean" style="margin-top: 0px;background-color: rgb(255,255,255);">
    <%TourGuide TG = (TourGuide)request.getAttribute("tourguide");%>
        <form method="post" action="TT05UpdateTGServlet" style="background-color: rgb(217,217,217);">
            <h2 class="text-center">&nbsp;Update Tour Guide</h2>
            <div class="form-group">
            <input class="form-control" type="text" name="fname" value="<%=TG.getFirstname() %>" style="margin-top: 0px;"><small class="form-text text-muted" style="font-size: 16px;">First Name</small>
            <input class="form-control" type="text" name="lname" value="<%=TG.getLastname() %>" style="margin-top: 30px;"><small class="form-text text-muted" style="font-size: 16px;">Last Name</small></div>
            <input class="form-control" type="text" name="province" value="<%=TG.getProvince() %>" style="margin-top: 30px;"><small class="form-text text-muted" style="font-size: 16px;">Province</small>
            <input class="form-control" type="date" name="dob" value="<%=TG.getDob() %>" style="margin-top: 30px;"><small class="form-text text-muted" style="font-size: 16px;">Date Of Birth</small>
            <input class="form-control" type="email" name="email" value="<%=TG.getEmail() %>" style="margin-top: 30px;" placeholder="Email"><small class="form-text text-muted" style="font-size: 16px;">Email</small>
            <input class="form-control" type="text" name="language" value="<%=TG.getLanguage() %>" style="margin-top: 30px;" placeholder="Email"><small class="form-text text-muted" style="font-size: 16px;">Language</small>
            <input class="form-control" type="text" name="nic" value="<%=TG.getNic() %>" style="margin-top: 30px;" placeholder="NIC"><small class="form-text text-muted" style="font-size: 16px;">National Identity Card No</small>    
            <input type="hidden" value="<%=TG.getApp_no() %>" name="tid">
            <button class="btn btn-primary" type="submit" style="margin-top: 50px;margin-left: 150px;font-size: 13px;background-color: rgb(86,221,38);">Update</button>
                    <div
                        class="input-group">
                        <div class="input-group-prepend"></div>
                        <div class="input-group-append"></div>
    		</div>
    </form>
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
                        <p><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We are
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