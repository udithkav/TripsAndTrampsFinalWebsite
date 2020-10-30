<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

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

<body style="width: 100%;background-image: linear-gradient(to bottom right, #24478f,#000033);height: 1033px;background-repeat: no-repeat;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
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
    <div style="margin-top: 100px; margin-left:15%; max-width: 70%; max-height:400px; border-style: outset; border-color: #ff3333;">
	<h1 style="padding:90px; color: #ff3333; text-shadow: 2px 2px Black;">Oops ! <br> You Can't Reserve more Vehicles.You Can only have Two Reservations</h1>
	<input type="Button" class="btn btn-outline-danger" href="homepage.jsp" value="Back to Homepage" style="position:absolute; margin-top:-60px; margin-left:56%">
	</div>
    <div class="footer-dark" style="margin-top: 153px;">
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
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>