<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>

<%@ page import="java.sql.*" %>
<html>
<head>
<style>
.container {
  position: relative;
  width: 100%;
  
}

.container img {
  width: 100%;
  height: auto;
}
.btn {
  position: absolute;
  top: 20%;
  left: 25%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: none;
  cursor: pointer;
  border-radius: 10px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/fever.jpg');
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
  left:30%;
  color: red;
}



.btn1 {
  position: absolute;
  top: 20%;
  left: 40%;
  
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: none;
  cursor: pointer;
  border-radius: 10px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/cold.png');
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
}



.btn2 {
  position: absolute;
  top: 20%;
  left: 55%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: none;
  cursor: pointer;
  border-radius: 10px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/allergy.png');
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
  left:60%;
  color: red;
}


.btn3 {
  position: absolute;
  top: 50%;
  left: 25%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: none;
  cursor: pointer;
  border-radius: 10px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/stomach.jpg');
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
  left:22%;
  color: red;
}


.btn4 {
  position: absolute;
  top: 50%;
  left: 40%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: none;
  cursor: pointer;
  border-radius: 10px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/headache.png');
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
}


.btn5 {
  position: absolute;
  top: 50%;
  left: 55%;
  color: black;
  font-size: 16px;
  padding: 40px 75px;
  border: none;
  cursor: pointer;
  border-radius: 10px;
  box-shadow: 0 1px #999;
  background-size: 100%;
  background-image:url('C:/Users/ABHINAV/Desktop/p1/images/heart.jpg');
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
  left:55%;
  color: red;
}

</style>
</head>
<body>



<div class="container">
  <img src="C:/Users/ABHINAV/Desktop/p1/images/background.jpg" alt="Snow">
  <a href="Page1.jsp"><button class="btn" ></button></a>
  <div class="t1"><b>FEVER</b></div>
  <button class="btn1" ></button>
  <div class="t2"><b>COUGH AND COLD</b></div>
  <button class="btn2" ></button>
  <div class="t3"><b>ALLERGY</b></div>
  <button class="btn3" ></button>
  <div class="t4"><b>STOMACH AILMENTS</b></div>
  <button class="btn4" ></button>
  <div class="t5"><b>HEADACHE</b></div>
  <button class="btn5" ></button>
  <div class="t6"><b>HEART AILMENTS</b></div></div>
</body>
</html>
