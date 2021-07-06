<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/shop.css">
	<title>Doctor Login</title>
	<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc_appoint.jpg");

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
.heading {
  background: white;
  width: 200px;
  border-radius: 2px;
  text-align: center;
}
.navbar a.right {
  float: right;
}

.navbar a.active {
  background-color: #666;
  color: white;
}

.login-doc {
background: white;
  width: 250px;
  border-radius: 2px;
  text-align: center;
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
</div>	
  <br><br>

			<div class="loginform">
				<h1 class="heading">Doctor Login</h1>
				<form method="get" action="LoginDoctor.jsp">
					<p>
						<input type="text" name="email" pattern="[^ @]*@[^ @]*" value=""
							placeholder="Email" />
					</p>
					<p>
						<input type="password" name="password" value=""
							placeholder="Password" id="myInput"/>
							<input type="checkbox" onclick="myFunction()">Show Password
					</p>
					<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
					<p class="submit">
						<input type="submit" name="Login" value="Login">
					</p>
				</form></div>
				<div class="login-help">

				<p class="login-doc">
					New User? <a href="DoctorSignUp.jsp">Click here to Register</a>.
				</p></div>
				</div></div>

</body>
</html>
<!--  body>

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

<form method="get" action="LoginDoctor.jsp">

<center><h2 style="color:green">Doctor Login</h2></center>

<table border="1" align="center">

<tr>

<td>Enter Your Name :</td>

<td><input type="text" name="name"/></td>

</tr>

<tr>

<td>Enter Your Password :</td>

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

</body>
</html -->