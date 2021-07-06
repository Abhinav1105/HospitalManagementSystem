 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %>

 

<%@ page import="java.sql.*" %>

 

<html>

 

<head>

 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 

<title>Check Appointments</title>
<style>
table {
  border-collapse: collapse;
  width: 50%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
tr:hover {background-color:#f5f5f5;}
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc14.jpg");


 
height: 100%;
background-repeat: no-repeat;
background-size: cover;
}
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
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
.navbar a.right {
  float: right;
}

.navbar a.active {
  background-color: #666;
  color: white;}
</style>
</head>
<body>

<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
         <a href="logout.jsp">Logout</a>
</div>	
 

<form method="get" action="CheckAppointments.jsp">

 

<center><h2 style="color:green">Appointments</h2></center>

 

<table width="40%" border="1" align="center">

 

<tr>

 

<td>Enter Date :</td>

 

<td><input type="text" name="appointmentdates" placeholder="DD/MM/YYYY"/></td>

 

</tr>

<tr>

 

<td></td>

 

<td><input type="submit" value="search"></td>

 

</table>

 <br><br>

</form>

<%

Connection con= null;

 

//PreparedStatement ps = null;

 

ResultSet rs1 = null,rs2=null;

PreparedStatement ps1=null,ps2=null;

 

 

String driverName = "com.mysql.jdbc.Driver";

 

String url = "jdbc:mysql://localhost:3306/patientsprofile";

 

String user = "root";

 

String password = "padamin1";

 

Class.forName(driverName);

 

con = DriverManager.getConnection(url, user, password);

 

String sql1 ="SELECT * FROM appointments WHERE DoctorEmail=?";

String col1= (String)session.getAttribute("name");

ps1=con.prepareStatement(sql1);

ps1.setString(1,col1);

rs1 = ps1.executeQuery();


if(rs1.next())

{

                %>

                <table border="1">

                                <tr>

                                <th>Name</th>

                                <th>Age</th>

                                <th>Height</th>

                                <th>Weight</th>

                                <th>Medical_history</th>

                                <th>Email</th>

                                <th>Phone</th>

                                <th>Time</th>

                                </tr>

                <%

do

{%>
	
                <% if(rs1.getString("Date").equals(request.getParameter("appointmentdates")))

                {
                	

                                String patientmail=rs1.getString("PatientEmail");

                                String timealloted=rs1.getString("Time");

                                String sql2 ="SELECT * FROM patientsignup WHERE Email=?";

                                ps2=con.prepareStatement(sql2);

                                ps2.setString(1,patientmail);

                                rs2 = ps2.executeQuery();

                                if(rs2.next())

                                {

                               

                                do

                                {

                                                %>

 

                                                <tr>

                                                <td><%=rs2.getString("Name") %></td>

                                                <td><%=rs2.getString("Age") %></td>

                                                <td><%=rs2.getString("Height") %></td>

                                                <td><%=rs2.getString("Weight") %></td>

                                                <td><%=rs2.getString("Medicalhistory") %></td>

                                                <td><%=rs2.getString("Email") %></td>

                                                <td><%=rs2.getString("Phone") %></td>
                                                <% int timeh=Integer.parseInt(rs1.getString("Time"));

                                                int timingh=timeh/60;

                                                int timingm=timeh%60;%>

                                                <td><%=timingh%>:<%=timingm%></td>

                                                </tr>

 

                                                <%

 

                                }while(rs2.next());

                                }

                }

}while(rs1.next());

}

%>

</table>

</body>

 

</html>

