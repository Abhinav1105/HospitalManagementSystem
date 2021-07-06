<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.html"%>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="submit"],select
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

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 55%;
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
if ("invalid".equals(mssg))
{
	%>
	<center><font color="red" size="10">Sorry, Something Went Wrong. Try Again!</font></center>
	<%
}
%>
<br>
<div class="form-group">
  <br>
  <form action="stockAction.jsp" method="post">
   <center><h2>Select Blood Group</h2></center>
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
  
   <center><h2>Select Increased/Decreased</h2></center>
   <select name="incdec">
  <option value="inc">Increase</option>
  <option value="dec">Decrease</option>
  </select>
  
  <center><h2>No. of Units</h2></center>
  <input type="text" name="units" placeholder="Enter Units" required>
  <center><button type="submit" class="button">SAVE</button></center>
  </form>
  <br> 
</div>
<br>
<center>
<table id="customers">
<tr>
<th>Blood Groups</th>
<th>Units</th>
</tr>
<tr>
<%
String id = request.getParameter("id");
try {
	Connection conn = ConnectionProvider.getConn();
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from stock");
	while (rs.next())
	{
	%>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	</tr>
	<%
	}
}
catch(Exception e) {
	System.out.println(e);
} %>
</table>
</center>
<br>
<br>
<h3 class="centerAlign">Lets Bring A Life Back To Power</h3>
</body>
</html>