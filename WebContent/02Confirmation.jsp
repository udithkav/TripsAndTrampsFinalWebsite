<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle"%>
    <%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle_Owner"%>
    <%@page import="java.util.List"%>
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
</head>

<body style="width: 100%;height: 1080px;background-image: linear-gradient(to bottom right, #24478f,#000033);margin-top: 8px;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
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
		<%Vehicle v = new Vehicle();
		List<Vehicle_Owner> o = (List<Vehicle_Owner>)request.getAttribute("data"); 
    	String vehicleNumber = (String)request.getAttribute("Vnum");
    	Double amount = (Double)request.getAttribute("amount");
		v.setVehicleNumber(vehicleNumber);
		v.setAmount(amount);%>
		
    <h3 class="Header" style="padding: 7px;color: rgb(80,167,255);margin-top: 17px;">Reservation</h3>
    <form method="POST" action="FinalDetailsServlet">
    <h4 style="color: white;max-width: 250px;margin-left: 2%;margin-top: 9px;">From</h4><input type="date" name="from" id="from" min="" style="position: absolute;left: 7%;top: 161px;width: 280px;" onclick="setDate()" onchange="setDateinto()" required>
    <h4 style="color: white;max-width: 250px;position: absolute;left: 28%;top: 161px;">To</h4><input type="date" name="to" id="to" min="" style="position: absolute;left: 31%;top: 161px;width: 280px;" onclick="setDate2()" required>
    <h5 style="color: white;max-width: 250px;margin-left: 10%;margin-top: 50px;">Self Driving ?</h5>
    <div class="form-check" style="position: absolute;left: 17%;font-size: 24px;color: white;width: 150px;top: 237px;">
    <input class="form-check-input" type="radio" name="decision" value="yes" id="formCheck-1" style="width: 100px;height: 27px;" onclick="yesnoCheck()" checked><label class="form-check-label" for="formCheck-1" style="margin-left: 63px;" >Yes</label></div>
    <div class="form-check" style="position: absolute;left: 24%;font-size: 24px;color: white;width: 150px;top: 237px;">
    <input class="form-check-input" type="radio" name="decision" value="no" id="formCheck-1" style="width: 100px;height: 27px;" onclick="yesnoCheck()"><label class="form-check-label" for="formCheck-1" style="margin-left: 63px;" >No</label></div>
    <div id="googleMap" style="width: 48%;margin-left: 50%;margin-top: -110px;height: 546px;"></div>
    <div id="ifYes" style="visibility:hidden">
    <% for(Vehicle_Owner owner:o){%>	
    <h4 style="position:absolute; color: white;max-width: 250px;margin-left: 2%;margin-top: -400px;">Driver's Name</h4><h4 style="position: absolute; color: white; left: 15%;top: 310px;width: 280px;">: <%=owner.getName()%></h4>
    <h4 style="position:absolute; color: white;max-width: 250px;margin-left: 2%;margin-top: -350px;">Languages</h4><h4 style="position: absolute; color: white; left: 15%;top: 360px;width: 280px;">: <%=owner.getLanguages()%> </h4>
    <h4 style="position:absolute; color: white;max-width: 250px;margin-left: 2%;margin-top: -300px;">Age</h4><h4 style="position: absolute; color: white; left: 15%;top: 410px;width: 280px;">: <%=owner.getAge()%></h4>
    <h4 style="position:absolute; color: white;max-width: 250px;margin-left: 2%;margin-top: -250px;">Phone Number</h4><h4 style="position: absolute; color: white; left: 15%;top: 460px;width: 280px;">: <%=owner.getPhoneNumber()%></h4>
    <%}%>
    </div> 
        
        <input type="hidden" value="<%=v.getVehicleNumber()%>" name="vehicle_number">
        <input type="hidden" value="<%=v.getAmount()%>" name="amount">
        <button class="btn btn-primary" type="submit" style="position: absolute;left: 26%;top: 663px;width: 275px;">Confirm</button>
        
	</form>
    
    <form method="POST" action="SpecificVehicleServlet"><input type="hidden" value="<%=v.getVehicleNumber()%>" name="vehicle_number"><button class="btn btn-primary" type="submit" style="position: absolute;left: 4%;top: 663px;width: 275px;">Back</button></form>
  
    <div class="footer-dark" style="margin-top: 36px;">
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
                        <p><br>Our passion is traveling! We believe in providing a personal touch&nbsp;<br>beyond just making your reservations. All our agents have traveled<br>extensively and have first-hand knowledge of the destinations we book<br>for.
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


<script>
function myMap() {
var mapProp= {
  center:new google.maps.LatLng(7.291418,80.636696),
  zoom:7,
};
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
}

function yesnoCheck() {
    if (document.getElementById('formCheck-1').checked) {
        document.getElementById('ifYes').style.visibility = 'hidden';
    }
    else document.getElementById('ifYes').style.visibility = 'visible';

}

function setDate(){
	var today = new Date();

	var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();

	document.getElementById("from").setAttribute("min", date);
}

function setDate2(){
	var today = document.getElementById("from").value;

	document.getElementById("to").setAttribute("min", today);
}

function setDateinto(){
	var today = document.getElementById("from").value;

	document.getElementById("to").value = today;
	}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAeFTfTXceRRPW2qgAEuaqPjAoxGrMfenQ&callback=myMap"></script>
</body>

</html>