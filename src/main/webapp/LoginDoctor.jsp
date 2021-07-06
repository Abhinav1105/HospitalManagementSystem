<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %> <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Doctor</title>
</head>
<body>

<%! String userdbName;

String userdbPsw;

String dbUsertype;

%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;



String driverName = "com.mysql.jdbc.Driver";

String url = "jdbc:mysql://localhost:3306/patientsprofile";

String user = "root";

String dbpsw = "padamin1";



String sql = "select Email_Id,Password from doctorsignup where Email_Id=? and password=?";



String name = request.getParameter("email");

String password = request.getParameter("password");


if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || 
password.equals(""))))

{

try{

Class.forName(driverName);

con = DriverManager.getConnection(url, user, dbpsw);

ps = con.prepareStatement(sql);

ps.setString(1, name);

ps.setString(2, password);

rs = ps.executeQuery();

if(rs.next())

{ 

userdbName = rs.getString("Email_Id");

userdbPsw = rs.getString("password");

if(name.equals(userdbName) && password.equals(userdbPsw))

{

session.setAttribute("name",userdbName);

response.sendRedirect("welcomeDoc.jsp"); 

} 

}

else

response.sendRedirect("error_doc.jsp");

rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Error In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/homeDoc.jsp").include(request, 
response);

}

%>

</body>
</html>