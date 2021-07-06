 

 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

 

    pageEncoding="ISO-8859-1"%>

   <%@ page import="java.sql.*" %>

 

<%@ page import="java.sql.*" %>

<!DOCTYPE html>

 

<html>

 

<head>

 

<meta charset="ISO-8859-1">

 

<title>Welcome Doctor</title>

<style>

body{

 

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/back.jpg");

 

 

height: 100%;

 

  background-position: center;

 

  background-repeat: no-repeat;

 

  background-size: cover;

 

}

.button {

  display: inline-block;

  border-radius: 4px;

  background-color: #f4511e;

  border: none;

  color: #FFFFFF;

  text-align: center;

  font-size: 20px;

  padding: 20px;

  width: 200px;

  transition: all 0.5s;

  cursor: pointer;

  margin: 5px;

}

 

.button span {

  cursor: pointer;

  display: inline-block;

  position: relative;

  transition: 0.5s;

}

 

.button span:after {

  content: '\00bb';

  position: absolute;

  opacity: 0;

  top: 0;

  right: -20px;

  transition: 0.5s;

}

 

.button:hover span {

  padding-right: 25px;

}

 

.button:hover span:after {

  opacity: 1;

  right: 0;

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

<div class="main">

                <div id="body">

 

                                <div class="navbar">

    <a href="about.jsp">About Us</a>

      <a href="start.jsp">Home</a>

       <a href="contact.jsp">Contact Us</a>
<a href="logout.jsp">Logout</a>
</div>  

 

  <br><br>

  <%

String driver = "com.mysql.jdbc.Driver";

 

String connectionUrl = "jdbc:mysql://localhost:3306/";

 

String database = "patientsprofile";

 

String userid = "root";

 

String password = "padamin1";

Connection connection = null;

 

PreparedStatement pss0=null;

 

ResultSet rss0 = null;

String col= (String)session.getAttribute("name");

//session.setAttribute("special",specialization);

//out.println(col);

connection = DriverManager.getConnection(connectionUrl+database, userid, password);

 

String sqll ="SELECT * FROM doctorsignup WHERE Email_Id=?";

pss0=connection.prepareStatement(sqll);

pss0.setString(1,col);

rss0 = pss0.executeQuery();

while(rss0.next())

{

                %>

                <center><h2>Welcome Dr. <%=rss0.getString("Name")%></h2>

<a href="DocChoose.jsp"><button class="button" style="vertical-align:middle"><span>Get Started >></span></button></a></center>

 

                <%

}

%>

 

</div></div>

 

</body>

 

</html>
