<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.TripsAndTramps.PC.Model.Packageee"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Package List</title>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Employee Details</title>
    <link rel="stylesheet" href="TourGuideReservation/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="TourGuideReservation/fonts/ionicons.min.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Contact-Form-Clean-1.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="TourGuideReservation/css/footer.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="TourGuideReservation/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="TourGuideReservation/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="TourGuideReservation/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Package</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Create Package</a><a role="presentation" class="dropdown-item" href="#">Check Package List</a></div>
                </li>
                
                </li>
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
	<input type="text" id="myInput1" onkeyup="myFunction()" placeholder="Search Activity Name" style="margin-top: 6px;margin-left: 990px; title="Type in a name">




<label style="margin-left: 600PX;font-size: 30PX;"><strong>PACKAGE LIST</strong></label>
    <div class="table-responsive" style="padding: 100px;padding-top: 25px;background-color: #5882FA;">
        <table class="table"  id="package">
            <thead class="text-center">
                <tr></tr>
            </thead>
            <tbody style="color: white;">
            <%List<Packageee> p = (List<Packageee>)request.getAttribute("details");
            	for(Packageee pack:p){
            %>
          
                <tr>
                    <td style="width: 300px;" style="color:white;"><h5><%=pack.getActivityName()%></h5></td>
                    <td style="width: 300px;" style="color:white;"><h5><%=pack.getLocation()%></h5></td>
                    <td style="width: 300px;" style="color:white;"><h5><%=pack.getAmount()%></h5></td>
                    <td style="width: 250px;"><form action="PackageUpdateServlet" method="POST"> <input type="hidden" name="pid" value="<%=pack.getpID()%>"><button class="btn btn-primary" type="submit">EDIT</button></form></td>
                    <td style="width: 250px;"><form action="PackageDeleteServlet" method="POST"> <input type="hidden" name="pid" value="<%=pack.getpID()%>"><button class="btn btn-primary" type="submit">DELETE</button></form></td>
                </tr>
                <%} %>
            </tbody> 
        </table>
    </div>
    <form action="PackageReport.jsp" method="POST">
    <input type="text" placeholder="Package Name" name="PNAME" style="position: absolute;left: 43%;top: 580px;width: 275px;">
    <input type="text" placeholder="Date" name="pname" style="position: absolute;left: 43%;top: 610px;width: 275px;" >
    <button class="btn btn-primary" type="submit" style="position: absolute;left: 20%;top: 580px;width: 275px;">Generate Report</button>
    </form>
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
    
    
    <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  filter = input.value.toUpperCase();
  table = document.getElementById("package");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
    
    
    
    
    
    
    
    
    <script src="TourGuideReservation/js/jquery.min.js"></script>
    <script src="TourGuideReservation/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>