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
	</header>

	<main>
		<form action="Ad_process.jsp" method="post">
			<div class="form-group">
				<label for="username">Username:</label>
				<input type="text" id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="password" id="password" name="password" required>
			</div>
			<button type="submit" class="cta-btn">Login</button>
		</form>
	</main>

	

	<footer>
		<p>Tiffin Services provide by Roshan and Sachin.</p>
	</footer>


</body>
</html>