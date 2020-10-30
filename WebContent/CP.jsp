<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.TripsAndTramps.FC.Model.Complaint" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Complaint</title>
    <link rel="stylesheet" href="feedbackcomplaint/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="feedbackcomplaint/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="feedbackcomplaint/assets/css/Contact-Form-Clean-1.css">
    <link rel="stylesheet" href="feedbackcomplaint/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="feedbackcomplaint/assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="feedbackcomplaint/assets/css/styles.css">
</head>

<body style="background-image: linear-gradient(to bottom right, #24478f,#000033);"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="feedbackcomplaint/assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Gallery</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Reservation</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Reserve a Room</a><a role="presentation" class="dropdown-item" href="#">Reserve a Vehicle</a><a role="presentation" class="dropdown-item" href="#">Reserve a Tour Guide</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Contact Us</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Complaint</a><a role="presentation" class="dropdown-item" href="#">Feedback</a><a role="presentation" class="dropdown-item" href="#">General Inquiry</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">View Profile</a><a role="presentation" class="dropdown-item active" href="#">View Room Reservations</a><a role="presentation" class="dropdown-item" href="#">View Vehicle Reservations</a><a role="presentation" class="dropdown-item" href="#">View Tour Guide Reservations</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
<%List<Complaint> complain = (List<Complaint>)request.getAttribute("complaint"); 
            	for(Complaint com:complain){
            %>
    <div class="contact-clean" style="width: 50%;margin-left: 25%;margin-top: 5%;">
        <form method="post" action="updateComplaintServlet">
            <h2 class="text-center">Complaint</h2>
            <div class="form-group"><textarea class="form-control" name="message" rows="14"><%=com.getDescription()%></textarea></div>
            <input type="hidden" value="<%=com.getC_No()%>" name="cno"><button class="btn btn-primary" type="submit" style="margin-left:10%;">UPDATE</button></form>
            <form method="POST" action="deleteComplaintServlet"><input type="hidden" value="<%=com.getC_No()%>" name="cno"><button class="btn btn-primary" type="submit" style="margin-left: 50%;">DELETE</button></form>
    	</div>
     <%} %>
    <div class="footer-dark" style="margin-top: 125px;">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Address</h3>
                        <ul>
                            <li><a href="#"></a></li>
                            <li><a href="#"><br><br>No. 248/2, Vihara Mawatha, Hunupitiya, Wattala<br><br><br></a></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Contact</h3>
                        <ul>
                            <li></li>
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
                <p class="copyright">Company Name © 2017</p>
            </div>
        </footer>
    </div>
    <script src="feedbackcomplaint/assets/js/jquery.min.js"></script>
    <script src="feedbackcomplaint/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>