<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
.mySlides {display:none;}

input[type="text"], input[type="mail"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	margin-left:2%;
	padding:15px;	
}
</style>
</head>
<body>

<div class="header">
  <div class="header-right">
    <a class="active" href="start.jsp">Home</a>
    <a href="adminLogin.jsp">Admin</a>
  </div>
</div>

<div style="max-width:100%">
  <img class="mySlides"  src="slide1.jpg" >
  <img class="mySlides"  src="slide2.png" >
</div>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>


<body>
<br>
<%
String mssg = request.getParameter("mssg");
if ("valid".equals(mssg))
{
	%>
	<center><font color="red" size="10">Thanks For Saving A Life</font></center>
	<%
}
%>
<%
if ("invalid".equals(mssg))
{
	%>
	<center><font color="red" size="10">Sorry, Invalid Data. Try Again!</font></center>
	<%
}
%>
<br>
<div>
  <br>
  <h1 class="centerAlign">PLEASE FILL THE BELOW DETAILS TO REQUEST FOR BLOOD</h1>
  <form action="formAction.jsp" method="post">
  <div class="centerAlign">
  <input type="text" name="name" placeholder="Enter Your FullName" required>
  <input type="text" name="bloodgroup" placeholder="Enter Blood Group Required" required>
  <input type="text" name="phone" placeholder="Enter Your Phone No." required>
  <input type="text" name="location" placeholder="Enter Your Location" required>
  <button type="submit" class="button1">SUBMIT</button>
  </div>
  </form>
  <br> 
</div>
<h3 class="centerAlign">Lets Bring A Life Back To Power</h3>

</body>
</html>

