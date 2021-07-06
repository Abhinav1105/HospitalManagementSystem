<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

        <%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 

<title>Doctor Enter Availability1</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc23.jpg");

height: 100%;

 

  background-position: center;

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
<center><b><font size="+3" color="black" ><br>Doctor, Fill the below form</font></b></center><br><br>

  <FORM action="DocEnterAvailability1.jsp" method="get">
  
    <table border="1" align="center">
	<col width="60">
  <col width="40">
   

   <TR>

                      <TH width="50%">Email</TH>

                                  <TD><INPUT TYPE="text" NAME="r1"></TD>
                                  

                  </tr>

                  <tr>

         <TR>

                      <TH>Date</TH>

                                  <TD><INPUT TYPE="text" NAME="r2" placeholder="DD/MM/YYYY"></TD>
									
                  </tr>

                  
                  <TR>

    <TH>Slot_type</TH><td>

<select name="slot">

<option value="-" selected="selected">select</option>

<option value="M">Morning</option>

<option value="A">Afternoon</option>

<option value="E">Evening</option>

</select></td></tr>

 

      <TR>

                     <TH>Start time (HH & MM)</TH>

                                <TD><INPUT TYPE="text" NAME="r3"></TD>

                                 <TD><INPUT TYPE="text" NAME="r6"></TD>

                  </tr>     

                   

                    <tr>

                     <TR>

                     <TH>End time (HH & MM)</TH>

                                <TD><INPUT TYPE="text" NAME="r4"></TD>

                                <TD><INPUT TYPE="text" NAME="r7"></TD>

                  </tr>     

                   

                    <TR>

                     <TH>Enter time gap (in min)</TH>

                                <TD><INPUT TYPE="text" NAME="r5"></TD>

                  </tr>     

                   

                  <tr>

                  <TR>

                      <TH></TH>

                                  <TD><INPUT TYPE="submit" VALUE="submit"></TD>

                  </tr>

   </TABLE>


 

<%

String col0= request.getParameter("slot");

   String col1= request.getParameter("r1");

   String col2 = request.getParameter("r2");

   String col3 = request.getParameter("r3");

   String col4 = request.getParameter("r4");

   String col5 = request.getParameter("r5");

   String col6 = request.getParameter("r6");

   String col7 = request.getParameter("r7");

   String sub1 = request.getParameter("submit");

   String connectionURL = "jdbc:mysql://localhost:3306/patientsprofile";

      

    Connection connection = null;

       

     PreparedStatement pstatement = null;

       

     Class.forName("com.mysql.cj.jdbc.Driver");

          int updateQuery = 0;

    

               

                 if(col1!=null && col2!=null){

                                               

                     if(col1!="" && col2!="" ) {

                                 try {

           

                                               

              connection = DriverManager.getConnection(connectionURL,"root","padamin1");

                            // sql query to insert values in the secified table.

              String queryString = "INSERT INTO availability(Email,Date,Slot,StartTimeh,StartTimem,EndTimeh,EndTimem,Timegap)VALUES(?,?,?,?,?,?,?,?)";

                                

              pstatement = connection.prepareStatement(queryString);

                                                 pstatement.setString(1,col1);

                                                  pstatement.setString(2,col2);

                                                  pstatement.setString(3,col0);

                                                 pstatement.setString(4,col3);

                                                  pstatement.setString(5,col6);

                                                  pstatement.setString(6,col4);

                                                  pstatement.setString(7,col7);

                                                  pstatement.setString(8,col5);

                                                 

                                                 

                                                

                                                

              updateQuery = pstatement.executeUpdate();

                            if (updateQuery != 0) { %>

                           <br>

                       <TABLE style="background-color: #E3E4FA;"

                   WIDTH="30%" border="1">

                                      <tr><th><h2>Thank you!</h2></th></tr>

                                   </table>

              <%

              }

                     }

            catch (Exception ex) {

            out.println(ex);

            //out.println("Unable to connect to database.");

  

               }

            finally {

                // close all the connections.

                pstatement.close();

                connection.close();

            }

                     }

                 }

  %>      

      </FORM> 

      <%

      Connection con = null;

      String url = "jdbc:mysql://localhost:3306/patientsprofile";

      PreparedStatement ps1=null,ps2=null;

      ResultSet rs1 = null, rs2=null;

      con = DriverManager.getConnection(url, "root","padamin1");

      String sql1 ="SELECT * FROM availability WHERE Email=?";

      //out.println(col1);

      ps1=con.prepareStatement(sql1);

      ps1.setString(1,col1);

      rs1 = ps1.executeQuery();

      while(rs1.next())

      {

                  int updateQuery1=0;

               String mail=rs1.getString("Email");

               //String sql2 ="SELECT * FROM availability WHERE Email=?";

               int starttimeh=Integer.parseInt(rs1.getString("StartTimeh"));

               int starttimem=Integer.parseInt(rs1.getString("StartTimem"));

               int endtimeh=Integer.parseInt(rs1.getString("EndTimeh"));

               int endtimem=Integer.parseInt(rs1.getString("EndTimem"));

               int timegap=Integer.parseInt(rs1.getString("Timegap"));

               String date=rs1.getString("Date");

               String slott=rs1.getString("Slot");

               int starttime1=starttimeh*60+starttimem;

                                int endtime1=endtimeh*60+endtimem;

                                int time=endtime1-starttime1;

                                int counter=time/timegap;

                                int i;

                                for(i=0;i<counter;i++)

                                {

                                                int array=starttime1+i*timegap;

                                String sql2 = "INSERT INTO forappointmentbooking(doctormail,date,slot,time,booked)VALUES(?,?,?,?,?)";

                                ps2=con.prepareStatement(sql2);

                                ps2.setString(1,col1);

         ps2.setString(2,date);

         ps2.setString(3,slott);

          ps2.setInt(4,array);

          ps2.setString(5,"0");

          updateQuery1 = ps2.executeUpdate();

          if (updateQuery1 != 0) {

}

                                }

      }

      con.close();

      %>

                             

 </body>

</html>