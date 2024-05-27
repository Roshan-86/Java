<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Payment</title>
	<link rel="stylesheet" type="text/css" href="payment.css">
</head>
<body>
	<header>
        <h1>Tiffin Services</h1>
        <nav>
            <ul>
                <li><a href="Index.html">Home</a></li>
                <li><a href="menu.jsp">Menu</a></li>
                <li><a href="logout.jsp">LogOut</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <section class="payment">
    	<h3>Payment Details</h3>
    	<form action="payment_success.jsp" method="post">
    		<label for="card_number">Card Number:</label>
    		<input type="text" id="card_number" name="card_number" required>
    		<label for="expiration_date">Expiration Date:</label>
    		<input type="month" id="expiration_date" name="expiration_date" required>
    		<label for="cvv">CVV:</label>
    		<input type="password" id="cvv" name="cvv" minlength="3" maxlength="3" required>
    		<input type="submit" value="Pay">
    	</form>
    </section>
    <footer>
        <p> Tiffin Services by Roshan And Sachin.</p>
    </footer>
</body>
</html>
