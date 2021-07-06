<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<style>
* {
  box-sizing: border-box;
}

/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 80px;
  text-align: center;
  background: #1abc9c;
  color: white;
}

/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
}

/* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
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


/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}

/* Active/current link */
.navbar a.active {
  background-color: #666;
  color: white;
}
.t0 {
  position: absolute;
  top: 0%;
  color: red;
}
.container {
  position: relative;
  width: 100%;
  
}

.container img {
  width: 100%;
  height: auto;
}
.text-block {
  position: absolute;
  bottom: 50px;
  right: 20px;
  background-color:white;
  color:black;
  padding-left: 20px;
  padding-right: 20px;
}
.btn {
  position: absolute;
  top: 20%;
  left: 20%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border-radius: 2%;
  margin: 5px;
  border: 2px solid black;
  box-shadow: 0 1px #999;
  background-size: 80%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/pharmacy.jpg');
  cursor: pointer;
}

.btn:hover {background-color: #3e8e41}

.btn:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.t1 {
  position: absolute;
  top: 35%;
  left:23%;
  color: red;
  cursor: pointer;
}



.btn1 {
  position: absolute;
  top: 20%;
  left: 40%;
  cursor: pointer;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border-radius: 2%;
  margin: 5px;
  border: 2px solid black;
  box-shadow: 0 1px #999;
  background-size: 100%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/headache.png');
}

.btn1:hover {background-color: #3e8e41}

.btn1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.t2 {
  position: absolute;
  top: 35%;
  left:40%;
  color: red;
  cursor: pointer;
}



.btn2 {
  position: absolute;
  top: 20%;
  left: 60%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border-radius: 2%;
  margin: 5px;
  cursor: pointer;
  border: 2px solid black;
  box-shadow: 0 1px #999;
  background-size: 80%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/doctor.jpg');
}

.btn2:hover {background-color: #3e8e41}

.btn2:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.t3 {
  position: absolute;
  top: 35%;
  left:65%;
  color: red;
  cursor: pointer;
}


.btn3 {
  position: absolute;
  top: 50%;
  left: 20%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: 2px solid black;
  cursor: pointer;
  border-radius: 2%;
  margin: 5px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  cursor: pointer;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/admin.jpg');

}

.btn3:hover {background-color: #3e8e41}

.btn3:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.t4 {
  position: absolute;
  top: 65%;
  left:17%;
  color: red;
  cursor: pointer;
}


.btn4 {
  position: absolute;
  top: 50%;
  left: 40%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: 2px solid black;
  cursor: pointer;
  border-radius: 2%;
  margin: 5px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  cursor: pointer;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/bloodbank.jpg');
}

.btn4:hover {background-color: #3e8e41}

.btn4:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.t5 {
  position: absolute;
  top: 65%;
  left:42%;
  color: red;
  cursor: pointer;
}


.btn5 {
  position: absolute;
  top: 50%;
  left: 60%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: 2px solid black;
  cursor: pointer;
  border-radius: 2%;
  margin: 5px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  cursor: pointer;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/contact.png');
}

.btn5:hover {background-color: #3e8e41}

.btn5:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.t6 {
  position: absolute;
  top: 65%;
  left:60%;
  color: red;
  cursor: pointer;
}

</style>
</head>
<body>
<div id="header">
    		<img src="C:/Users/ABHINAV/Desktop/p1/images/1.jpg" width="1000px" alt="" border="0" />
    		<div class="text-block">
    <p><font size="+4">STAR HOSPITAL</font></p>
</div>
</div>	
<div class="container">
  <img src="C:/Users/ABHINAV/Desktop/p1/images/2.jpg" alt="Snow">
  <div class="navbar">
  <div class="t0">
  <a href="#" class="active">Home</a>
  <a href="about.jsp">ABOUT</a>
  <a href="Page2.jsp">SIGN UP</a>
  <a href="admin.jsp"  class="right">ADMIN</a>
 </div>
</div>
  <a href="about.jsp"><button class="btn" ></button></a>
  <div class="t1"><b>ABOUT US</b></div>
  <a href="home2.jsp"><button class="btn1" ></button></a>
  <div class="t2"><b>&emsp;&emsp;&emsp;PATIENT</b></div>
  <a href="homeDoc.jsp"><button class="btn2" ></button></a>
  <div class="t3"><b>DOCTOR</b></div>
  <a href="feedback.jsp"><button class="btn3" ></button></a>
  <div class="t4"><b>&emsp;&emsp;&emsp;&emsp;FEEDBACK</b></div>
  <a href="index.jsp"><button class="btn4" ></button></a>
  <div class="t5"><b>&emsp;BLOOD BANK</b></div>
  <a href="contact.jsp"><button class="btn5" ></button></a>
  <div class="t6"><b>&emsp;CONTACT US</b></div>
  </div>
</body>
</html>
