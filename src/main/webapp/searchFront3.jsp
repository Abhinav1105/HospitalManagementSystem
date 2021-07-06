<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
<table border="1">
<tr>
<td>Name</td>
<td>Gender</td>
<td>Age</td>
<td>Home Address</td>
<td>Phone</td>
<td>Email ID</td>
<td>Password</td>
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

String name1=request.getParameter("name");
String sql ="SELECT * FROM doctorsignup WHERE Name=?";
ps=connection.prepareStatement(sql);
ps.setString(1,name1);
rs=ps.executeQuery();
while(rs.next())
{%>
<tr><td><% out.println(rs.getString("Name"));%></td>
<td><% out.println(rs.getString("Gender"));%></td>
<td><% out.println(rs.getString("Age"));%></td>
<td><% out.println(rs.getString("Home_Address"));%></td>
<td><% out.println(rs.getString("Phone"));%></td>
<td><% out.println(rs.getString("Email_ID"));%></td>
<td><% out.println(rs.getString("Password"));%></td>
</tr>
<%}%>
</table>

</body>
</html>