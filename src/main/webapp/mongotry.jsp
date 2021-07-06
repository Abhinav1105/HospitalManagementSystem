<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import ="javax.sql.*"
import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException" %>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Blood Donation</title>
<style>

body{

background-image: url("C:/Users/KHUSHI TALESRA/Pictures/dbms project pics/blood.jpg");

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
       <a href="logout.jsp">Logout</a>
</div><br><br>

  <FORM action="mongotry.jsp" method="get">
 <TABLE style="background-color: #FFA07A;" border="0.1" align="center">

         <TR>

                      <TH width="50%">Donor Name*</TH>

                                  <TD width="50%"><INPUT TYPE="text" NAME="b1"></TD>

                  </tr>

      <TR>

                     <TH width="50%">Blood Group*</TH>

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

                     <TH width="50%">Email Id*</TH>

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

 MongoClient mongoClient = null;
try {
    mongoClient = new MongoClient();
} catch (Exception e1) {
    // TODO Auto-generated catch block
    e1.printStackTrace();
}
DB db = mongoClient.getDB("BloodDonation");
DBCollection coll;
coll = db.getCollection("Information");



BasicDBObject document = new BasicDBObject();
document.put("Name", col1);
document.put("BloodGroup", col2);
document.put("HistoryOfDonation", col3);
document.put("HistoryOfDisease", col4);
document.put("Email", col5);
 
 
coll.insert(document);
%>
<table>

<tr>

                        <td colspan="2"><font size="+2" color=orange><b>Urgent need of Blood?</b></font><font size="+1" color=white><a href="reg.jsp">Search Here!</a></font></td>

                    </tr>

</table>

</FORM>
</body>
</html>