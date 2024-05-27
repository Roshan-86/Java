<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add Meal</title>
</head>
<body>
	<%
		// Establish a database connection
		Connection conn = null;
		PreparedStatement stmt = null;
		String dbURL = "jdbc:mysql://localhost:3306/Roshan";
		String dbUser = "root";
		String dbPass = "root";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// Insert meal data into the database
		if (request.getMethod().equalsIgnoreCase("post")) {
			String name = request.getParameter("name");
			double price = Double.parseDouble(request.getParameter("price"));
			String query = "INSERT INTO daily_meals (meal_name, price) VALUES (?, ?)";
			try {
				stmt = conn.prepareStatement(query);
				stmt.setString(1, name);
				stmt.setDouble(2, price);
				stmt.executeUpdate();
				out.println("<h2>Meal added successfully!</h2>");
			} catch (SQLException e) {
				out.println("<h2>Error adding meal: " + e.getMessage() + "</h2>");
			}
		}
	%>
	<h1>Add Meal</h1>
	<form method="post">
		<label for="name">Name:</label>
		<input type="text" name="name" required><br>
		<label for="price">Price:</label>
		<input type="number" name="price" step="0.01" min="0" required><br>
		<input type="submit" value="Add Meal">
	</form>
</body>
</html>
