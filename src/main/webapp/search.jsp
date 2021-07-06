<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

 

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Search Details</title>
<style>
.button {
  background-color: #0000A0; /* Green */
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 8px;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}


table {
  border-collapse: collapse;
  width: 70%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #0000A0;
  color: white;
}
tr:hover {background-color:#f5f5f5;}
</style>

</head>

<body>

<table border="1">

<tr>


<th>Product Name</th>
<th>Description</th>

</tr>

<%

 

String driver = "com.mysql.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/database";

String database = "patientsprofile";

String userid = "root";

String password = "padamin1";

 

Class.forName(driver);

 

Connection connection = null;

PreparedStatement ps=null;

ResultSet rs = null;

String col1= request.getParameter("search");

session.setAttribute("search",col1);

connection = DriverManager.getConnection(connectionUrl+database, userid, password);

String sql ="SELECT * FROM products WHERE prod_name=?";

ps=connection.prepareStatement(sql);

//String name=request.getParameter("name");

//Object name1=session.getAttribute("naame");

//out.println(sql);

//String naame=name1.toString();

 

ps.setString(1,col1);

//out.println(ps);

 

//out.println(sql);

//statement.setString(1,col1);

rs = ps.executeQuery();

if(rs.next())

{

do

{

%>

 

<tr>

<td><%=rs.getString("prod_name") %></td>

<td><%=rs.getString("Description") %></td>
</tr>

 

<%

 

}while(rs.next());

%><%

 

 

}

else

{

                %>

                <tr>

                <td>-</td>

                <td>-</td>

                <td>-</td>

                </tr>

                <%

               

}

 

 

                connection.close();

                                %>

</body>

</html>