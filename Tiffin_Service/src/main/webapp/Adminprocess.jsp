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
        String q = "SELECT * FROM user";

        stmt = conn.prepareStatement(q);
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    // Retrieve user data from the database
    rs = stmt.executeQuery();
%>
<html>
<head>
	<title>Admin Page</title>
</head>
<body>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tiffin Menu</title>
    <link rel="stylesheet" type="text/css" href="ap.css">
</head>
<body>
    <header>
        <h1>Tiffin Services</h1>
        <nav>
            <ul>
                <li><a href="logout.jsp">LogOut</a></li>
                <li>	<a href="Addm.jsp">new Add Daily meal</a></li>
            </ul>
        </nav>
    </header>
	<h1> Register User Data</h1>
	<table border=5>
		<tr>
			
			<th>Email</th>
			<th>Username</th>
			<th>Password</th>
			
		</tr>
		<%
			while (rs.next()) {
				
				String email = rs.getString("email");
				String username = rs.getString("username");
				String password = rs.getString("password");
		%>
		<tr>
			
			<td><%=email%></td>
			<td><%=username%></td>
			<td><%=password%></td>
		</tr>
		<%
			}
			
		%>
	</table>
	
				 	<h1> Special orders </h1>
				 	<table border=5>
				 		<tr>
				 			<th>ID</th>
				 			<th>userId</th>
				 			<th>Email</th>
				 			<th>Phone</th>
				 			<th>Address</th>
				 				<th>Meal_type</th>
				 					<th>Meal_Quantity</th>
				 						<th>Totalprice</th>
				 			
				 		</tr>
				 		<%
				 		String qu= "select * from orders";
				 					stmt=conn.prepareStatement(qu);
				 						rs = stmt.executeQuery();
				 				
				 				 			while (rs.next()) {
				 				 				String id = rs.getString("id");
				 								String name = rs.getString("name");
				 								String email = rs.getString("email");
				 								String address = rs.getString("address");
				 								String phone = rs.getString("phone");
				 								String type = rs.getString("meal_type");
				 								String quantity = rs.getString("meal_quantity");
				 								String price = rs.getString("total_price");
				 		%>
				 		<tr>
				 			<td><%=id%></td>
				 			<td><%=name%></td>
				 			<td><%=email%></td>
				 			<td><%=phone%></td>
				 			<td><%=address%></td>
				 			<td><%=type%></td>
				 			<td><%=quantity%></td>
				 			<td><%=price%></td>
				 			
				 </tr>			
	<%} %>
	
	</table>
<h1>Daily Oreder Meal dishes</h1>
	<table    border=5>
		<tr>
			
			<th>Name</th>
			<th>Price</th>
			 <th> Disc </th>
			
		</tr>
		<%
		String u= "select * from daily_meals";
			stmt=conn.prepareStatement(u);
				rs = stmt.executeQuery();
			while (rs.next()) {
				
				String name  = rs.getString("meal_name");
				String username = rs.getString("price");
		%>
		<tr>
			
			<td><%=name%></td>
			<td><%=username%></td>
			<td>This Dish is come with Three Rotis and one Rice plate</td>
		</tr>
		<tr>
	
		<%
			}
			
		%>
	</table>
<h1>Daily Meal Orders</h1>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Start Date</th>
				<th>Number of Weeks</th>
			</tr>
		</thead>
		<tbody>
			<%
			String sq = "SELECT * FROM daily_meal_orders";


					stmt = conn.prepareStatement(sq);
			 rs = stmt.executeQuery();
			
			while (rs.next()) {
				out.println("<tr>");
				out.println("<td>" + rs.getString("name") + "</td>");
				out.println("<td>" + rs.getString("email") + "</td>");
				out.println("<td>" + rs.getString("phone") + "</td>");
				out.println("<td>" + rs.getString("address") + "</td>");
				out.println("<td>" + rs.getString("start_date") + "</td>");
				out.println("<td>" + rs.getString("num_weeks") + "</td>");
			}
				%>

</tbody>
</table>


	
	</body>
	</html>