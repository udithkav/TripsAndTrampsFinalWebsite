<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="FM/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="FM/assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="FM/assets/css/Contact-Form-Clean-1.css">
    <link rel="stylesheet" href="FM/assets/css/Contact-Form-Clean.css">
    <link rel="stylesheet" href="FM/assets/css/footer.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="FM/assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="FM/assets/css/styles.css">
<title>Insert title here</title>
</head>
<body>

	<div class="contact-clean">
        <form method="post" action="ViewIncomeandExpenseServlet">
        
            <h2 class="text-center">LogIn</h2>
            <label>Username</label>
            <div class="form-group"><input class="form-control"  type="text" name="name" placeholder="Username"></div>
            <label>Password</label>
            <div class="form-group"><input class="form-control"  type="text" name="password" placeholder="Password"></div>
            
            
            <div class="form-group"><button class="btn btn-primary" type="submit">Login</button></div>
        </form>
    </div>

	<script src="FM/assets/js/jquery.min.js"></script>
    <script src="FM/assets/bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>