<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login Admin Error</title>

</head>

<body>

<center><p style="color:red">Sorry, your record is not available.</p><br>
<form action="admin.jsp" method="Post">
    <input type="submit"value="Go Back">
</form></center>

<%

getServletContext().getRequestDispatcher("/admin.jsp").include(request, 
response);

%>

</body>

</html>