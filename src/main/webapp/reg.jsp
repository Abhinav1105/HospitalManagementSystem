<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>

 

<%@ page import="java.sql.*" %>

 

<html>

 

<head>

 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 

<title>Search blood</title>
<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc12.jpg");

height: 100%;

 

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

 

Connection con= null;

 

//PreparedStatement ps = null;

 

ResultSet rs = null;

 

 

 

String driverName = "com.mysql.jdbc.Driver";

 

String url = "jdbc:mysql://localhost:3306/patientsprofile";

 

String user = "root";

 

String password = "padamin1";

 

 

 

try {

 

Class.forName(driverName);

 

con = DriverManager.getConnection(url, user, password);

%>

 

<form method="get" action="mongotry1.jsp">

 

<center><font size="+4" color="yellow"><b>Search Blood Group</b></font></center><br><br>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>
</div><br>
 

<TABLE "border="0.1" align="center">


 

<tr>

 

<td><b><font size="+2">Enter Blood group required :</font></b></td>

 

<td><input type="text" name="bloodgroup"/></td>

 

</tr>

 

<%

 

 

}

 

catch(SQLException sqe)

 

{

 

out.println("home"+sqe);

 

}

 

%>

 

</select>

 

</td>

 

</tr>

 

<tr>

 

<td></td>

 

<td><input type="submit" value="search"></td>

 

</table>

 

</form>

 

</body>

 

</html>