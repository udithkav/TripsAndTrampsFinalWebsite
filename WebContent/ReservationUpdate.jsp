<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.PC.Model.TourGuideReservation" %>
    <%@page import="java.util.List" %>
    <%@page import="java.sql.Date" %>
<!DOCTYPE html>
<html>

<meta charset="ISO-8859-1">
<title>Insert title here</title>


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

<body style="background-image: url(TourGuideReservation/img/iii.jpg);background-size: 110%;background-repeat: no-repeat;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
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
    
   <% List<TourGuideReservation> tgr = (List<TourGuideReservation>)request.getAttribute("ReservationDetails");
    for(TourGuideReservation TGR:tgr){%>
  
  <form action="AfterUpdateServlet" method="POST">
    <h4 style="color: white;max-width: 206px;position: absolute;left: 38%;top: 174px;">Package Name</h4>
    <h4 style="color: white;max-width: 206px;position: absolute;left: 56%;top: 174px;">:<%=TGR.getAname() %></h4>
    <h4 style="color: white;max-width: 200px;position: absolute;left: 38%;top: 221px;">Tour Guide Name</h4>
    <h4 style="color: white;max-width: 200px;position: absolute;left: 56%;top: 219px;">:<%=TGR.getTgname() %></h4>
    <h4 style="color: white;max-width: 210px;position: absolute;top: 269px;left: 38%;">Amount for Day</h4>
    <h4 style="color: white;max-width: 210px;position: absolute;top: 269px;left: 56%;">:<%=TGR.getAmountforday() %></h4>
    <h4 style="color: white;max-width: 283px;position: absolute;left: 56%;top: 320px;">:<%=TGR.getLocat() %></h4>
    <h4 style="color: white;max-width: 263px;position: absolute;left: 38%;top: 315px;">Location</h4>
    <h4 style="color: white;max-width: 263px;position: absolute;left: 38%;top: 363px;">Time Period</h4>
    <h4 style="color: white;max-width: 403px;position: absolute;left: 56%;top: 367px;">: from </h4>
    <input type="Date" name="fromm" value="<%=TGR.getFromm()%>" style="position: absolute;right: 45%;top: 415px;width: 275px;" > 
    <h4 style="color: white;max-width: 403px;position: absolute;left: 56%;top: 415px;">to</h4>
    <input type="Date" name="too" value="<%=TGR.getToo()%>" style="position: absolute;right: 21.5%;top: 415px;width: 275px;">
    <input type="hidden" name="rid" value="<%=TGR.getId()%>"><input type="hidden" name="amountforday" value="<%=TGR.getAmountforday()%>"><button class="btn btn-primary" type="submit" style="position: absolute;left: 38%;top: 459px;width: 275px;">Update</button></form>
    
   <%} %>
           
    <div class="footer-dark" style="background-color: #282d32;margin-top: 430px;">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color: #f0f9ff;">Address</h3>
                        <ul style="color: #f0f9ff;"></ul>
                        <p style="color: #f0f9ff;"><br>No. 248/2, Vihara Mawatha, Hunupitiya, Wattala<br><br></p>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color: #f0f9ff;">Contact</h3>
                        <ul>
                            <li><a href="#" style="color: #f0f9ff;">Contact Us</a></li>
                        </ul>
                        <p style="color: #f0f9ff;"><br> Email: info@ceylontripsandtramps.com&nbsp;<br>Phone: +94 76 527 3911<br><br></p>
                    </div>
                    <div class="col-md-6 item text">
                        <h3 style="color: #f0f9ff;">Ceylon Trips and Tramps</h3>
                        <p style="color: #f0f9ff;"><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We are
                            in the business of making your travel arrangements <br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook" style="margin-left: 400px;"></i></a><a href="#"><i class="icon ion-social-twitter" style="margin-left: 10px;"></i></a><a href="#"><i class="icon ion-social-snapchat" style="margin-left: 10px;"></i></a>
                        <a
                            href="#"><i class="icon ion-social-instagram" style="margin-left: 10px;"></i></a>
                    </div>
                </div>
                <p class="copyright" style="color: #f0f9ff;">Ceylon Trips and Tramps © 2020</p>
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