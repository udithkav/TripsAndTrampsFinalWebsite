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
</head>

<body>
	<nav
		class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top">
		<div class="container">
			<img src="assets/img/trips-and-tramps-196x196.jpg"
				style="width: 71px; padding-right: 8px;" /><a class="navbar-brand"
				href="#">Ceylon Trips and Tramps</a>
			<button data-toggle="collapse" data-target="#navcol-1"
				class="navbar-toggler">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="nav navbar-nav ml-auto">
					<li role="presentation" class="nav-item"><a class="nav-link"
						href="#">Home</a></li>
					<li role="presentation" class="nav-item"><a class="nav-link"
						href="#">Gallery</a></li>
					<li role="presentation" class="nav-item"></li>
					<li class="nav-item dropdown"><a data-toggle="dropdown"
						aria-expanded="false" class="dropdown-toggle nav-link" href="#">Reservation</a>
						<div role="menu" class="dropdown-menu">
							<a role="presentation" class="dropdown-item active"
								href="reserveRoom.jsp">Reserve a Room</a><a role="presentation"
								class="dropdown-item" href="#">Reserve a Vehicle</a><a
								role="presentation" class="dropdown-item" href="#">Reserve a
								Tour Guide</a>
						</div></li>
					<li class="nav-item dropdown"><a data-toggle="dropdown"
						aria-expanded="false" class="dropdown-toggle nav-link" href="#">Contact
							Us</a>
						<div role="menu" class="dropdown-menu">
							<a role="presentation" class="dropdown-item" href="04">Complaint</a><a
								role="presentation" class="dropdown-item" href="#">Feedback</a><a
								role="presentation" class="dropdown-item" href="#">General
								Inquiry</a>
						</div></li>
					<li class="nav-item dropdown"><a data-toggle="dropdown"
						aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
						<div role="menu" class="dropdown-menu">
							<a role="presentation" class="dropdown-item" href="#">View
								Profile</a><a role="presentation" class="dropdown-item"
								href="<%=request.getContextPath()%>/viewRoomReservationServlet">View
								Room Reservations</a><a role="presentation" class="dropdown-item"
								href="#">View Vehicle Reservations</a><a role="presentation"
								class="dropdown-item" href="#">View Tour Guide Reservations</a><a
								role="presentation" class="dropdown-item" href="#">Log Out</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<div>
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-xl-4">
					<h1 style="font-size: 16px; margin-top: 20px;">
						<strong>View Room Reservation</strong>
					</h1>
					<form>
						<input class="form-control" type="date" style="width: 100%;"
							name="searchDate" />
						<button class="btn btn-primary btn-success" type="button"
							style="width: 100%;" name="btnSearchDate">Search</button>
					</form>
					<div>
						<a class="btn btn-primary bg-info" data-toggle="collapse"
							aria-expanded="false" aria-controls="collapse-1"
							href="#collapse-1" role="button"
							style="margin-top: 20px; width: 100%;">Click Here to View
							Reservations</a>
						<div class="collapse" id="collapse-1">

							<div class="card-body">
								<h4 class="card-title">Title</h4>
								<h6 class="text-muted card-subtitle mb-2">Subtitle</h6>
								<p class="card-text">Nullam id dolor id nibh ultricies
									vehicula ut id elit. Cras justo odio, dapibus ac facilisis in,
									egestas eget quam. Donec id elit non mi porta gravida at eget
									metus.</p>
								<a class="card-link" href="#">Link</a><a class="card-link"
									href="#">Link</a>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-6 col-xl-8">
					<form style="margin-top: 15px;" action = "RoomReservationUpdate" method="post">
					<label><strong>Reservation ID </strong></label><input name="reservationID" class="form-control" style="margin-top: 15px; width: 100%;"></input>
						<label><strong>Room Type</strong></label><select
							class="form-control" style="margin-top: 15px; width: 100%;"
							name="roomType"><optgroup label="Select a Room Type"></optgroup></select><label
							style="margin-top: 15px;"><strong>Number of
								Adults</strong></label><input type="number" class="form-control"
							style="width: 100%; margin-top: 15px;" name="numberOfAdults" /><label
							style="margin-top: 15px;"><strong>Number of
								Children</strong></label><input type="number" class="form-control"
							style="width: 100%; margin-top: 15px;" name="numberOfChildren"
							name="checkInDate" /> <label style="margin-top: 15px;"><strong>Check-in
								Date</strong></label><input class="form-control" type="date"
							style="margin-top: 15px;"><label
							style="margin-top: 15px;"><strong>Check-out Date</strong></label><input
							class="form-control" type="date" style="margin-top: 15px;"
							name="checkOutDate" /><label style="margin-top: 15px;"><strong>Remarks</strong></label>
						<textarea class="form-control" name="remarks"></textarea>
						<button class="btn btn-primary btn-success" type="submit"
							style="margin-top: 15px; float: right;"
							name="updateReservationBtn">Update Reservation</button>
					</form>
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