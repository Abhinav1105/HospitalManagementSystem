<%@include file="header.html"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
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
String mssg = request.getParameter("mssg");
if ("valid".equals(mssg))
{
	%>
	<center><font color="red" size="10">Updated Successfully!</font></center>
	<%
}
%>
<%
if ("invalid".equals(mssg))
{
	%>
	<center><font color="red" size="10">Sorry, Please Try Again!</font></center>
	<%
}
%>
<%
int id = 1;
try {
	Connection conn = ConnectionProvider.getConn();
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from donor");
	if (rs.next())
	{
		
		id = rs.getInt(1);
		id = id + 1;
	}
	%>
	
	<div class="container">
	<h1 style="color:red;"> Donor Id:<% out.println(id);%></h1>
	<%
} catch (Exception e) {
	System.out.println("donor main form");
}
%>
  <div class="container">
  <form action="addDonorAction.jsp" method="post">
  <input type="hidden" name="id" value="<% out.println(id);%>" required>
  <h2>Name</h2>
  <input type="text" name="name" placeholder="Enter Your FullName" required>
  <hr>
  <h2>Father Name</h2>
  <input type="text" name="father" placeholder="Enter Your Father Name" required>
   <hr>
   <h2>Mother Name</h2>
  <input type="text" name="mother" placeholder="Enter Your Mother Name" required>
   <hr>
   <h2>Gender</h2>
  <select name="gender">
  <option value="male">Male</option>
  <option value="female">Female</option>
  <option value="others">Others</option>
  </select>
   <hr>
   <h2>Blood Group</h2>
   <select name="bloodgroup">
  <option value="A+">A+</option>
  <option value="A-">A-</option>
  <option value="B+">B+</option>
  <option value="B-">B-</option>
  <option value="O+">O+</option>
  <option value="O-">O-</option>
  <option value="AB+">AB+</option>
  <option value="AB-">AB-</option>
  </select>
   <hr>
   <h2>Phone Number</h2>
   <input type="text" name="phone" placeholder="Enter Your Phone" required>
   <hr>
   <h2>Location</h2>
   <input type="text" name="location" placeholder="Enter Your Location" required>
  <center><button type="submit" class="button">Save</button></censter>
<br>
<br>
<h3 class="centerAlign">Lets Bring A Life Back To Power</h3>

</body>
</html>