<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Entry</title>
<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc4.jpg");

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
</head>
<body>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>
</div>	
<center><b><font size="+3" color="red"><br>New Medicine Detail</font></b></center><br><br>
  <FORM action="MedicineEntry.jsp" method="get">
  
    <TABLE style=background border="1" align="center">
    <TR>
                      <TH width="50%">Medicine ID</TH>
                                  <TD width="50%"><INPUT TYPE="text" NAME="b1"></TD>
                  </tr>
         <TR>
                      <TH width="50%">Medicine Name</TH>
                                  <TD width="50%"><INPUT TYPE="text" NAME="b2"></TD>
                  </tr>
                  <TR>
                      <TH width="50%">Symptom</TH>
                                  <TD width="50%"><INPUT TYPE="text" NAME="b3"></TD>
                  </tr>
         
                   <TR>
                     <TH width="50%">Manufacturing Date</TH>
                                <TD width="50%"><INPUT TYPE="text" NAME="b4" placeholder="DD/MM/YYYY"></TD>
                  </tr>      
                   <TR>
                     <TH width="50%">Expiry Date</TH>
                                <TD width="50%"><INPUT TYPE="text" NAME="b5" placeholder="DD/MM/YYYY"></TD>
                  </tr>      
                   
                    <TR>
                     <TH width="50%">Cost</TH>
                                <TD width="50%"><INPUT TYPE="text" NAME="b6"></TD>
                  </tr>   
                  <TR>
                     <TH width="50%">Quantity</TH>
                                <TD width="50%"><INPUT TYPE="text" NAME="b7"></TD>
                  </tr>   
                   <tr>
                      <TH></TH>
                                  <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
                  </tr>

   </TABLE>
<%
   String col1 = request.getParameter("b1");
   String col2 = request.getParameter("b2");
   String col3 = request.getParameter("b3");
   String col4 = request.getParameter("b4");
   String col5 = request.getParameter("b5");
   String col6 = request.getParameter("b6");
   String col7 = request.getParameter("b7");
   String sub1 = request.getParameter("submit");
   
    String connectionURL = "jdbc:mysql://localhost:3306/patientsprofile";
       
    Connection connection = null;
        
     PreparedStatement pstatement = null;
        
     Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
          int updateQuery = 0;
     
               if(col1!=null){
                
                                 try {
            
                                               
              connection = DriverManager.getConnection(connectionURL,"root","mysql");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO medicineentry(Medicine_ID,Medicine_Name,Symptom,Manufacture_Date,Expiry_Date,Cost,Quantity)VALUES(?,?,?,?,?,?,?)";
                                 
              pstatement = connection.prepareStatement(queryString);
                                                  pstatement.setString(1,col1);
           	                                      pstatement.setString(2,col2);
                                                  pstatement.setString(3,col3);
                                                  pstatement.setString(4,col4);
                                                  pstatement.setString(5,col5);
                                                  pstatement.setString(6,col6);
                                                  pstatement.setString(7,col7);
                                                  
                                               
                                                
                                                
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
            }}
                  
                
%>
  </FORM>
</body>
</html>