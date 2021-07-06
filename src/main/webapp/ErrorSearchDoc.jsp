


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login Doctor Search Error</title>

</head>

<body>

<center><h2><p style="color:red">Sorry, Doctor not found<br>Search Again</p></h2><br>
</center>

<%

getServletContext().getRequestDispatcher("/searchFront1.jsp").include(request, 
response);

%>

</body>

</html>