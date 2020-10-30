
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>updateRoomReservation</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/fonts/ionicons.min.css">
<link rel="stylesheet" href="assets/css/createReservation.css">
<link rel="stylesheet" href="assets/css/footer.css">
<link rel="stylesheet" href="assets/css/NavigationBar.css">
<link rel="stylesheet" href="assets/css/styles.css">

<script type="text/javascript">


function updateRoomDetails(){
	
	var RoomTypeBox = document.getElementById('roomTypeSelect');
	var RoomTypeSelected = RoomTypeBox.options[RoomTypeBox.selectedIndex].value;
	
	var sql = "SELECT * FROM room_type WHERE roomType_Id="+RoomTypeSelected;
	console.log(sql);

}

</script>

</head>
<%@
page import ="com.TripsAndTramps.RoomReservation.Service.ViewRoomTypeService,com.TripsAndTramps.RoomReservation.Model.Room,java.util.List" 

%>
<%

ViewRoomTypeService s1 = new ViewRoomTypeService();
List <Room> roomDropdownData = s1.getAllRoomTypes();
%>
<body>

<jsp:include page="touristNavigationBar.jsp" />
	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-xl-3"
					style="padding-top: 20px; margin-top: 0px;">
					<form method="post" action="PaymentServlet">
						<label><strong>Room Type</strong></label> <select
							class="form-control" style="margin-top: 15px; width: 100%;"
							name="roomType" onchange = "RoomReservationServletFinal" id="roomTypeSelect">
							<optgroup label="Select Desired Room Type">
							<%for(Room r:roomDropdownData){ %>
							
								<option value="<%=r.getRoomType()%>" ><%=r.getRoomType()%> - <%=r.getRoomTypeNameDirect()%> - <%=r.getAmountDirect()%></option>
								
							<%} %>
							
							</optgroup>
						</select>
						<button class="btn btn-primary bg-info text-center" type="button"
							style="padding-top: 4px; padding-right: 14px; margin-top: 20px; margin-left: 0px; width: 100%;"
							name="viewRoomBtn" >View Room</button>
						<label style="margin-top: 15px;"><strong>Number
								of Adults</strong></label> <input type="number" class="form-control"
							style="width: 100%; margin-top: 15px;" name="numberOfAdults" /><label
							style="margin-top: 15px;"> <strong>Number of
								Children</strong></label> <input type="number" class="form-control"
							style="width: 100%; margin-top: 15px;" name="numberOfChildren" />
						<label style="margin-top: 15px;"><strong>Check-in
								Date</strong></label><input class="form-control" type="date"
							style="margin-top: 15px;" name="checkInDate" /><label
							style="margin-top: 15px;"><strong>Check-out Date</strong></label><input
							class="form-control" type="date" style="margin-top: 15px;"
							name="checkOutDate" /><label style="margin-top: 15px;"><strong>Remarks</strong></label>
						<textarea class="form-control"
							placeholder="Please type any extra features required"
							name="remarks"></textarea>
						<button class="btn btn-primary btn-success" type="submit"
							style="margin-top: 15px; float: right;">Book</button>
					</form>
					
				</div>
				<div class="col-md-6 col-xl-9" style="padding-top: 20px;">
					<h1 id="roomType" style="font-size: 25px;">Room Type</h1>
					<img alt="" src="">
					<h1 style="font-size: 25px; margin-top: 15px;">About Room</h1>
					<p id="aboutRoom">Paragraph</p>
				</div>
			</div>
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
						<p>
							<br>No. 248/2, Vihara Mawatha, Hunupitiya, Wattala<br>
							<br>
						</p>
					</div>
					<div class="col-sm-6 col-md-3 item">
						<h3>Contact</h3>
						<ul>
							<li><a href="#">Contact Us</a></li>
						</ul>
						<p>
							<br> Email: info@ceylontripsandtramps.com&nbsp;<br>Phone:
							+94 76 527 3911<br>
							<br>
						</p>
					</div>
					<div class="col-md-6 item text">
						<h3>Ceylon Trips and Tramps</h3>
						<p>
							<br>Our passion is traveling! We believe in providing a
							personal touch <br>beyond just making your reservations. All
							our agents have traveled <br>extensively and have first-hand
							knowledge of the destinations we book <br>for. We’re in
							the business of making your travel arrangements <br>hassle-free.
							Contact us today to learn more about our offerings.<br>
							<br>
						</p>
					</div>
					<div class="col item social">
						<a href="#"><i class="icon ion-social-facebook"></i></a><a
							href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i
							class="icon ion-social-snapchat"></i></a><a href="#"><i
							class="icon ion-social-instagram"></i></a>
					</div>
				</div>
				<p class="copyright">Ceylon Trips and Tramps © 2020</p>
			</div>
		</footer>
	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>