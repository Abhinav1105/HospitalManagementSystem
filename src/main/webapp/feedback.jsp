<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>feedback form</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/3.jpg");

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
  color: white;
}
table {
  
  width: 60%;
   border-collapse: separate;
    border-spacing: 0 1em;
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
</style>
</head>
<body background="C:/Users/ABHINAV/Desktop/p1/images/doc3.jpg">
<center><b><font size="+4" color="red" ><br>Feedback Form</font></b></center><br><br>

<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
</div>	<br>
  <form action="feedback.jsp" method="get">
    <TABLE border="1" align="center">
         <TR>
                      <TH width="50%">Name</TH>
                                  <TD width="50%"><INPUT TYPE="text" NAME="r1"></TD>
                  </tr>
      <TR>
                     <TH width="50%">Email Id</TH>
                                <TD width="50%"><INPUT TYPE="text" NAME="r2"></TD>
                  </tr>     
                  <tr>
                  <th >Rate On a scale of 1 - 5</th>
                  <td>&emsp;&nbsp;1&emsp;&emsp;&emsp;2&emsp;&emsp;&emsp;3&emsp;&emsp;&emsp;4&emsp;&emsp;&emsp;5&emsp;</td>
                  </tr>
                  <tr><th>The facilities Provided</th><td>&emsp;<input type="radio" name="d2" value="1"> 
                  &emsp;&emsp; <input type="radio" name="d2" value="2"> &emsp;&emsp;<input type="radio" name="d2" value="3">&emsp;&emsp; 
<input type="radio" name="d2" value="4"> &emsp;&emsp;<input type="radio" name="d2" value="5">&emsp;</td></tr>

<tr><th>Appointment Booking</th><td>&emsp;<input type="radio" name="d3" value="1"> 
                  &emsp;&emsp; <input type="radio" name="d3" value="2"> &emsp;&emsp;<input type="radio" name="d3" value="3">&emsp;&emsp; 
<input type="radio" name="d3" value="4"> &emsp;&emsp;<input type="radio" name="d3" value="5">&emsp;</td></tr>

<tr><th>Facilities Related to Blood Test Booking</th><td>&emsp;<input type="radio" name="d4" value="1"> 
                  &emsp;&emsp; <input type="radio" name="d4" value="2"> &emsp;&emsp;<input type="radio" name="d4" value="3">&emsp;&emsp; 
<input type="radio" name="d4" value="4"> &emsp;&emsp;<input type="radio" name="d4" value="5">&emsp;</td></tr>

<tr><th>Availability Of Medicines</th><td>&emsp;<input type="radio" name="d5" value="1"> 
                  &emsp;&emsp; <input type="radio" name="d5" value="2"> &emsp;&emsp;<input type="radio" name="d5" value="3">&emsp;&emsp; 
<input type="radio" name="d5" value="4"> &emsp;&emsp;<input type="radio" name="d5" value="5">&emsp;</td></tr>

<tr><th>Medicine Purchase</th><td>&emsp;<input type="radio" name="d6" value="1"> 
                  &emsp;&emsp; <input type="radio" name="d6" value="2"> &emsp;&emsp;<input type="radio" name="d6" value="3">&emsp;&emsp; 
<input type="radio" name="d6" value="4"> &emsp;&emsp;<input type="radio" name="d6" value="5">&emsp;</td></tr>
<tr>
                   <th>Comments</th>
                  <td> <textarea rows="8" cols="20" name="r5"></textarea></td>
                   </tr>
  <tr> <th></th>
                                  <TD><INPUT TYPE="submit" VALUE="submit"></TD>
                  </tr>

   </TABLE>
   <%
   String col1 = request.getParameter("r1");
   String col2 = request.getParameter("r2");
   String col3 = request.getParameter("d2");
   String col4 = request.getParameter("d3");
   String col5 = request.getParameter("d4");
   String col6 = request.getParameter("d5");
   String col7 = request.getParameter("d6");
   String col8 = request.getParameter("r5");
  
  
   String sub1 = request.getParameter("submit");
   
    String connectionURL = "jdbc:mysql://localhost:3306/patientsprofile";
       
    Connection connection = null;
        
     PreparedStatement pstatement = null;
        
     Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
          int updateQuery = 0;
     
               
                 if(col1!=null && col2!=null){
                                                
                     if(col1!="" && col2!="" ) {
                                 try {
            
                                               
              connection = DriverManager.getConnection(connectionURL,"root","padamin1");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO feedback(Name,Email_ID,f1,f2,f3,f4,f5,Comments)VALUES(?,?,?,?,?,?,?,?)";
                                 
              pstatement = connection.prepareStatement(queryString);
                                                  pstatement.setString(1,col1);
           	                                      pstatement.setString(2,col2);
                                                  pstatement.setString(3,col3);
                                                  pstatement.setString(4,col4);
                                                  pstatement.setString(5,col5);
                                                  pstatement.setString(6,col6);
                                                  pstatement.setString(7,col7);
                                                  pstatement.setString(8,col8);
                                                  
                                              
                                                
                                                
              updateQuery = pstatement.executeUpdate();
                            if (updateQuery != 0) { %>
                           <br>
                           <TABLE style="background-color: #E3E4FA;" 
                   WIDTH="30%" border="1">
                                      <tr><th>Data is inserted successfully 
                    in database.</th></tr>
                                   </table>
              <%
              }
                     }
            catch (Exception ex) {
            	out.println(ex);
            out.println("Unable to connect to database.");
   
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
   
   </body>
   </html>