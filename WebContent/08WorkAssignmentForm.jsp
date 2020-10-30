<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="model.Temporary_Employee" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>shahani</title>
    <link rel="stylesheet" href="workflowmanager/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="workflowmanager/fonts/ionicons.min.css">
    <link rel="stylesheet" href="workflowmanager/css/Article-Dual-Column.css">
    <link rel="stylesheet" href="workflowmanager/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="workflowmanager/css/footer.css">
    <link rel="stylesheet" href="workflowmanager/css/navigation.css">
    <link rel="stylesheet" href="workflowmanager/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="workflowmanager/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="workflowmanager/img/New%20Folder/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Employee</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Add a Permenant Employee</a><a role="presentation" class="dropdown-item" href="#">Add a Temporary Employee</a><a role="presentation" class="dropdown-item" href="#">Employee Details</a></div>
                </li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Tour Guide</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">View Tourguide Application</a></div>
                </li>
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <div class="register-photo">
        <div class="form-container">
            <form method="post" action="WorkassignServlet" style="width: 238px;height: 516px;">
                <h2 class="text-center" style="margin-left: 60px;margin-top: 100px;"><strong>Work Assignment</strong></h2>
                 <%Temporary_Employee A = (Temporary_Employee)request.getAttribute("tm");
              		%>
              		<input type="hidden" name="tid" value="<%=A.getTid()%>">
                <div class="form-group"><input type="text" class="form-control" name="namee" value="<%=A.getFname() + " " + A.getLname()%>" style="margin-top: 0px;margin-bottom: 27px;width: 400px;margin-left: 220px;"required />
                <input type="text" class="form-control" name="job" placeholder="Job Role" style="margin-top: 0px;margin-bottom: 27px;width: 400px;margin-left: 220px;" required/></div>
                <div class="form-group"><input type="text" class="form-control" name="location" placeholder="Location" style="margin-top: 19px;width: 400px;margin-left: 220px;"required /></div>
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="width: 146px;margin-left: 366px;background-color: rgb(0,123,255);">Assign</button></div>
            </form>
        </div>
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
                        <p><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We are
                            in the business of making your travel arrangements <br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Ceylon Trips and Tramps © 2020</p>
            </div>
        </footer>
    </div>
    <script src="workflow manager/js/jquery.min.js"></script>
    <script src="workflow manager/bootstrap/js/bootstrap.min.js"></script>

</body>

</html>