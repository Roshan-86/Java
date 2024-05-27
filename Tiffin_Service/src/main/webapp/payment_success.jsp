<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
// Get the form data
String cardNumber = request.getParameter("card_number");
String expirationDate = request.getParameter("expiration_date");
String cvv = request.getParameter("cvv");


Connection con =null;
con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Roshan","root","root");

// Insert the data into the database
String query = "INSERT INTO payment (card_number, expiration_date, cvv) VALUES (?, ?, ?)";
PreparedStatement stmt = con.prepareStatement(query);
stmt.setString(1, cardNumber);
stmt.setString(2, expirationDate);
stmt.setString(3, cvv);
stmt.executeUpdate();

// Close the database connection
%>

<html>
<head>
	<title>Payment Success</title>
    <link rel="stylesheet" type="text/css" href="menu.css">
</head>
<body>
    <header>
        <h1>Tiffin Services</h1>
        <nav>
            <ul>
                <li><a href="Index.html">Home</a></li>
                <li><a href="logout.jsp">LogOut</a></li>
                <li><a href="dailly.jsp">For_Dailly_orders</a></li>
            </ul>
        </nav>
    </header>
    <section class="payment-success">
		<h3>Payment Successful!</h3>
		<p>Thank you for your payment. Your transaction has been completed successfully.</p>
		<p>Card Number: <%= request.getParameter("card_number") %></p>
		<p>Expiration Date: <%= request.getParameter("expiration_date") %></p>
		<p>CVV: <%= request.getParameter("cvv") %></p>
	</section>
</body>
</html>