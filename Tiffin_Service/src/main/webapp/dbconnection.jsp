<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
    String url = "jdbc:mysql://localhost:3306/Roshan";
    String username = "root";
    String password = "root";
    Connection con = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, username, password);
        out.println("Connected to the database successfully");
    } catch (Exception e) {
        out.println("Failed to connect to the database");
    }
    session.setAttribute("con", con);
%>

</body>
</html>