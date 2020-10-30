<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle_Reservation"%>
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

<body style="width: 100%;background-image: linear-gradient(to bottom right, #24478f,#000033);height: 1079px;background-repeat: no-repeat;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <jsp:include page="touristNavigationBar.jsp" />
</nav>
 <%Vehicle_Reservation reservation = (Vehicle_Reservation)request.getAttribute("reservation");%>
    <h3 class="Header" style="font-family:Optima; font-size:50px; padding: 7px;color: rgb(80,167,255);margin-top: 15px;">Update Reservation</h3>
    <form action="UpdateVehicleReservationServlet" method="POST">
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 25%;color: white;margin-top: 35px;">Vehicle Number</h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 39%;color: white;margin-top: 35px;"><%=reservation.getVehicle_num() %></h4>
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 25%;color: white;margin-top: 81px;">Vehicle Brand</h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 39%;color: white;margin-top: 80px;"><%=reservation.getVehicle_brand() %></h4>
    <h4 style="font-family:courier,arial,helvetica;  position: absolute;max-width: 400px;margin-left: 25%;color: white;margin-top: 127px;">Model</h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 39%;color: white;margin-top: 127px;"><%=reservation.getModel() %></h4>
    <h4 style="font-family:courier,arial,helvetica;  position: absolute;max-width: 400px;margin-left: 25%;color: white;margin-top: 170px;">Vehicle Type</h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 39%;color: white;margin-top: 172px;"><%=reservation.getVehicle_type() %></h4>
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 25%;color: white;margin-top: 215px;">Amount</h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 39%;color: white;margin-top: 215px;"><%=reservation.getAmount() %></h4>
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 50%;color: white;margin-top: 35px;">Self Driving</h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 63%;color: white;margin-top: 38px;"><%=reservation.getDecision() %></h4>
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 50%;color: white;margin-top: 80px;">Driver's Name</h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 63%;color: white;margin-top: 80px;"><%=reservation.getName() %></h4>
    <h4 style="font-family:Copperplate; position: absolute;max-width: 400px;margin-left: 63%;color: white;margin-top: 127px;"><%=reservation.getPn() %></h4>
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 50%;color: white;margin-top: 127px;">Phone Number</h4>
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 50%;color: white;margin-top: 172px;">From</h4><input type="date" name="from" id="from" value="<%=reservation.getFrom() %>" min="" onclick="setDate()" onchange="setDateinto()" style="position: absolute;max-width: 400px;margin-left: 58%;margin-top: 172px;">
    <h4 style="font-family:courier,arial,helvetica; position: absolute;max-width: 400px;margin-left: 50%;color: white;margin-top: 215px;">To</h4><input type="date" name="to" id="to" value="<%=reservation.getTo()%>" min="" onclick="setDate2()" style="position: absolute;max-width: 400px;margin-left: 58%;margin-top: 215px;">
    <input type="hidden" value="<%=reservation.getrID() %>" name="rid">
    <input type="hidden" value="<%=reservation.getAmountforday() %>" name="amountForDay">
    <button class="btn btn-primary" type="submit" style="position: absolute;max-width: 400px;margin-left: 57%;color: white;margin-top: 300px;">Update</button></form>
    <form><button class="btn btn-primary" type="submit" style="position: absolute;max-width: 400px;margin-left: 38%;color: white;margin-top: 300px;">Cancel</button></form>

        <div class="footer-dark" style="margin-top: 524px;">
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
<script>

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
        
</body>

</html>