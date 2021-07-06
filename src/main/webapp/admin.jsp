<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc4.jpg");

height: 100%;

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
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
</div><br>
<table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
  <tr align="justify">
    <td valign="top">
   		   
				  <%  out.print("<font color=red><center><b><h1>WELCOME TO ADMIN LOGIN</h1></b></center><br><br>");
	%>
    <%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/patientsprofile";

String user = "root";

String password = "padamin1";



try {

Class.forName(driverName);

con = DriverManager.getConnection(url, user, password);
%>

<form method="get" action="adminprocess.jsp">

<table border="1" align="center">

<tr>

<td>USERNAME :</td>

<td><input type="text" name="username"/></td>

</tr>

<tr>

<td>PASSWORD :</td>

<td><input type="password" name="password"/></td>

</tr>

<% 

}

catch(SQLException sqe)

{

out.println("home"+sqe);

}

%>

<tr>

<td></td>

<td><input type="submit" value="submit"></td>

</table>

</form>
			
		
   
  </tr>
</table>




</body>
</html>



