<%@include file="header.html"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
img{
width:100%;
height:609px;
}</style>
</head>
<body>
<br>
<div style="max-width:100%">
  <img class="mySlides"  src="welcome.jpg" >
  <img class="mySlides"  src="admin.PNG" >
   <img class="mySlides"  src="slide1.jpg" >
   <img class="mySlides"  src="slide2.jpg" >
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
    setTimeout(carousel, 2000);
}
</script>
<br>
<h3></h3>
</body>
</html>