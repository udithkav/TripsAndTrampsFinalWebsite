<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.VehicleReservation.Model.Vehicle"%> 
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html style="background-image: linear-gradient(to bottom right, #24478f,#000033);height: 100%;width: 100%;">

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

<body style="background-image: linear-gradient(to bottom right, #24478f,#000033);height: 100%;width: 100%;"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <jsp:include page="touristNavigationBar.jsp" />
</nav>
    <h3 class="Header" style="padding: 7px;color: rgb(80,167,255);margin-top: 10px;">Available Vehicles</h3>
    <div class="table-responsive" style="max-width: 75%;position: absolute;left: 13%;top: 175px;">
        <table class="table">
            <thead>
                <tr>
                <th style="color: white;font-size: 20px;width: 15%;">Vehicle Brand</th>
                <th style="color: white;font-size: 20px;width: 15%;">Model</th>
    			<th style="color: white;font-size: 20px;width: 15%;">Number Of Seats</th>
    			<th style="color: white;font-size: 20px;width: 15%;">Air Condition</th>
    			<th style="color: white;font-size: 20px;width: 15%;"></th>
    			</tr>
            </thead>
            <tbody>
            
            <%List<Vehicle> vehicle = (List<Vehicle>)request.getAttribute("data"); 
     			for(Vehicle v:vehicle){%>	
                <tr>
                    <td style="color: white;font-size: 30px;width: 20%;"><%=v.getVehcleBrand()%></td>
                    <td style="color: white;font-size: 30px;width: 20%;"><%=v.getModel()%></td>
                    <td style="color: white;font-size: 30px;width: 20%;"><%=v.getNumOfSeats()%></td>
                    <td style="color: white;font-size: 30px;width: 20%;"><%=v.getAc()%></td>
                    <td>
                        <div class="btn-group" role="group">
                        <form method="POST" action="SpecificVehiclefromPackageServlet"><input type="hidden" value="<%=v.getVehicleNumber()%>" name="vehicle_number"><button class="btn btn-primary" type="submit">View</button></form></div>
                    </td>
                </tr>
               <%}%>
                
                <tr></tr>
            </tbody>
        </table>
    </div>
    <div class="footer-dark" style="margin-top: 510px;bottom: 0px;">
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