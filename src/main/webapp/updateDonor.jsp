<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>

<%
String id = request.getParameter("id");
try {
	Connection conn = ConnectionProvider.getConn();
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from donor where id='"+id+"'");
	while (rs.next())
	{
	%>
	
	<div class="container">
  <form action="updateDonorAction.jsp" method="post">
  <input type="hidden" name="id" value="<% out.println(id);%>" required>
  <h2>Name</h2>
  <input type="text" name="name" value="<%=rs.getString(2)%>">
  <hr>
  <h2>Father Name</h2>
  <input type="text" name="father" value="<%=rs.getString(3)%>">
   <hr>
   <h2>Mother Name</h2>
  <input type="text" name="mother" value="<%=rs.getString(4)%>">
   <hr>
   <h2>Phone Number</h2>
   <input type="text" name="phone" value="<%=rs.getString(7)%>">
   <hr>
   <h2>Location</h2>
   <input type="text" name="location" value="<%=rs.getString(8)%>">
  <center><button type="submit" class="button">Save</button></censter>
<%
}	
} catch (Exception e) {
	System.out.println(e);
}
%>


<br>
<br>
<br>
<br>
<h3 class="centerAlign">Lets Bring A Life Back To Power</h3>

</body>
</html>