<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login2</title>
<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc.jpg");

height: 100%;

 

  background-position: center;

  background-repeat: no-repeat;

  background-size: cover;

}

.button {
  background-color:red; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  border-radius: 4px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}

.button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
 
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);

}
</style>

</head>
<body>

<center><p style="color:orange;font-size:50px;margin-top: 25%;"><b>Login AS..</b></p>
<br>
<form action="homeDoc.jsp" method="Post">
    <button class="button button2">DOCTOR</button>
</form>
<br><br>
<form action="home4.jsp" method="Post">
    <button class="button button2">PATIENT</button>
</form><br><br></center>
<br><br>
</body>
</html>