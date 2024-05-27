<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%
    // Establish a database connection
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    String dbURL = "jdbc:mysql://localhost:3306/Roshan";
    String dbUser = "root";
    String dbPass = "root";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        String q = "SELECT * FROM daily_meals";

        stmt = conn.prepareStatement(q);
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    // Retrieve user data from the database
    rs = stmt.executeQuery();
    
%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" type="text/css" href="menu.css">
</head>
<body bgcolor="cyan">
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
<h1>Daily Oreder Meal dishes</h1>
	<table border=5>
		<tr>
			
			<th>Name</th>
			<th>Price</th>
			 <th> Disc </th>
			
		</tr>
		<%
			while (rs.next()) {
				
				String name  = rs.getString("meal_name");
				String username = rs.getString("price");
		%>
		<tr>
			
			<td><%=name%></td>
			<td><%=username%></td>
			<td>This Dish is come with Three Rotis and one Rice plate</td>
		</tr>
		<%
			}
			
		%>
	</table>
	
	

</body>
</html>
<%
  
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
    } catch (Exception e) {
        e.printStackTrace();
    }

    // Retrieve daily meals from the database
    String mealsQuery = "SELECT * FROM daily_meals";
    stmt = conn.prepareStatement(mealsQuery);
    rs = stmt.executeQuery();
    LinkedList<String> mealNames = new LinkedList<String>();
    while (rs.next()) {
        mealNames.add(rs.getString("meal_name"));
    }

    // Close the database connection
    rs.close();
    stmt.close();
    conn.close();
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Order Daily Meals</title>
</head>
<body>
    <h1>Order Daily Meals</h1>
    <form method="post" action="order_summery.jsp">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br><br>

        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required>
        <br><br>

        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="5" cols="30" required></textarea>
        <br><br>

        <label for="start_date">Start Date:</label>
        <input type="date" id="start_date" name="start_date" required>
        <br><br>

        <label for="num_weeks">Number of Weeks:</label>
        <input type="number" id="num_weeks" name="num_weeks" min="1" max="4" required>
        <br><br>

        <p>Select the meals you would like to receive:</p>
        <% for (String mealName : mealNames) { %>
            <label>
                <input type="checkbox" name="meals[]" value="<%=mealName%>">
                <%=mealName%>
            </label>
            <br>
        <% } %>

        <br><br>
        <input type="submit" value="Submit Order">
    </form>
</body>
</html>
