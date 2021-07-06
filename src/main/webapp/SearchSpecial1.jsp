<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

<%

 

%>

<!DOCTYPE html>

<html>

<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc25.jpg");


 
height: 100%;


  background-repeat: no-repeat;

  background-size: cover;

}
.button {
  background-color: #4CAF50; /* Green */
  top: 50%;
  left: 25%;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}
.button1 {
   background-color: #4CAF50;
  color: white;
}

.button1:hover {
 
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}
.t1 {
  position: absolute;
  top: 50%;
  left:20%;
  color: red;
}


.button1 {
  background-color: #4CAF50; /* Green */
  top: 50%;
  left: 40%;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}
.button2 {
   background-color: #4CAF50;
  color: white;
}

.button2:hover {
 
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button2 {
  background-color: #4CAF50; /* Green */
  top: 50%;
  left: 55%;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}

.t2 {
  position: absolute;
  top: 50%;
  left:40%;
  color: red;
}

.button3 {
   background-color: #4CAF50;
  color: white;
}

.button3:hover {
 
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}
.t3 {
  position: absolute;
  top: 50%;
  left:60%;
  color: red;
}
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
table {
  border-collapse: collapse;
  width: 50%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #0000A0;
  color: white;
}
tr:hover {background-color:#f5f5f5;}
</style>

<body>
<%

String nme = request.getParameter("naame");
if((!(nme.equals(null) || nme.equals(""))))

{



try {


%>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>
</div>	
<form method="get" action="search3.jsp">

<center><h2 style="color:green">Search Doctor</h2></center>

<table border="1" align="center">

<tr>

<td>Enter Doctor Name :</td>

<td><input type="text" name="naame1"/></td>

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


<%
/*String nme = request.getParameter("naame");
if((!(nme.equals(null) || nme.equals(""))))

{*/

try{
%>
 	<br>
<h1 style="color:darkgreen"><center>Hello! Details of the doctor are below!</center></h1>
<table border="1">

<tr>

<th>Name</th>

<th>Gender</th>

<th>Age</th>

<th>Home_Address</th>

<th>Phone</th>

<th>Email_Id</th>
<th>Specialization</th>
<th>Clinic Name</th>
<th>Clinic Address</th>
<th>Minimum fees charged</th>
</tr>

<%

 

String driver = "com.mysql.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/";

String database = "patientsprofile";

String userid = "root";

String password = "padamin1";

 

Class.forName(driver);

 

Connection connection = null;

PreparedStatement ps=null;

ResultSet rs = null;

String col1= request.getParameter("naame");

session.setAttribute("naame",col1);

connection = DriverManager.getConnection(connectionUrl+database, userid, password);

String sql ="SELECT * FROM doctorsignup WHERE Specialization=?";


ps=connection.prepareStatement(sql);
ps.setString(1,col1);

//out.println(ps);

 

//out.println(sql);

//statement.setString(1,col1);

rs = ps.executeQuery();


while(rs.next()){
%>
<tr>

<td><%=rs.getString("Name") %></td>

<td><%=rs.getString("Gender") %></td>

<td><%=rs.getString("Age") %></td>

<td><%=rs.getString("Home_Address") %></td>

<td><%=rs.getString("Phone") %></td>

<td><%=rs.getString("Email_Id") %></td>

<td><%=rs.getString("Specialization") %></td>

<td><%=rs.getString("Clinic_Name") %></td>

<td><%=rs.getString("Clinic_Address") %></td>

<td><%=rs.getString("Min_Fees") %></td>
</tr>

 

<%}
%>

</table>
<%



rs.close();

ps.close(); 

}
catch(SQLException sqe)

{

out.println(sqe);

} }
else
{
%>
<center><font color="red"><h2>Error In Login</h2></font></center>
<% 

	getServletContext().getRequestDispatcher("/SearchSpecial.jsp").include(request, 
	response);

	}
//connection.close();
%>

</body>

</html>

