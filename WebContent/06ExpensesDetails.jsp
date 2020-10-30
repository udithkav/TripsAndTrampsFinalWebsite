<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Finance Management</title>
    <link rel="stylesheet" href="FM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="FM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="FM/assets/css/Contact-Form-Clean-1.css">
    <link rel="stylesheet" href="FM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="FM/assets/css/footer.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="FM/assets/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="FM/assets/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Finance</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Add a Expense</a></div>
                </li>
            
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <div class="contact-clean">
        <form method="post" action="insertExpenseServlet">
            <h2 class="text-center">Expenses Details</h2>
            <div class="form-group"></div>
            <label>DATE</label>
            <div class="form-group"><input class="form-control" type="date" name="date" placeholder="Date" required></div>
            <label>DETAILS</label>
            <div class="form-group"><input class="form-control" type="text" name="details" placeholder="Details" required></div>
            <label>AMOUNT</label>
            <input class="form-control" type="text" name="amount" placeholder="Amount" required>
            <div class="form-group"><button class="btn btn-primary" type="submit">INSERT</button></div>
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
    <script src="FM/assets/js/jquery.min.js"></script>
    <script src="FM/assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>