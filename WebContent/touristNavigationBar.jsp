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
								href="01reserveRoom.jsp">Reserve a Room</a><a role="presentation"
								class="dropdown-item" href="#">Reserve a Vehicle</a><a
								role="presentation" class="dropdown-item" href="#">Reserve a
								Tour Guide</a>
								<a
								role="presentation" class="dropdown-item" href="#">Make Payments</a>
						</div></li>
					<li class="nav-item dropdown"><a data-toggle="dropdown"
						aria-expanded="false" class="dropdown-toggle nav-link" href="#">Contact
							Us</a>
						<div role="menu" class="dropdown-menu">
							<a role="presentation" class="dropdown-item" href="#">Complaint</a><a
								role="presentation" class="dropdown-item" href="#">Feedback</a><a
								role="presentation" class="dropdown-item" href="#">General
								Inquiry</a>
						</div></li>
					<li class="nav-item dropdown"><a data-toggle="dropdown"
						aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
						<div role="menu" class="dropdown-menu">
							<a role="presentation" class="dropdown-item" href="#">View
								Profile</a><a role="presentation" class="dropdown-item"
								href="<%=request.getContextPath()%>/viewRoomReservations">View
								Room Reservations</a><a role="presentation" class="dropdown-item"
								href="#">View Vehicle Reservations</a><a role="presentation"
								class="dropdown-item" href="#">View Tour Guide Reservations</a><a
								role="presentation" class="dropdown-item" href="#">Log Out</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>