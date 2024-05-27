<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ include file="dbconnection.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Placed</title>
    <link rel="stylesheet" type="text/css" href="po.css">
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
    <section class="order-confirmation">
        <h3>Order Confirmation</h3>
        <%
            // get form data
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String mealType = request.getParameter("meal_type");
            int mealQuantity = Integer.parseInt(request.getParameter("meal_quantity"));
            double totalPrice = mealQuantity * (mealType.equals("Vegetarian") ? 80.0: 150.0 );

            // insert data into database
            try {
            	Class.forName("com.mysql.jdbc.Driver");
            	con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Roshan","root","root");
            	PreparedStatement ps = con.prepareStatement("INSERT INTO orders (name, email, phone, address, meal_type, meal_quantity, total_price) VALUES (?, ?, ?, ?, ?, ?, ?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, phone);
                ps.setString(4, address);
                ps.setString(5, mealType);
                ps.setInt(6, mealQuantity);
                ps.setDouble(7, totalPrice);
                int rows = ps.executeUpdate();
                if (rows > 0) {
        %>
                    <p>Your order has been placed successfully!</p>
                    <p>Name: <%= name %></p>
                    <p>Email: <%= email %></p>
                    <p>Phone: <%= phone %></p>
                    <p>Address: <%= address %></p>
                    <p>Meal Type: <%= mealType %></p>
                    <p>Meal Quantity: <%= mealQuantity %></p>
                    <p>Total Price: <%= totalPrice %></p>
                    
                    <a href ="payment.jsp" > Pay Here</a>
        <%
        
                } 
                else 
                {
        %>
                    <p>Sorry, there was an error placing your order. Please try again later.</p>
        <%
                }
              
            } catch (SQLException e) {
                e.printStackTrace();
        %>
                <p>Sorry, there was an error placing your order. Please try again later.</p>
        <%
            }
        %>
    </section>
    <footer>
        <p> Tiffin Services provide by Roshan and Sachin.</p>
    </footer>
</body>
</html>
