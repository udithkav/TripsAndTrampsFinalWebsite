<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="com.TripsAndTramps.HRM.Model.Employeee" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>My Profile</title>
    <link rel="stylesheet" href="Profile/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="Profile/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="Profile/assets/css/footernew.css">
    <link rel="stylesheet" href="Profile/assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="Profile/assets/css/styles.css">
</head>

<body style="color: rgb(240,242,244);"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="Profile/assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Inventory</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Add an Inventory</a></div>
                </li>
               
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <div class="login-dark" style="color: rgb(244,247,249);background-image: url(&quot;none&quot;);background-color: rgb(255,255,255);padding-top: 0px;height: 770px;">
        <form method="post" style="width: 400px;max-width: 420px;background-color: rgb(119,133,149);height: 660px;margin-top: 0px;margin-bottom: -90px;padding-bottom: 0;">
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration" style="background-image: url(&quot;assets/img/pro3.png&quot;);background-size: contain;height: 240px;width: 240px;margin-left: 40px;"></div><input class="form-control-plaintext" type="text" value="Malindu Upendra" readonly="" style="width: 135px;margin-left: 96px;"><input class="form-control-plaintext" type="text" value="Employee No : 011448" readonly="" style="width: 175px;margin-left: 84px;">
            <div
                style="margin-top: 5px;width: 400px;height: 250px;padding-top: 0px;padding-right: 0px;"><a class="btn btn-primary border rounded" data-toggle="collapse" aria-expanded="true" aria-controls="collapse-1" href="#collapse-1" role="button" style="width: 350px;margin-top: 8px;margin-left: -14px;height: 40px;padding-top: 8px;padding-bottom: 8px;">View Profile</a>
                <div
                    class="collapse show" id="collapse-1" style="margin-top: 0px;width: 435px;margin-left: -105px;filter: grayscale(0%) hue-rotate(0deg) invert(0%) saturate(100%) sepia(32%);padding: 0px;padding-right: 0px;padding-left: 100px;color: rgb(248,248,248);"><div class="table-responsive">
    <table class="table">
        
        <tbody>
        <%Employeee PE = (Employeee)request.getAttribute("permanentemployee");%>
            <tr>
                <td>First Name</td>
                <td><%=PE.getFirstname()%></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><%=PE.getLastname()%></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%=PE.getEmail()%></td>
            </tr>
             <tr>
                <td>Position</td>
                <td><%=PE.getPosition()%></td>
            </tr>
             <tr>
                <td>NIC</td>
                <td><%=PE.getNic()%></td>
            </tr>
        </tbody>
    </table>
</div></div>
    </div>
    </form>
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
                        <p><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We're
                            in the business of making your travel arrangements <br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Ceylon Trips and Tramps © 2020</p>
            </div>
        </footer>
    </div>
    <script src="Profile/assets/js/jquery.min.js"></script>
    <script src="Profile/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>