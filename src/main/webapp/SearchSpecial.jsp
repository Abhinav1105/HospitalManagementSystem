<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>

<%@ page import="java.sql.*" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Search Doctor By Specialization</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/back.jpg");


 
height: 100%;
width: 100%;
  background-position: center;

  background-repeat: no-repeat;

  background-size: cover;

}
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  background: #333;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
.navbar a.right {
  float: right;
}

.navbar a.active {
  background-color: #666;
  color: white;
}
</style>


</head>

<body>

<%





try {


%>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>
</div>	
<form method="get" action="SearchSpecial1.jsp">

<center><h2 style="color:green">Search Doctor By Specialization</h2></center>

<table border="1" align="center">

<tr>

<td>Enter Specialization :</td>

<td><select name="naame">
		<option value="-" selected="selected">-</option>
		
		<option value="cardiologist">cardiologist</option>
		<option value="general physician">general physician</option>
		<option value="neurologist">neurologist</option>
		<option value="pediatrician">pediatrician</option>
		<option value="gyanecologist">gyanecologist</option>
		<option value="psychiatrist">psychiatrist</option>
		<option value="nephrologist">nephrologist</option>
		<option value="surgeon">surgeon</option>
		<option value="opthalmologist">opthalmologist</option>
		<option value="dermatologist">dermatologist</option>
		<option value="gastroenterologist">gastroenterologist</option>
		<option value="orthopedist">orthopedist</option>
		</select></td>

</tr>

<% 

}

catch(Exception sqe)

{

out.println("home"+sqe);

}

%>
<tr>

<td></td>

<td><input type="submit" value="search"></td>

</table>

</form>


</body>

</html>