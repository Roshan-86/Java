<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<title>Login Page</title>
	<link rel="stylesheet" type="text/css" href="log.css">
</head>
<body>
	<header>
		<h1>Login to Tiffin Services</h1>
		<a href ="Admin.jsp" >Admin</a>
	</header>

	<main>
		<form action="login_process.jsp" method="post">
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password" required>
			</div>
			<button type="submit" class="cta-btn">Login</button>
			
			<a href ="Register.jsp" > Register here</a>
		</form>
	</main>

	

	<footer>
		<p>Tiffin Services provide by Roshan and Sachin.</p>
	</footer>


</body>
</html>