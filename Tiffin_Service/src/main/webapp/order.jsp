<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>Order Form</title>
    <link rel="stylesheet" type="text/css" href="order.css">
</head>
<body>
    <header>
        <h1>Tiffin Services</h1>
        <nav>
            <ul>
                <li><a href="Index.html">Home</a></li>
                <li><a href="menu.jsp">Menu</a></li>
                <li><a href="logout.jsp">logOut</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <section class="order-form">
        <h3>Order Form</h3>
        <form action="placeorder.jsp" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>
            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required><br><br>
            <label for="address">Address:</label>
            <textarea id="address" name="address" required></textarea><br><br>
            <label for="meal_type">Meal Type:</label>
            <select id="meal_type" name="meal_type" required>
                <option value="">Select</option>
                <option value="Vegetarian">Vegetarian</option>
                <option value="Non-Vegetarian">Non-Vegetarian</option>
                 <option value="Vegetarian">Chole Bature</option>
                <option value="Non-Vegetarian">Rajma chawal</option>
                 <option value="Vegetarian">Butter Chiken</option>
                <option value="Non-Vegetarian">Mutton Biryani</option>
            </select><br><br>
            <label for="meal_quantity">Meal Quantity:</label>
            <input type="number" id="meal_quantity" name="meal_quantity" required><br><br>
            <label for="total_price">Total Price:</label>
            <input type="text" id="total_price" name="total_price" readonly><br><br>
            <input type="submit" value="Place Order">
        </form>
    </section>
    <footer>
        <p> Tiffin Services provide by Roshan and Sachin.</p>
    </footer>
</body>
</html>

</body>
</html>