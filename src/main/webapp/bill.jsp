<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>
<style>
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
       <a href="logout.jsp">Logout</a>
</div><br>
<FORM action="CustomerMedicineSelect.jsp" method="get">
<table border="1">
<tr>
<th>Medicine Name</th>
<th>Cost</th>
<th>Quantity</th>
</tr>
<%
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/patientsprofile";
String user = "root";
String password = "padamin1";
Class.forName(driverName);

Connection connection = null;
PreparedStatement ps = null;
ResultSet rs = null;
connection = DriverManager.getConnection(url, user, password);

//String name1=request.getParameter("name");
String sql ="SELECT * FROM medicine WHERE Customer_Name=?";
ps=connection.prepareStatement(sql);
ps.setObject(1,session.getAttribute("name"));
rs=ps.executeQuery();

while(rs.next())
{%>
<tr><td><% out.println(rs.getString("Medicine_Name"));%></td>
<td><% out.println(rs.getInt("Cost"));%></td>
<td><% out.println(rs.getString("Quantity"));%></td>
</tr>
<%
//int sum=0;
//int cost= Integer.parseInt(rs.getString("Cost"));
//sum+=cost;
///out.println(sum);
}%>
</table>
</FORM>


</body>
</html>