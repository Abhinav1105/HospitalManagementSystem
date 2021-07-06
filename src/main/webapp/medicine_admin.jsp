<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicines purchased</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/back1.jpg");


 
height: 100%;
background-repeat: no-repeat;
background-size: cover;
}
table {
  border-collapse: collapse;
  width: 60%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
tr:hover {background-color:#f5f5f5;}
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
  color: white;}
</style>
</head>
<body>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
         <a href="logout.jsp">Logout</a>
</div>	<br>
<table border="1">
<tr>
<th>Medicine</th>
<th>Cost</th>
<th>Quantity</th>
<th>Customer name</th>
</tr>
<%
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/patientsprofile";
String user = "root";
String password = "mysql";
Class.forName(driverName);

Connection connection = null;
PreparedStatement ps = null;
ResultSet rs = null;
connection = DriverManager.getConnection(url, user, password);

//String name1=request.getParameter("name");
String sql ="SELECT * FROM medicine ";
ps=connection.prepareStatement(sql);
rs=ps.executeQuery();

while(rs.next())
{%>
<tr><td><% out.println(rs.getString("Medicine_Name"));%></td>
<td><% out.println(rs.getString("cost"));%></td>
<td><% out.println(rs.getInt("Quantity"));%></td>
<td><% out.println(rs.getString("Customer_Name"));%></td>
</tr>
<%
}%>
</table>
</body>
</html>