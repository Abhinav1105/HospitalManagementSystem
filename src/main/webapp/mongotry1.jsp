<%@ page language="java" 
    contentType="text/html; 
    charset=windows-1256"
     pageEncoding="windows-1256" 
     import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
     
      %> 
          <%@page import="java.sql.*" %>
<%@page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> <html> 

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

background-image: url("C:/Users/KHUSHI TALESRA/Pictures/dbms project pics/doc11.jpg");

height: 100%;

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
.navbar {
  overflow: hidden;
  background-color: #333;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}
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
       
       <a href="logout.jsp">Logout</a>
</div><br><br>
     <table border="1">

<tr>

<th>Donor Name</th>

<th>History Of Donation</th>

<th>History Of Disease</th>

</tr>
     
 <% 

 String col1= request.getParameter("bloodgroup");
 MongoClient mongoClient = null;
 try {
     mongoClient = new MongoClient();
 } catch (Exception e1) {
     e1.printStackTrace();
 }
 DB db = mongoClient.getDB("BloodDonation");
 DBCollection coll;
 coll = db.getCollection("Information");

 BasicDBObject whereQuery=new BasicDBObject();
 whereQuery.put("BloodGroup",col1);
 DBCursor cursor = coll.find(whereQuery,  new BasicDBObject("_id",0));
 DBCursor cursor1 = coll.find(whereQuery,  new BasicDBObject("_id",0));
 DBCursor cursor2 = coll.find(whereQuery,  new BasicDBObject("_id",0));
 if(cursor.hasNext()){
 while(cursor.hasNext())
 {
 String n=(String)cursor.next().get("Name");
 String h=(String)cursor1.next().get("HistoryOfDonation");

 String h1=(String)cursor2.next().get("HistoryOfDisease");
 %>
 <tr><td><% out.println(n);%></td>
 <td><% out.println(h);%></td>
 <td><% out.println(h1);%></td></tr>
<% }%>
<font size="+3" color=maroon>Contact Admin for further details of the Donor</font>&emsp;&emsp;

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

                </tr><%}%>
    </table>
     </body>
     </html>