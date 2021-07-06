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

</style>

<body>

<%
String nme = request.getParameter("naame1");
if((!(nme.equals(null) || nme.equals(""))))

{

try{
%>
 <div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>
</div>	<br>
<h1 style="color:darkgreen"><center>Hello! Details of the doctor are below!</center></h1>
<table border="1">

<tr>

<td>Name</td>

<td>Gender</td>

<td>Age</td>

<td>Home_Address</td>

<td>Phone</td>

<td>Email_Id</td>
<td>Specialization</td>
<td>Clinic Name</td>
<td>Clinic Address</td>

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

String col1= request.getParameter("naame1");

session.setAttribute("naame1",col1);

connection = DriverManager.getConnection(connectionUrl+database, userid, password);

String sql ="SELECT * FROM doctorsignup WHERE Name=?";


ps=connection.prepareStatement(sql);
ps.setString(1,col1);

//out.println(ps);

 

//out.println(sql);

//statement.setString(1,col1);

rs = ps.executeQuery();

if(rs.next())

{ 



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

</tr>

 

<%
%>

</table>

<center><b><font size="+3" color="darkgreen" ><br>Select the slot</font></b></center><br><br><br><br>

<div class="t1"><a href="Morning1.jsp"><button class="button button1">Morning</button></a><br></div>

<div class="t2"><a href="Afternoon1.jsp"><button class="button1 button2">Afternoon</button></a></div>


<div class="t3"><a href="Evening1.jsp"><button class="button2 button3">Evening</button></a></div>
<%
}
else

response.sendRedirect("ErrorSearchDoc.jsp");

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

	getServletContext().getRequestDispatcher("/searchFront1.jsp").include(request, 
	response);

	}
//connection.close();
%>

</body>

</html>

