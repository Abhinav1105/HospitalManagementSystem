<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
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
if ("deleted".equals(mssg))
{
	%>
	<center><font color="red" size="10">Deleted Successfully!</font></center>
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
<br>
<center>
<table id="customers">
<tr>
<th>ID</th>
<th>Name</th>
<th>Father Name</th>
<th>Mother Name</th>
<th>Gender</th>
<th>Bloodgroup</th>
<th>Phone No.</th>
<th>Location</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<%
try {
	Connection conn = ConnectionProvider.getConn();
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from donor");
	while (rs.next())
	{
		%>
		<td><%=rs.getInt(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %></td>
		<td><%=rs.getString(7) %></td>
		<td><%=rs.getString(8) %></td>
		<td><a href="updateDonor.jsp?id=<%=rs.getInt(1)%>">Edit</a></td>
		<td><a href="deleteDonor.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
		</tr>
	<%}
} catch (Exception e) {
	System.out.println(e);
}
%>
	</table>
</center>
<br>
<br>
<center><h3>Lets Bring A Life Back To Power</h3></center>
</body>
</html>