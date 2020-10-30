<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle"%> 
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html style="width: 100%;background-image: linear-gradient(to bottom right, #24478f,#000033);background-repeat: no-repeat;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Malindu</title>
    <link rel="stylesheet" href="VehicleReservation/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="VehicleReservation/fonts/ionicons.min.css">
    <link rel="stylesheet" href="VehicleReservation/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="VehicleReservation/css/Footer-Dark.css">
    <link rel="stylesheet" href="VehicleReservation/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="VehicleReservation/css/styles.css">
</head>

<body style="width: 100%;height: 1235px;background-image: linear-gradient(to bottom right, #24478f,#000033);background-repeat: no-repeat;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="VehicleReservation/img/icon.jpg" style="width:71px; height:63px; padding-right:8px;"/><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Gallery</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Reservation</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Reserve a Room</a><a role="presentation" class="dropdown-item" href="<%=request.getContextPath()%>/ToVehicleReservationPageServlet">Reserve a Vehicle</a><a role="presentation" class="dropdown-item" href="#">Reserve a Tour Guide</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Contact Us</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Complaint</a><a role="presentation" class="dropdown-item" href="#">Feedback</a><a role="presentation" class="dropdown-item" href="#">General Inquiry</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">View Profile</a><a role="presentation" class="dropdown-item active" href="#">View Room Reservations</a><a role="presentation" class="dropdown-item" href="<%=request.getContextPath()%>/DisplayVehicleReservationsFromNavigation">View Vehicle Reservations</a><a role="presentation" class="dropdown-item" href="#">View Tour Guide Reservations</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div> </ul>
    </div>
    </div>
</nav>
	<% String vnumber; %>
    <h3 class="Header" style="padding: 7px;color: rgb(80,167,255);margin-top: 10px;">Vehicle Details</h3><img style="position: absolute;width: 52%;height: 557px;left: 3%;border-style: outset;border-radius: 22px;" src="VehicleReservation/img/car_01.jpg">
    <h4 style="margin-top: 581px;color: white;width: 300px;margin-left: 24%;">Image of Vehicle</h4>
    <%List<Vehicle> vehicle = (List<Vehicle>)request.getAttribute("data"); 
     			for(Vehicle v:vehicle){%>
    <h3 style="color: white;max-width: 206px;position: absolute;left: 57%;top: 174px;">Model</h3><h3 style="width: 350px;position: absolute;color: white;font-size: 20px;left: 75%;top: 184px;">: <%=v.getModel()%></h3><h3 style="width: 350px;position: absolute;color: white;font-size: 20px;top: 242px;left: 75%;">: <%=v.getVehcleBrand()%></h3>
    <h3 style="color: white;max-width: 200px;position: absolute;left: 57%;top: 236px;">Vehicle Brand</h3>
        <h3 style="color: white;max-width: 210px;position: absolute;top: 300px;left: 57%;">Vehicle Number</h3><h3 style="width: 350px;position: absolute;color: white;font-size: 20px;left: 75%;top: 307px;">: <%=v.getVehicleNumber()%></h3>
        <h3 style="color: white;max-width: 263px;position: absolute;left: 57%;top: 361px;">Amount For Kilometer</h3><h3 style="width: 350px;position: absolute;font-size: 20px;color: white;left: 75%;top: 371px;">: <%=v.getAmount()%></h3>
        
        
        <form method="POST" action="GetVehicleDetailsServletFromPackage"><input type="hidden" value="<%=v.getVehicleType()%>" name="vehicle_type"><input type="hidden" value="<%=v.getVehcleBrand()%>" name="vehicle_brand"><button class="btn btn-primary" type="submit" style="position: absolute;left: 58%;top: 663px;width: 275px;">Back</button></form>
        <form method="POST" action="ToConfirmationServletFromPackage"><input type="hidden" value="<%=v.getVehicleNumber()%>" name="vehicle_number"><input type="hidden" value="<%=v.getAmount()%>" name="amount"><button class="btn btn-primary" type="submit" style="position: absolute;left: 80%;top: 663px;width: 275px;">Confirm</button></form>
            <div class="footer-dark" style="margin-top: 74px;">
         <%}%>       
                <footer>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-6 col-md-3 item">
                                <h3>Adresses</h3>
                                <ul>
                                    <li><a href="#"><br>No. 248/2, Vihara Mawatha, Hunupitiya, Wattala<br><br><br></a></li>
                                    <li></li>
                                </ul>
                            </div>
                            <div class="col-sm-6 col-md-3 item">
                                <h3>Contact</h3>
                                <ul>
                                    <li><a href="#">Contact US</a></li>
                                    <li><a href="#"><br>Email: info@ceylontripsandtramps.com&nbsp;<br>Phone: +94 76 527 3911<br><br></a></li>
                                    <li></li>
                                </ul>
                            </div>
                            <div class="col-md-6 item text">
                                <h3>Ceylon Trips and Tramps</h3>
                                <p><br>Our passion is traveling! We believe in providing a personal touch&nbsp;<br>beyond just making your reservations. All our agents have traveled&nbsp;<br>extensively and have first-hand knowledge of the destinations we
                                    book&nbsp;<br>for. We are in the business of making your travel arrangements&nbsp;<br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                            </div>
                            <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                        </div>
                        <p class="copyright">Ceylon Trips and Tramps © 2020</p>
                    </div>
                </footer>
            </div>
            <script src="VehicleReservation/js/jquery.min.js"></script>
            <script src="VehicleReservation/bootstrap/js/bootstrap.min.js"></script>
<!--<%/*if(session.getAttribute("type")==null){
  response.sendRedirect("login.jsp");
}*/%>-->
</body>

</html>