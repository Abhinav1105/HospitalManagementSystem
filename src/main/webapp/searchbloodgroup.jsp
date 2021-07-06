<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

 

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Blood Group Details</title>
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

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc11.jpg");

height: 100%;

 

  background-position: center;

  background-repeat: no-repeat;

  background-size: cover;

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

<th>Donor Name</th>

<th>History Of Donation</th>

<th>History Of Disease</th>

</tr>

<%

 

String driver = "com.mysql.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/";

String database = "patientsprofile";

String userid = "root";

String password = "padamin1";

 

Class.forName(driver);

 

Connection connection = null;

PreparedStatement ps=null;

ResultSet rs = null;

String col1= request.getParameter("bloodgroup");

session.setAttribute("naame",col1);

connection = DriverManager.getConnection(connectionUrl+database, userid, password);

String sql ="SELECT * FROM blooddonation WHERE BloodGroup=?";

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

<td><%=rs.getString("DonorName") %></td>

<td><%=rs.getString("HistoryOfDonation") %></td>

<td><%=rs.getString("HistoryOfDisease") %></td>

</tr>

 

<%

 

}while(rs.next());

%><font size="+3" color=maroon>Contact Admin for further details of the Donor</font>&emsp;&emsp;

<a href="contact.jsp"><button class="button button2">Contact Admin</button></a><br><br><br><%

 

 

}

else

{

                %><font size="+3" color=maroon>Sorry!!!

                No Donor Available!</font>

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