 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
String uname=request.getParameter("username");
String pass=request.getParameter("password");


ResultSet rs=null;
PreparedStatement ps=null;
Connection con=null;
String q="select * from user where username=? and password=?";
Class.forName("com.mysql.jdbc.Driver");
con= DriverManager.getConnection("jdbc:mysql://localhost:3306/Roshan","root","root");
ps=con.prepareStatement(q);
ps.setString(1, uname);
ps.setString(2, pass);

rs=ps.executeQuery();

if (rs.next()) {
// Valid credentials, redirect to the home page
response.sendRedirect("Index.html");
} else {
// Invalid credentials, display an error message
 String msg="Invalid username or password";
%>
<jsp:include page="login.jsp"/>
<%
}
%>
</body>
</html>