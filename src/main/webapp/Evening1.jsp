 

 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Evening slots</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc18.jpg");
 
  background-repeat: no-repeat;

  background-size: cover;

}
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color:LightBlue;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color:Blue}

.button:active {
  background-color:Blue;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
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

</head>

<body>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>

</div><br>
<h2><font color="red">These are the slots. Click on the button to book!</font></h2>

<%!

    public void function(int arr) {

     

        System.out.println("HI");      

    

    }

%>

<%

 

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

connection = DriverManager.getConnection(url, user, password);

String col2=(String)session.getAttribute("naame1");

/////String col2= request.getParameter("naame");

String sql1 ="SELECT * FROM doctorsignup WHERE Name=?";

//out.println(sql1);

ps1=connection.prepareStatement(sql1);

ps1.setString(1,col2);

rs1 = ps1.executeQuery();

while(rs1.next())

{

                String mail=rs1.getString("Email_Id");

                String sql2 ="SELECT * FROM forappointmentbooking WHERE doctormail=?";

                //String mail=rs1.getString("Email_Id");

                //out.println(sql2);

                ps2=connection.prepareStatement(sql2);

                ps2.setString(1,mail);

                rs2 = ps2.executeQuery();

               

                while(rs2.next())

                {

                                session.setAttribute("date",rs2.getString("Date"));

                                if(rs2.getString("Slot").equals("E")&&rs2.getString("booked").equals("0"))

                                {

                                                int timeh=Integer.parseInt(rs2.getString("Time"));

                                                int timingh=timeh/60;

                                                int timingm=timeh%60;

                                                               

                                                %>

                                                <a href="Availableslots1.jsp?key=<%=timeh%>" ><button class="button" onclick="alert('Confirm Booking?')" ><%=timingh%>:<%=timingm%></button></a>

                                               

                                                <%

                                                //out.println(name);

                                }

                   

                }

}

 

 

connection.close();

 

%>

 

 

</body>

</html>