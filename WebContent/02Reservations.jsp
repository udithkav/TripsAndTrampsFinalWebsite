<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle_Reservation"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html style="height: 900px;">

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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
</head>

<body style="width: 100%;background-image: linear-gradient(to bottom right, #24478f,#000033);height: 952px;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
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
    </div>
</nav>
	
    <h3 class="Header" style="padding: 7px;color: rgb(80,167,255);margin-top: 15px;">Reserved Vehicle</h3>

	
	<%Vehicle_Reservation r = (Vehicle_Reservation)request.getAttribute("reservation");%>
		<div style="max-width:70%; max-height:100%; margin-left:15%; margin-top:10px; position:relative;">
		
			<img  src="VehicleReservation/img/car_01.jpg" style="position:absolute; max-height: 300px; max-width: 45%; border-style: outset;border-radius: 22px;"">
			<h4 style="color: white;max-width: 200px;position: absolute;left: 45%;top: 10px;">Vehicle Brand</h4>
			<h4 style="color: white;max-width: 206px;position: absolute;left: 63%;top: 10px;">: <%=r.getVehicle_brand() %></h4>
			<h4 style="color: white;max-width: 200px;position: absolute;left: 45%;top: 50px;">Model</h4>
			<h4 style="color: white;max-width: 200px;position: absolute;left: 63%;top: 50px;">: <%=r.getModel() %></h4>
			<h4 style="color: white;max-width: 210px;position: absolute;top: 90px;left: 45%;">Vehicle Number</h4>
			<h4 style="color: white;max-width: 210px;position: absolute;top: 90px;left: 63%;">: <%=r.getVehicle_num()%></h4>
			<h4 style="color: white;max-width: 263px;position: absolute;left: 63%;top: 130px;">: Rs.<%=r.getAmount()%></h4>
			<h4 style="color: white;max-width: 263px;position: absolute;left: 45%;top: 130px;">Total Amount</h4>
			<h4 style="color: white;max-width: 263px;position: absolute;left: 45%;top: 170px;">Time Period</h4>
			<h4 style="color: white;max-width: 263px;position: absolute;left: 63%;top: 170px;">: From <%=r.getFrom() %><br>: To <%=r.getTo() %></h4>
			<form action="ToUpdateVehicleReservationServlet" method="POST"><input type="hidden" value="<%=r.getrID()%>" name="rid"><button class="btn btn-primary" type="submit" style="position: absolute;left: 45%;top: 250px;width: 200px;">Update</button></form>
			<form method="POST" action="DeleteVehicleReservationServlet"><input type="hidden" value="<%=r.getrID()%>" name="rid"><input type="hidden" value="<%=r.getVehicle_num()%>" name="vid"><input type="hidden" value="<%=r.getVehicle_num()%>" name="vnumber"><button class="btn btn-primary" type="submit" style="position: absolute;left: 65%;top: 250px;width: 200px;">Delete</button></form>
			
		</div>	
<div style="margin-top:320px; margin-left:46.5%;">
<form action="02GenerateReport.jsp" method="POST"><input type="hidden" value="<%=r.getrID()%>" name="rid"><input type="submit" value="Generate Report" class="btn btn-outline-info" style="width:410px;"></form>
</div>

    <div class="footer-dark" style="margin-top: 20px;">
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
                        <p><br>Our passion is traveling! We believe in providing a personal touch&nbsp;<br>beyond just making your reservations. All our agents have traveled&nbsp;<br>extensively and have first-hand knowledge of the destinations we book&nbsp;<br>for.
                            We are in the business of making your travel arrangements&nbsp;<br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Ceylon Trips and Tramps © 2020</p>
            </div>
        </footer>
    </div>
 
    <script
        src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>