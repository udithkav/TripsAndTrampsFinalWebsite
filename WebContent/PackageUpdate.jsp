<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
    <%@page import="com.TripsAndTramps.PC.Model.Packageee"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="TourGuideReservation/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="TourGuideReservation/fonts/ionicons.min.css">
    <link rel="stylesheet" href="TourGuideReservation/css/styles.css">
</head>

<body><nav class="navbar navbar-light navbar-expand-md navigation-clean bg-light sticky-top" style="margin-top:-500px;">
    <div class="container"><img src="TourGuideReservation/img/trips-and-tramps-196x196.jpg" style="width: 71px;padding-right: 8px; " /><a class="navbar-brand" href="#">Ceylon Trips and Tramps</a><button data-toggle="collapse" data-target="#navcol-1" class="navbar-toggler"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
            class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li role="presentation" class="nav-item"><a class="nav-link" href="#">Home</a></li>
                
                <li role="presentation" class="nav-item"></li>
               
               <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Package</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Create Package </a><a role="presentation" class="dropdown-item" href="#">Check Package List</a></div>
                </li>
                
                
                <li class="nav-item dropdown"><a data-toggle="dropdown" aria-expanded="false" class="dropdown-toggle nav-link" href="#">Profile</a>
                    <div role="menu" class="dropdown-menu"><a role="presentation" class="dropdown-item" href="#">Manage Profile</a><a role="presentation" class="dropdown-item" href="#">Log Out</a></div>
               
               
               
                </li>
            </ul>
    </div>
    </div>
</nav>



<title>Package</title>

<style type="text/css">

	body{
	
			background: url(images/bg-01.jpg);
			margin:auto;
			font-family: sans-serif;
			background-repeat:no-repeat;
			background-size:1900px 980px;
			
	}


	.form-1{
	
	max-width: 600px;
		width:100%;
		margin-top:550px;
		margin-left:370px;
		margin-right:50px;
		box-shadow: 2px 2px 5px 1px rgba(0, 0, 0, 0.2);
		//background: url(images/ii.jpg);
		background-color:#093674;
	}

	.form-inner{
			padding: 30px;
	}
	
	h1{
	
		font-weight: normal;
		padding:20px;
		color:black;
		text-align: center;
		box-shadow: 0 5px 5px  rgba(0, 0, 0, 0.1)
	}

	.input-holder{
		position:relative;
		margin-bottom:25px;
	}
	
	.input-text{
	
		width:100%;
		height:40px;
		border:none;
		border-bottom: 1px solid #fff;
		background:transparent;
		color:#fff;
	}
	
	.label{
	
		position: absolute;
		pointer-events:none;
		transition: .2s ease all;
		font-size:16px;
		color:#fff;
		
		top:18px;
		left:0px;
		
	
	
	}
	
	button{
		cursor:pointer;
		border-radius:3px;
		padding:15px;
		width:100%;
		box-shadow: 0 3px 6px 0 rgba(0,0,0,0.1)
		border:none;
		font-size:16px;
		background-color:#37403C;
		opacity:1.0;
		color:#fff;
		transition: .2s ease;
	}
	button:hover{
		background-color: #B09FAD;
		
	}

	button:focus{
		outline:0;
	
	}

	input:focus
	{
		outline:0;
		border-bottom: 2px solid #fff;
		
	}
	
	
	input:focus ~ .label,
	input:not(:focus):valid ~.label{
		top: -10px;
		left:0;
		font-size:11;
	}
	
	
	
</style>





</head>
<body>

	<div class="form-1">
	  
            
		<form method="POST" action="AfterPackageUpdateServlet">
			<h1>Update Package</h1>
			<div class ="form-inner">
			<%List<Packageee> p = (List<Packageee>)request.getAttribute("details");
            	for(Packageee pack:p){
            %>
				<div class="input-holder">
					<input type="text" class="input-text" name="ActivityName" value="<%=pack.getActivityName()%>" required>
					<span class="label">Activity Name</span>
				</div>
		
				<div class="input-holder">
					<input type="text" class="input-text" name="TRName" value="<%=pack.gettRName()%>" required>
					<span class="label">Tour Guide Name</span>
				</div>
				
				<div class="input-holder">
					<input type="number" class="input-text" name="Amount" value="<%=pack.getAmount()%>" required>
					<span class="label">Amount</span>
				</div>
				
				<div class="input-holder">
					<input type="text" class="input-text" name="Location" required  value="<%=pack.getLocation()%>">
					<span class="label">Location</span>
				</div>
				
					<input type="hidden" value="<%=pack.getpID()%>" name="pid">
				<button type="submit">Update Package</button>
				
			  </div>
			</form>
			<%} %>
		</div>

    <div class="footer-dark" style="background-color: #282d32;margin-top: 370px;">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color: #f0f9ff;">Address</h3>
                        <ul style="color: #f0f9ff;"></ul>
                        <p style="color: #f0f9ff;"><br>No. 248/2, Vihara Mawatha, Hunupitiya, Wattala<br><br></p>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3 style="color: #f0f9ff;">Contact</h3>
                        <ul>
                            <li><a href="#" style="color: #f0f9ff;">Contact Us</a></li>
                        </ul>
                        <p style="color: #f0f9ff;"><br> Email: info@ceylontripsandtramps.com&nbsp;<br>Phone: +94 76 527 3911<br><br></p>
                    </div>
                    <div class="col-md-6 item text">
                        <h3 style="color: #f0f9ff;">Ceylon Trips and Tramps</h3>
                        <p style="color: #f0f9ff;"><br>Our passion is traveling! We believe in providing a personal touch <br>beyond just making your reservations. All our agents have traveled <br>extensively and have first-hand knowledge of the destinations we book <br>for. We are
                            in the business of making your travel arrangements <br>hassle-free. Contact us today to learn more about our offerings.<br><br></p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook" style="margin-left: 400px;"></i></a><a href="#"><i class="icon ion-social-twitter" style="margin-left: 10px;"></i></a><a href="#"><i class="icon ion-social-snapchat" style="margin-left: 10px;"></i></a>
                        <a
                            href="#"><i class="icon ion-social-instagram" style="margin-left: 10px;"></i></a>
                    </div>
                </div>
                <p class="copyright" style="color: #f0f9ff;">Ceylon Trips and Tramps © 2020</p>
            </div>
        </footer>
    </div>
    <script src="TourGuideReservation/js/jquery.min.js"></script>
    <script src="TourGuideReservation/bootstrap/js/bootstrap.min.js"></script>
    
</body>

</html>