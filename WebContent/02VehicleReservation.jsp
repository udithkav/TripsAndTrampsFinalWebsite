<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="background-image: linear-gradient(to bottom right, #24478f,#000033);background-repeat: no-repeat;">

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

<body style="height: 1500px;width: 100%;background-image: linear-gradient(to bottom right, #24478f,#000033);background-repeat: no-repeat;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
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
    <h3 class="Header" style="padding: 7px;color: rgb(80,167,255);margin-top: 10px;">Vehicle Reservation</h3>
    <div class="contact-clean" style="background-color: rgba(241,247,252,0);width: 25%;position: relative;top: 0px;">
        <form method="post" action="GetVehicleDetailsServlet" style="padding: 40px;margin: 10px;height: 484px;width: 100%;border-radius: 17px;background-image: url(VehicleReservation/img/background.gif);">
            <h2 class="text-center" style="background-color: rgb(80,167,255);height: 50px;padding: 7px;border-radius: 12px;">Vehicle Requirements</h2>
            <h5>Vehicle type</h5>
            <select name="vehicle_type" class="btn btn-primary" style="height:50px; border-radius:10px; margin-top:0px;">
    			<option value="" selected="selected">Select Type</option>
   				 <option value="CAR" >CAR</option>
    			<option value="VAN" >VAN</option>
  			</select>
            <h5 style="margin-top:10px;">Vehicle Brand</h5>
            <select name="vehicle_brand" class="btn btn-primary" style="height:50px; border-radius:10px; margin-top:0px;">
    			<option value="" selected="selected">Select Brand</option>
   				<option value="Toyota" >Toyota</option>
    			<option value="Nissan" >Nissan</option>
    			<option value="Honda" >Honda</option>
    			<option value="Hayundai" >Hayundai</option>
    			<option value="BMW" >BMW</option>
    			<option value="Benz" >Benz</option>
  			</select>
            <div class="form-group"><button class="btn btn-primary" type="submit" style="border-radius: 17px;position: absolute;right: 28px;bottom: 31px;">Search</button></div>
        </form>
    </div>
    <div class="container con" style="width: 75%;margin-top: 0px;position: absolute;top: 148px;max-height: 450px;">
        <div class="card-group">
            <div class="card" style="max-width: 33.3%;max-height: 500px;"><img class="card-img-top w-100 d-block" src="VehicleReservation/img/package_01.png">
                <div class="card-body">
                    <h4 class="card-title">Package 01</h4>
                    <p class="card-text">for every kilometer you just have to pay Rs.35/-<br><br><br></p><form action="GetVehiclesFromPackageServlet" method="POST"><input type="hidden" value="1" name="package"><button class="btn btn-primary" type="submit">Select</button></form></div>
            </div>
            <div class="card" style="max-width: 33.3%;max-height: 500px;"><img class="card-img-top w-100 d-block" src="VehicleReservation/img/package_02.png">
                <div class="card-body">
                    <h4 class="card-title">Package 02</h4>
                    <p class="card-text">Hybrid vehicles.every kilometer for Rs.50/-<br><br><br><br></p><form action="GetVehiclesFromPackageServlet" method="POST"><input type="hidden" value="2" name="package"><button class="btn btn-primary" type="submit">Select</button></form></div>
            </div>
            <div class="card" style="max-width: 33.3%;max-height: 500px;"><img class="card-img-top w-100 d-block" src="VehicleReservation/img/package_03.png">
                <div class="card-body">
                    <h4 class="card-title">Package 03</h4>
                    <p class="card-text">Only first 300 kilometers will be Rs.3000/- after each kilometer is Rs.40/-<br><br><br></p><form action="GetVehiclesFromPackageServlet" method="POST"><input type="hidden" value="3" name="package"><button class="btn btn-primary" type="submit">Select</button></form></div>
            </div>
        </div>
    </div>
    <div class="container con2" style="width: 75%;max-height: 500px;">
        <div class="card-group">
            <div class="card" style="max-width: 33.3%;max-height: 500px;"><img class="card-img-top w-100 d-block" src="VehicleReservation/img/package_04.png">
                <div class="card-body"> 
                    <h4 class="card-title">Package 04</h4>
                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Select</button></div>
            </div>
            <div class="card" style="max-width: 33.3%;max-height: 500px;"><img class="card-img-top w-100 d-block" src="VehicleReservation/img/package_05.png">
                <div class="card-body">
                    <h4 class="card-title">Package 05</h4>
                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Select</button></div>
            </div>
            <div class="card" style="max-width: 33.3%;max-height: 500px;"><img class="card-img-top w-100 d-block" src="VehicleReservation/img/package_06.png" style="height: 2;">
                <div class="card-body">
                    <h4 class="card-title">Package 06</h4>
                    <p class="card-text">Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p><button class="btn btn-primary" type="button">Select</button></div>
            </div>
        </div>
    </div>
    <div class="footer-dark" style="margin-top: 525px;">
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
    <script src="VehicleReservation/js/jquery.min.js"></script>
    <script src="VehicleReservation/bootstrap/js/bootstrap.min.js"></script>
<!--<%/*if(session.getAttribute("type")==null){
  response.sendRedirect("login.jsp");
}*/%>-->
</body>

</html>