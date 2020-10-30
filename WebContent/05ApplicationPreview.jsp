<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.HRM.Model.TourGuide"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Application Preview</title>
    <link rel="stylesheet" href="HRM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="HRM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="HRM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="HRM/assets/css/footer.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="HRM/assets/css/NavigationBar.css">
    <link rel="stylesheet" href="HRM/assets/css/styles.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
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
    <%TourGuide TG = (TourGuide)request.getAttribute("TG");%>
        <form method="GET" style="background-color: rgb(217,217,217);">
            <h2 class="text-center" style="font-size: 22px;">Recruitment Application Preview</h2>
            <div class="form-group"><input class="form-control" type="text" name="name" value="<%=TG.getFirstname() %>" style="margin-top: 0px;" disabled><small class="form-text text-muted" style="font-size: 16px;">First Name</small>
            <input class="form-control" type="text" name="name" style="margin-top: 30px;" value="<%=TG.getLastname() %>" disabled><small class="form-text text-muted" style="font-size: 16px;">Last Name</small></div>
            <input class="form-control" type="date" style="margin-top: 30px;" value="<%=TG.getDob() %>" disabled><small class="form-text text-muted" style="font-size: 16px;">Date Of Birth</small>
            	<input class="form-control" type="email" style="margin-top: 30px;" value="<%=TG.getEmail() %>" disabled><small class="form-text text-muted" style="font-size: 16px;">Email</small>
            	<input class="form-control" type="text" style="margin-top: 30px;" value="<%=TG.getProvince() %>" disabled><small class="form-text text-muted" style="font-size: 16px;">Specialized Province</small>
                <input class="form-control" type="text" style="margin-top: 30px;" value="<%=TG.getLanguage() %>" disabled><small class="form-text text-left text-muted" style="font-size: 16px;margin-top: 0px;">(Preferred Language)</small>
                <input class="form-control" type="text" style="margin-top: 50px;" value="<%=TG.getNic() %>" disabled><small class="form-text text-muted" style="font-size: 16px;">National Identity Card No</small>
                </form>
                </div>
                <form method="POST" action="TT05DeleteFromTempTableServlet"><input type="hidden" value="<%=TG.getApp_no() %>" name="tid"><button class="btn btn-outline-danger" type="submit" style="position:absolute; margin-top: -30px; margin-left: 38%;">DECLINE</button></form>
                <form method="POST" action="TT05InsertIntoPermTourGuideServlet"><input type="hidden" value="<%=TG.getApp_no() %>" name="tid"><button class="btn btn-outline-success" type="submit" style="position:absolute; margin-left: 56%;margin-top: -30px;">ACCEPT</button></form>
                
                
    
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