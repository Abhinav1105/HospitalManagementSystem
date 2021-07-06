<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

    <%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Blood Donation</title>
<style>

body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/blood.jpg");

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

<body>

<center><b><font size="+4" color=#FFFF00><br>Blood Donation Login</font></b></center><br><br>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
</div><br><br>

  <FORM action="BloodDonation.jsp" method="get">

    <TABLE style="background-color: #FFA07A;" border="0.1" align="center">

         <TR>

                      <TH width="50%">Donor Name</TH>

                                  <TD width="50%"><INPUT TYPE="text" NAME="b1"></TD>

                  </tr>

      <TR>

                     <TH width="50%">Blood Group</TH>

                                <TD width="50%"><INPUT TYPE="text" NAME="b2"></TD>

                  </tr>     

                   

                    <tr>

                   <th>History Of Donation</th>

                  <td> <textarea rows="8" cols="20" name="b3"></textarea></td>

                   </tr>

                    <tr>

                   <th>History Of Disease</th>

                  <td> <textarea rows="8" cols="20" name="b4"></textarea></td>

                   </tr>
					<TR>

                     <TH width="50%">Email Id</TH>

                                <TD width="50%"><INPUT TYPE="text" NAME="b5"></TD>

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

   String sub1 = request.getParameter("submit");

  

    String connectionURL = "jdbc:mysql://localhost:3306/patientsprofile";

      

    Connection connection = null;

       

     PreparedStatement pstatement = null;

       

     Class.forName("com.mysql.cj.jdbc.Driver").newInstance();

          int updateQuery = 0;

    

               

                

                                 try {

           

                                               

              connection = DriverManager.getConnection(connectionURL,"root","mysql");

                            // sql query to insert values in the secified table.

              String queryString = "INSERT INTO blooddonation(DonorName,BloodGroup,HistoryOfDonation,HistoryOfDisease,Email)VALUES(?,?,?,?,?)";

                                

              pstatement = connection.prepareStatement(queryString);

                                                  pstatement.setString(1,col1);

                                                 pstatement.setString(2,col2);

                                                  pstatement.setString(3,col3);

                                                  pstatement.setString(4,col4);
                                                  pstatement.setString(5,col5);


                           
              updateQuery = pstatement.executeUpdate();

                            if (updateQuery != 0) { %>

                           <br>

                           <TABLE style="background-color: #E3E4FA;"

                   WIDTH="30%" border="1">

                                  <tr><th>Thank you for registering. We will let you

                                      know further details through your mail id.</th></tr>  

                                   </table>

              <%

              }

                     }

            catch (Exception ex) {

            //out.println(ex);

           

   

               }

            finally {

                // close all the connections.

                pstatement.close();

                connection.close();

            }

                 

                

%>

<table>

<tr>

                        <td colspan="2"><font size="+2" color=orange><b>Urgent need of Blood?</b></font><font size="+1" color=black><a href="reg.jsp">Search Here</a></font></td>

                    </tr>

</table>

  </FORM>

</body>

</html>


