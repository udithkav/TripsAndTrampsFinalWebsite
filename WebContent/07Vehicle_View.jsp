<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.TripsAndTramps.InventoryMgt.Model.VehicleOwnerAndVehicle" %>
    <%@page import="java.util.List" %>
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

<body style="background-color: rgb(245,242,242);"><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
    <div class="container"><img src="inventorymanager/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px;" /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                <li role="presentation" class="nav-item"></li>
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Vehicle</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="07Add_Vehicle.jsp">Add a Vehicle</a></div>
                </li>
               
            
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
                </li>
            </ul>
    </div>
    </div>
</nav>
    <div style="padding-top: 40px;width: 100%;">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div>
                        <ul class="nav nav-tabs">
                            <li class="nav-item"><a class="nav-link active" role="tab" data-toggle="tab" href="#tab-1">Cars</a></li>
                            <li class="nav-item"><a class="nav-link" role="tab" data-toggle="tab" href="#tab-2">Vans</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" role="tabpanel" id="tab-1" style="background-color: white;"><div class="card">
    <div class="card-body">
        <h4 class="card-title">Current Vehicles</h4>
        <div class="table-responsive">
    <table class="table">
        <thead>
            <tr></tr>
        </thead>
        <tbody>
            <tr>
                <td>Vehicle Type</td>
                <td>Cars</td>
            </tr>
            <tr>
                <td>Quantity</td>
                <% int countforcars = (Integer)request.getAttribute("countforcars");%>
                <td><%=countforcars %></td>
            </tr>
        </tbody>
    </table>
</div><!--<button class="btn btn-primary" type="button"style="height: 30px;width: 80px; padding: 0px;">View</button>--></div>
</div></div>
                            <div class="tab-pane" role="tabpanel" id="tab-2" style="background-color: white;"><div class="card-body">
        <h4 class="card-title">Current Vehicles</h4>
        <div class="table-responsive">
    <table class="table">
        <thead>
            <tr></tr>
        </thead>
        <tbody>
            <tr>
                <td>Vehicle Type</td>
                <td>Van</td>
            </tr>
            <tr>
                <td>Quantity</td>
                <% int countforvans = (Integer)request.getAttribute("countforvans");%>
                <td><%=countforvans %></td>
            </tr>
        </tbody>
    </table>
</div><!--<button class="btn btn-primary" type="button"style="height: 30px;width: 80px; padding: 0px;">View
    </button>--></div></div>
                            <div class="tab-pane" role="tabpanel" id="tab-3" style="background-color: white;"><div class="card-body">
        <h4 class="card-title">Current Inventory</h4>
        <div class="table-responsive">
    <table class="table">
        <thead>
            <tr></tr>
        </thead>
        <tbody>
            <tr>
                <td>Inventory Type</td>
                <td>Beds</td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td>300</td>
            </tr>
        </tbody>
    </table>
</div><!--<button class="btn btn-primary" type="button"style="height: 30px;width: 80px; padding: 0px;">View</button>--></div></div>
                        </div> 
                    </div><form action="07Vehicle_Report.jsp" method="POST">
                     <input type="text" placeholder="Vehicle Brand" name="vehi" style="height: 30px;width: 180px;margin-left:160px;margin-top: 20px; padding-left: 30px;" >
                     <button class="btn btn-primary" type="submit"style="height: 30px;width: 180px;margin-left:160px;margin-top: 0px; padding: 0px;">Generate Report</button>
                    
                    </form>
                </div>
                <div class="col-md-6">
                    <div><a class="btn btn-primary" data-toggle="collapse" aria-expanded="true" aria-controls="collapse-1" href="#collapse-1" role="button" style="width: 165px;">View All Vehicles</a>
                        <div class="collapse show" id="collapse-1"><input type="text" id="myInput2" onkeyup="myFunction()"placeholder="Search for vehicle"style="width: 165px;padding-top: 1px;margin-top: 10px;height: 24px;font-size: 13px;margin-bottom: 10px;padding-left: 5px;" ><!--<button class="btn btn-primary border rounded py-0"
                                type="button" style="height: 26px;padding-left: 10px;padding-right: 10px;margin-top: -4px;margin-left: 0px;"><i class="fas fa-search"></i></button>--><div class="table-responsive">
    <table class="table" id="Vehicle">
        
        <tbody>
        	   <tr>
                <td>Vehicle No</td>
                <td>Vehicle Type</td>
                <td>Brand</td>
                <td>No of Seats</td>
                <td>Model</td>
                <td>Owners Name</td>
                <td>Language</td>
                <td>Age</td>
                <td>Phone Number</td>
                <td>A/C</td>
                <td>Amount</td>
                
            </tr>
        	
        <% List<VehicleOwnerAndVehicle> O = (List<VehicleOwnerAndVehicle>)request.getAttribute("VandO"); 
        		for(VehicleOwnerAndVehicle veh:O){%>
         
            <tr>
                <td><%=veh.getVehicle_no() %></td>
                <td><%=veh.getVehicle_type() %></td>
                <td><%=veh.getV_brand() %></td>
                <td><%=veh.getSeats() %></td>
                <td><%=veh.getModel() %></td>
                <td><%=veh.getName() %></td>
                <td><%=veh.getLanguage() %></td>
                <td><%=veh.getAge() %></td>
                <td><%=veh.getPhonenum() %></td>
                <td><%=veh.getAc() %></td>
                <td><%=veh.getAmount() %></td>
          
                <td><form method="POST" action="ToUpdateVehiclePageServlet"><input type="hidden" value="<%=veh.getVehicle_no() %>" name="id"><button class="btn btn-primary" type="submit" style="height: 30px;width: 80px;background-color: rgb(21,200,60);padding: 0;">Update</button></form></td>
            	<td><form method="POST" action="DeleteVehicleServlet"><input type="hidden" value="<%=veh.getVehicle_no() %>" name="id"><input type="hidden" value="<%=veh.getVehicleOid() %>" name="oid"><button class="btn btn-primary" type="submit" style="height: 30px;width: 80px;background-color: rgb(208,8,8);padding: 0;">Delete</button></form></td>
     		</tr>
     		<% } %>
      </tbody>
    </table>               </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>
    
         <script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput2");
  filter = input.value.toUpperCase();
  table = document.getElementById("Vehicle");
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
    
    <div class="footer-dark" style="padding-top: 60px;margin-top: 20px;">
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