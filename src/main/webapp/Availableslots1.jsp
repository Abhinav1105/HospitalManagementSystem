<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

     <%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Slots Available</title>
<style>
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
  color: white;
}
</style>

<body>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>
</div><br>
<center><h2>Your slot has been booked!</h2>

<br>

<h2>Be there <font color="red">10 min</font> before your slot commence</h2>

<%

String k=request.getParameter("key");

int timeh=Integer.parseInt(request.getParameter("key"));

int timingh=timeh/60;

int timingm=timeh%60;%>
<h3><%out.println("Your appointment for");%>
<font color="red"><%=timingh%>:<%=timingm%></font>
<%out.println("has been booked.");%></h3></center><% 
//out.println(bookings);

String datee= (String) session.getAttribute("date");

String patient= (String) session.getAttribute("name");

//out.println(patient);

String doctor=(String) session.getAttribute("naame1");

//out.println(doctor);

String time= (String)session.getAttribute("slottype");

//out.println(time);

Connection con= null;

 

PreparedStatement ps = null;

 

ResultSet rs = null;

 

 

 

String driverName = "com.mysql.jdbc.Driver";

 

String url = "jdbc:mysql://localhost:3306/patientsprofile";

 

String user = "root";

 

String password = "padamin1";

 

Connection connection = null;

PreparedStatement ps1=null,ps2=null;

ResultSet rs1 = null, rs2=null;

int updateQuery = 0,updateQuery1 = 0;

connection = DriverManager.getConnection(url, user, password);

 

String sql1 ="SELECT * FROM doctorsignup WHERE Name=?";

//out.println(sql1);

ps1=connection.prepareStatement(sql1);

ps1.setString(1,doctor);

rs1 = ps1.executeQuery();

while(rs1.next())

{

                String mail=rs1.getString("Email_Id");

                //out.println(mail);

                String sql3= "UPDATE forappointmentbooking SET booked=? WHERE doctormail=? AND date=? AND time=?";

                ps2=connection.prepareStatement(sql3);

                ps2.setString(1,"1");

                ps2.setString(2,mail);

                ps2.setString(3,datee);

                ps2.setString(4,k);

                updateQuery1=ps2.executeUpdate();

                if (updateQuery1 != 0) { %>

                <br>

            <%

                }

                String queryString = "INSERT INTO appointments(DoctorName,DoctorEmail,PatientEmail,Date,Time)VALUES(?,?,?,?,?)";

                ps = connection.prepareStatement(queryString);

     ps.setString(1,doctor);

    ps.setString(2,mail);

     ps.setString(3,patient);

     ps.setString(4,datee);

     ps.setString(5,k);

   

     updateQuery = ps.executeUpdate();

     if (updateQuery != 0) { %>

     <br>


<%

     }}

 
                // close all the connections.

               ps.close();

                ps1.close();

                connection.close();

 

%>

 

</body>

</html>