<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>login</title>
    <link rel="stylesheet" href="assetsLogin/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assetsLogin/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assetsLogin/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="assetsLogin/css/footer.css">
    <link rel="stylesheet" href="assetsLogin/css/LoginComponent.css">
    <link rel="stylesheet" href="assetsLogin/css/LoginNav.css">
    <link rel="stylesheet" href="assetsLogin/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assetsLogin/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean-button bg-light sticky-top">
    <div class="container"><img src="assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;height: 63px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav mr-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="#">Home</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="#">Gallery</a></li>
            </ul><span class="navbar-text actions"><a class="login active" href="#">Log In</a><a class="btn btn-light action-button" role="button" href="#">Sign Up</a></span></div>
    </div>
</nav>
    <div class="login-dark">
        <form method="post" action= "EmployeeLoginServlet">
            <h2 class="sr-only">Employee Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
            <div class="form-group"><input class="form-control" type="email" id="login_email" name="email" placeholder="Email"></div>
            <div class="form-group"><input class="form-control" type="password" id="login_password" name="password" placeholder="Password"></div>
            <div class="form-group"><button class="btn btn-primary btn-block" id="loginButton" type="submit">Log In</button></div><a class="forgot" href="#">Forgot your email or password?</a></form>
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
                        <p><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We’re
                            in the business of making your travel arrangements <br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Ceylon Trips and Tramps © 2020</p>
            </div>
        </footer>
    </div>
    <script src="assetsLogin/js/jquery.min.js"></script>
    <script src="assetsLogin/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>