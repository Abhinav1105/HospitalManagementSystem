<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Welcome Admin</title>
<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc8.jpg");

height: 100%;

 

  background-position: center;

  background-repeat: no-repeat;

  background-size: cover;

}
.btn {

  background-color: #f4511e;
  border-radius: 4px;
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  background-size: 100%;
  transition: 0.3s;
}

.btn:hover {opacity: 1}



.btn1 {
	
  background-color: #f4511e;
   border-radius: 4px;
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  background-size: 100%;
  transition: 0.3s;
}

.btn1:hover {opacity: 1}



.btn2 {

  background-color: #f4511e;
  border: none;
  color: white;
  padding: 10px 32px;
   border-radius: 4px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  background-size: 100%;
 transition: 0.3s;
}

.btn2:hover {opacity: 1}
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
</div>	
<center>
<p><font color="red" size="+6"><b>Welcome, Admin</b></font></p>
<br>
<form action="medicine_admin.jsp" method="Post">
    <button class="btn">Medicines Purchased</button></form><br><br><br>
<form action="feedback_summary.jsp" method="Post">
    <button class="btn">View Feedbacks</button>
</form>
</center>
</body>

</html>