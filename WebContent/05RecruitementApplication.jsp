<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Recruitement Application</title>
    <link rel="stylesheet" href="HRM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="HRM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="HRM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="HRM/assets/css/footer.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="HRM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="HRM/assets/css/NavigationBar.css">
    <link rel="stylesheet" href="HRM/assets/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean-button bg-light sticky-top">
    <div class="container"><img src="HRM/assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;height: 63px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav mr-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item" role="presentation"></li>
            </ul><span class="navbar-text actions"><a class="login active" href="#">Log In</a><a class="btn btn-light action-button" role="button" href="#">Sign Up</a></span></div>
    </div>
</nav>
    <div class="contact-clean" style="margin-top: 0px;background-color: rgb(255,255,255);">
        <form method="post" action="TT05InsertTourGuideServlet" style="background-color: rgb(217,217,217);">
            <h2 class="text-center" style="font-size: 22px;">Tour Guide Recruitment Application</h2>
            <div class="form-group"><input class="form-control" type="text" name="firstname" placeholder="Fname" style="margin-top: 0px;" required><small class="form-text text-muted" style="font-size: 16px;">First Name</small>
            <input class="form-control" type="text" name="lastname" placeholder="LName" style="margin-top: 30px;" required><small class="form-text text-muted" style="font-size: 16px;">Last Name</small></div>
            <input class="form-control" type="date" name="dob" style="margin-top: 30px;" required><small class="form-text text-muted" style="font-size: 16px;">Date Of Birth</small>
            <input class="form-control" type="email" name="email" style="margin-top: 30px;" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><small class="form-text text-muted" style="font-size: 16px; margin-top: 4PX;">Email</small><br>
            <select class="form-control" name="province" required><optgroup label="Select Specialized Province"><option value="Western" selected>Western</option><option value="Central">Central</option><option value="Southern">Southern</option><option value="Uva">Uva</option><option value="Sabaragamuwa">Sabaragamuwa</option><option value="North Western">North Western</option><option value="North Central">North Central</option><option value="Nothern">Nothern</option><option value="Eastern">Eastern</option></optgroup></select><small class="form-text text-center text-muted" style="font-size: 16px;">Specialized Province</small>
                <div class="form-check" style="margin-top: 30px;"><input class="form-check-input" type="checkbox" name="ck" value="English" id="formCheck-1" style="margin-top: 15px;"><label class="form-check-label" for="formCheck-1" style="margin-top: 10px;">English</label></div>
                <div class="form-check" style="margin-top: 30px;"><input class="form-check-input" type="checkbox" name="ck" value="Sinhala" id="formCheck-2"><label class="form-check-label" for="formCheck-2" style="margin-top: 0px;">Sinhala</label></div>
                <div class="form-check" style="margin-top: 30px;"><input class="form-check-input" type="checkbox" name="ck" value="Tamil" id="formCheck-3"><label class="form-check-label" for="formCheck-3">Tamil</label></div>
                <div class="input-group">
                    <div class="input-group-prepend"></div>
                    <div class="input-group-append"></div>
                </div><small class="form-text text-left text-muted" style="font-size: 16px;margin-top: 25px;">(Preferred Language)</small><input class="form-control" type="text" name="nic" placeholder="NIC" style="margin-top: 50px;" maxlength="10" pattern="[0-9]{9}[A-Z]{1}" required ><small class="form-text text-muted"
                    style="font-size: 16px;">National Identity Card No</small><button class="btn btn-primary" type="submit" style="margin-top: 70px;margin-left: 140px;">SUBMIT</button></form>
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
    <script src="HRM/assets/js/jquery.min.js"></script>
    <script src="HRM/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>