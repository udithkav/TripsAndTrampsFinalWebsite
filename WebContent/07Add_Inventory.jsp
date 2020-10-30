<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Main page Inv manager final</title>
    <link rel="stylesheet" href="inventorymanager/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="inventorymanager/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="inventorymanager/fonts/ionicons.min.css">
    <link rel="stylesheet" href="inventorymanager/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="inventorymanager/css/footernew.css">
    <link rel="stylesheet" href="inventorymanager/css/form.css">
    <link rel="stylesheet" href="inventorymanager/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="inventorymanager/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Inventory</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="07Add_Inventory.jsp">Add an Inventory</a></div>
                </li>
               
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <div class="register-photo" style="width: 75%;margin-left: 220px;position: absolute;background-color: rgb(245,242,242);height: 570px;">
        <div class="form-container">
            <form method="post" action="AddInventoryServlet" style="width: 400px;margin-top: 0px;">
                <h2 class="text-center"><strong>Add Inventory</strong></h2>
                <div class="form-group"><input class="form-control" type="text" name="id" placeholder="Inventory Id"><select class="form-control"name="type" id="inventory" style="margin-top: 20px;width: 780px;height: 40px;background-color:rgb(247,249,252);border-style:none;padding-left:20px;">
   <option value="Inventory Type">Inventory Type</option>
  <option value="A/C">A/C</option>
  <option value="Television">Television</option>
  <option value="bed">bed</option>
</select><input class="form-control" type="text" style="margin-top: 20px;"
                        name="brand" placeholder="Brand"></div>
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background-color: rgb(21,200,60);">Add Inventory</button></div>
            </form>
        </div>
    </div>
    <nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0" style="width: 220px;height: 570px;margin-top: 3px;margin-left: 0;position: absolute;background-color: rgb(78,115,223);">
        <div class="container-fluid d-flex flex-column p-0">
            <a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
                <div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
                <div class="sidebar-brand-text mx-3"><span style="font-size: 25px;">Inventory</span></div>
            </a>
            <hr class="sidebar-divider my-0">
            <ul class="nav navbar-nav text-light" id="accordionSidebar">
                <li class="nav-item" role="presentation"></li>
                <li class="nav-item" role="presentation"></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="table.html"><span></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="login.html"><span></span></a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="register.html"><span></span></a></li>
            </ul>
        </div>
    </nav>
    <div class="footer-dark" style="margin-top: 573px;">
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
    <script src="inventorymanager/js/jquery.min.js"></script>
    <script src="inventorymanager/bootstrap/js/bootstrap.min.js"></script>


</body>

</html>