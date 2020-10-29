<!DOCTYPE html>
<html>
<%@page
	import="com.TripsAndTramps.RoomReservation.Model.RoomReservation,java.util.*"%>
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
</head>

<body>
	<jsp:include page="touristNavigationBar.jsp" />

	<%
		@SuppressWarnings("unchecked")
	List<RoomReservation> rrList = (List<RoomReservation>) request.getAttribute("roomReservationList");
	System.out.println(rrList);
	RoomReservation rrSolo = (RoomReservation) request.getAttribute("roomReservationInfo");
	%>
	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-xl-4">
					<br>
					<strong>Search Room Reservation</strong>
					<form action="SearchRoomReservationServlet" method="get">
						
						<br>
						<label><strong>From : </strong></label>
						<input class="form-control" type="date" style="width: 100%;"
							name="searchDate" />
						<label><strong>To : </strong></label>
						<input class="form-control" type="date" style="width: 100%;"
							name="searchDate2" />
						<button class="btn btn-primary btn-success" type="submit"
							style="width: 100%;" name="btnSearchDate" >Search</button>
					</form>
					<a class="btn btn-info" role="button" style="width: 100%;"
								href="<%=request.getContextPath()%>/viewRoomReservations">Reset Search</a>
					<br>
					<div>
						<a class="btn btn-primary bg-info" data-toggle="collapse"
							aria-expanded="false" aria-controls="collapse-1"
							href="#collapse-1" role="button"
							style="margin-top: 20px; width: 100%;">Click Here to View
							Reservations</a>
						<div class="collapse" id="collapse-1">
							<%
								for (RoomReservation r : rrList) {
							%>
							<div class="card-body" >
								<h4 class="card-title">
									Reservation ID:<%=r.getRoomReservationID()%>
								</h4>
								<h6 class="text-muted card-subtitle mb-2">
									Check In : <%=r.getCheckInDate()%>
								</h6>
								<h6 class="text-muted card-subtitle mb-2">
									Check Out : <%=r.getCheckOutDate()%>
								</h6>
								<h6 class="text-muted card-subtitle mb-2">Payment : <%=r.getConfirm() %></h6>

								<form action="DeleteRoomReservation" method="get">
									<input type="hidden" value="<%=r.getRoomReservationID()%>"
										name="roomReservationID">
									<button class="btn btn-danger" style="float: right;"
										type="submit">Delete Reservation</button>
								</form>
								<form action="viewSpecificRoomReservation" method="get">
									<input type="hidden" value="<%=r.getRoomReservationID()%>"
										name="roomReservationIDu">
									<button class="btn btn-primary" type="submit">View
										Reservation</button>
								</form>
								<form action="RoomReservationReportGeneratorServlet" method="post">
									<input type="hidden" value="<%=r.getRoomReservationID()%>"name="roomReservationIDRep">
									<input type="hidden" value="<%=r.getAmount()%>"name="AmountRep">
									<input type="hidden" value="<%=r.getPeople()%>"name="PeopleRep">
									<input type="hidden" value="<%=r.getConfirm()%>"name="ConfirmRep">
									<input type="hidden" value="<%=r.getTouristID()%>"name="TouristIDRep">
									<input type="hidden" value="<%=r.getCheckInDate()%>"name="checkInDateRep">
									<input type="hidden" value="<%=r.getCheckOutDate()%>"name="checkOutDateRep">
									<input type="hidden" value="<%=r.getRemarks()%>"name="remarksRep">
									<button class="btn btn-secondary" type="submit" style="width: 100%;">Generate Reservation Report</button>
								</form>
							</div>
							
							<%} %>

						</div>
					</div>
				</div>
				<div class="col-md-6 col-xl-8">
				<h1 style="font-size: 16px; margin-top: 20px;">
						<strong>View Room Reservation</strong>
					</h1>
				<%if(rrSolo!=null){ %>
					<form style="margin-top: 15px;" action="RoomReservationUpdate"
						method="post">
						<label><strong>Reservation ID </strong></label><input
							name="reservationID" class="form-control"
							style="margin-top: 15px; width: 100%;"
							value="<%=rrSolo.getRoomReservationID()%>"></input> <input class="form-control"
							style="margin-top: 15px; width: 100%;" name="roomType"  value="<%=rrSolo.getRoomTypeId()%>" type="hidden"></input><label
							style="margin-top: 15px;"><strong>Number of
								People</strong></label><input type="number" class="form-control"
							style="width: 100%; margin-top: 15px;" name="numberOfPeople" value="<%=rrSolo.getPeople()%>" />
						<label style="margin-top: 15px;"><strong>Check-in
								Date</strong></label><input class="form-control" type="date"
							style="margin-top: 15px;" value="<%=rrSolo.getCheckInDate()%>" name="checkInDate"><label
							style="margin-top: 15px;"><strong>Check-out Date</strong></label><input
							class="form-control" type="date" style="margin-top: 15px;"
							name="checkOutDate" value="<%=rrSolo.getCheckOutDate()%>"/><label style="margin-top: 15px;"><strong>Remarks</strong></label>
						<input class="form-control" name="remarks" value="<%=rrSolo.getRemarks()%>"></input>
						<button class="btn btn-primary btn-success" type="submit"
							style="margin-top: 15px; float: right;"
							name="updateReservationBtn">Update Reservation</button>
					</form>
					<%} %>
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
							+94 76 527 3911<br> <br>
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
							Contact us today to learn more about our offerings.<br> <br>
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