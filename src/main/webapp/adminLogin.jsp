<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:35%;
	padding:15px;
	width:33%;	
	border-radius: 25px;
}
</style>
</head>
<body>
<div class="header">
  <div class="header-right">
    <a href="start.jsp">Home</a>
    <a href="index.jsp">Blood Bank</a>
    <a class="active" href="adminLogin.jsp">Admin Login</a>
  </div>
</div>
<body>
<div class="container">
<br>
<% 
String mssg = request.getParameter("mssg");
if ("invalid".equals(mssg))
{
	%>
	<center><font color="red" >Invalid Username or Password</font></center>
	<%
}
%>
  <center><h1>PLEASE FILL THE BELOW DETAILS TO LOGIN</h1></center>
  <form action="adminLoginAction.jsp" method="post">
  <div class="form-group">
  <center><h2>Username</h2></center>
  <input type="text" name="username" placeholder="Enter Your Username" required>
  <center><h2>Password</h2></center>
  <input type="password" name="password" placeholder="Enter Your Password" required>

  <center><button type="submit" class="button">SUBMIT</button></center>
  </div>
  </form>
<br>

</div>
<br>
<br>
<h3 class="centerAlign">Lets Bring A Life Back To Power</h3>
</body>
</html>
