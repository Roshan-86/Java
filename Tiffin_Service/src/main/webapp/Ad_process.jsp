<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String  u=request.getParameter("username");
   String p=request.getParameter("password");
   
   if(u.equals("Roshan")||p.equals("roshan@123"))
   {  
	   out.print("<h1> Welcome Sir</h1>");
%>
<jsp:include page="Adminprocess.jsp"></jsp:include>
<%
   }
else
{
 out.print("Invalide Credintials.....................");

%>
<jsp:include page="Admin.jsp"></jsp:include>
<%} %>
</body>
</html>