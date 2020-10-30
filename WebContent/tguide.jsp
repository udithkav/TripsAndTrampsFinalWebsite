<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.PC.Model.Packageee" %>
    <%@page import="java.util.List" %>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>tguide</title>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Employee Details</title>
    <link rel="stylesheet" href="TourGuideReservation/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="TourGuideReservation/fonts/ionicons.min.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Contact-Form-Clean-1.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="TourGuideReservation/css/footer.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="TourGuideReservation/css/styles.css">
</head>

<body style="background-image: url(TourGuideReservation/img/Imdaadh.jpg);background-size: 100%;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="TourGuideReservation/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Reservation</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Reserve a Room</a><a role="presentation" class="dropdown-item" href="#">Reserve a Vehicle</a><a role="presentation" class="dropdown-item" href="PackageConfirmation.jsp">Reserve a Package</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Contact Us</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Feedback</a><a role="presentation" class="dropdown-item" href="#">General Inquiry</a></div>
                </li>
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">View Room Reservation</a><a role="presentation" class="dropdown-item" href="#">View Vehicle Reservation</a><a role="presentation" class="dropdown-item" href="#">View Package Reservation</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <div class="form-group" style="width: 750px;height: 750px;margin-left: 350px;"><label style="margin-left: 180px;margin-top: 35px;font-size: 30px;background-color: #093674;color: white;"><strong>Package Details</strong></label>
        <div class="table-responsive" style="margin-top: 40px;background-image: url(TourGuideReservation/img/index_1.jpg);">
            <table class="table">
                <thead>
                <% int i=1; %>
                <% List<Packageee> pack = (List<Packageee>)request.getAttribute("packageD"); 
                for(Packageee p:pack){%>
                    <tr>
                      <th style="color: white;background-image: url(TourGuideReservation/img/s.jpg);background-size: 100%;"><br>PACKAGE <%=i%> <br><br><form method="POST" action="ViewTourGuideServlet"><input type="hidden" value="<%=p.getpID() %>" name="pid"><button class="btn btn-primary" type="submit">VIEW DETAILS</button></form></th>
                    </tr>
                    <%i++;} %>
                </thead>
            </table>
        </div>
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
    <script src="TourGuideReservation/js/jquery.min.js"></script>
    <script src="TourGuideReservation/bootstrap/js/bootstrap.min.js"></script>
<!--
<%/*if(session.getAttribute("type")==null){
  response.sendRedirect("login.jsp");
}*/%>-->

</body>

</html>