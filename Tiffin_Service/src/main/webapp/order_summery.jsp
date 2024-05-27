<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String startDate = request.getParameter("start_date");
int numWeeks = Integer.parseInt(request.getParameter("num_weeks"));
String[] meals = request.getParameterValues("meals");

String mealsString ;
if (meals != null && meals.length > 0) {
  mealsString = String.join(",", meals);
}

Connection conn = null;
PreparedStatement pstmt = null;

try {
  Class.forName("com.mysql.jdbc.Driver");
  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Roshan", "root", "root");
  pstmt = conn.prepareStatement("INSERT INTO daily_meal_orders (name, email, phone, address, start_date, num_weeks, meals) VALUES (?, ?, ?, ?, ?, ?, ?)");
  pstmt.setString(1, name);
  pstmt.setString(2, email);
  pstmt.setString(3, phone);
  pstmt.setString(4, address);
  pstmt.setString(5, startDate);
  pstmt.setInt(6, numWeeks);
  pstmt.setString(7, mealsString);
  pstmt.executeUpdate();
} catch (Exception e) {
  e.printStackTrace();
} finally {
  if (pstmt != null) {
    pstmt.close();
  }
  if (conn != null) {
    conn.close();
  }
}
%>


<html>
<head>
    <meta charset="UTF-8">
    <title>Order Summary</title>
</head>
<body>
    <h1>Order Summary</h1>
    <p>Thank you for your order!</p>
</body>
</html>
