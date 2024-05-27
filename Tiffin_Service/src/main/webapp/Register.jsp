<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Register for Tiffin Services</title>
	<link rel="stylesheet" type="text/css" href="reg.css">
</head>
<body>
	<header>
		<h1>Register for Tiffin Services</h1>
	</header>

	<main>
		<form action="register_process.jsp" method="post">
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="email">Email:</label>
				<input type="email" id="email" name="email" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password" required>
			</div>
			
			<button type="submit" class="cta-btn">Register</button>
		</form>
	</main>

	<footer>
		<p>Tiffin Services by Roshan And Sachin</p>
	</footer>
</body>
</html>
