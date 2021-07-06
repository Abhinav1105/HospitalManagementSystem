<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
    <%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Sign Up</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc10.jpg");

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
</style>
</head>
<body background="C:/Users/ABHINAV/Desktop/p1/images/doc3.jpg">
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="Page3.jsp">Login</a>
      </div>
<center><b><font size="+4" color="red" ><br>Patient Sign Up</font></b></center><br><br>
  <FORM action="PatientSignUp.jsp" method="get">
    <TABLE border="1" align="center">
         <TR>
                      <TH width="50%">Name*</TH>
                                  <TD width="50%"><INPUT TYPE="text" NAME="r1"></TD>
                  </tr>
      <TR>
                     <TH width="50%">Age</TH>
                                <TD width="50%"><INPUT TYPE="text" NAME="r2"></TD>
                  </tr>      
                   <tr>
                   <th>Height(in cm)</th>
                  <TD width="50%"><INPUT TYPE="text" NAME="r3"></TD>
                   </tr>
                    <tr>
                   <th>Weight(in kg)</th>
                  <TD width="50%"><INPUT TYPE="text" NAME="r4"></TD>
                   </tr>
                    <tr>
                   <th>Medical History</th>
                  <td> <textarea rows="8" cols="20" name="r5"></textarea></td>
                   </tr>
                   <tr>
                   <th>Email*</th>
                  <TD width="50%"><INPUT TYPE="text" NAME="r6"></TD>
                   </tr>
                   <tr>
                   <th>Phone*</th>
                  <TD width="50%"><INPUT TYPE="text" NAME="r7"></TD>
                   </tr>
                   <tr>
                   <th>Password*</th>
                  <TD width="50%"><INPUT TYPE="password" NAME="r8"></TD>
                   </tr>
                   <tr>
                      <TH></TH>
                                  <TD><INPUT TYPE="submit" VALUE="submit"></TD>
                  </tr>

   </TABLE>
<%
   String col1 = request.getParameter("r1");
   String col2 = request.getParameter("r2");
   String col3 = request.getParameter("r3");
   String col4 = request.getParameter("r4");
   String col5 = request.getParameter("r5");
   String col6 = request.getParameter("r6");
   String col7 = request.getParameter("r7");
   String col8 = request.getParameter("r8");
  
  
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
              String queryString = "INSERT INTO patientsignup(Name,Age,Height,Weight,Medicalhistory,Email,Phone,Password)VALUES(?,?,?,?,?,?,?,?)";
                                 
              pstatement = connection.prepareStatement(queryString);
                                                  pstatement.setString(1,col1);
           	                                      pstatement.setString(2,col2);
                                                  pstatement.setString(3,col3);
                                                  pstatement.setString(4,col4);
                                                  pstatement.setString(5,col5);
                                                  pstatement.setString(6,col6);
                                                  pstatement.setString(7,col7);
                                                  pstatement.setString(8,col8);
                                                  
                                                  /*String[] Hobbies=request.getParameterValues("c1");
                                                
                                                int hobbyIndex = 4; 
                                                StringBuilder sb = new StringBuilder();
                                                for(int i = 0; i < Hobbies.length; i++) {
                                                    
                                                    if (i == (Hobbies.length - 1)) {
                                                        // do not append a semicolon after the last hobby
                                                        sb.append(Hobbies[i]);
                                                    } else {
                                                        // append the hobby and a semicolon
                                                        sb.append(Hobbies[i]);
                                                        sb.append(";");
                                                    }
                                                }
                                                pstatement.setString(hobbyIndex,sb.toString());*/
                                                
                                                
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
