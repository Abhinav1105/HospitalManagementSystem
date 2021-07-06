<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Purchase</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/hioxindia-pharmacy_14.jpg");

height: 100%;

 

  background-position: center;

  background-repeat: no-repeat;

  background-size: cover;

}
table {
  border-collapse: collapse;
  width: 100%;
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
<script>
function myFunction() {
  alert("Total Bill is:");
}
</script>
</head>
<body>
<div class="navbar">
    <a href="about.jsp">About Us</a>
      <a href="start.jsp">Home</a>
       <a href="contact.jsp">Contact Us</a>
       <a href="logout.jsp">Logout</a>
</div><br>
<FORM action="CustomerMedicineSelect.jsp" method="get">
<table border="1">
<tr>
<th>Medicine<br>Name</th>
<th>Cost</th>
<th>Manufacture<br>Date</th>
<th>Expiry<br>Date</th>
<th>Symptom</th>
<th>Confirm <br>Medicine</th>
<th>&emsp;Quantity<br>&nbsp;&nbsp;1&emsp;2&emsp;3</th>
<th>You have<br>the<br>specified<br>prescription</th>
</tr>
<%
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/patientsprofile";
String user = "root";
String password = "padamin1";
Class.forName(driverName);

Connection connection = null;
PreparedStatement ps = null;
ResultSet rs = null;
connection = DriverManager.getConnection(url, user, password);

//String name1=request.getParameter("name");
String sql ="SELECT * FROM medicineentry";
ps=connection.prepareStatement(sql);
//ps.setString(1,name1);
rs=ps.executeQuery();
while(rs.next())
{%>
<tr><td><% out.println(rs.getString("Medicine_Name"));%></td>
<td><% out.println(rs.getInt("Cost"));%></td>
<td><% out.println(rs.getString("Manufacture_Date"));%></td>
<td><% out.println(rs.getString("Expiry_Date"));%></td>
<td><% out.println(rs.getString("Symptom"));%></td>
<!-- td><select name="quantity">
<option value="-" selected="selected">-</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
</select></td -->
<td><input type="checkbox" name="c1" value="<%out.println(rs.getString("Medicine_Name"));%>">

</td>
<td>
<input type="checkbox" name="r1" value="1">&nbsp;<input type="checkbox" name="r1" value="2">
<input type="checkbox" name="r1" value="3">
</td>
<td><input name="c2" type="checkbox" value=<%out.println(rs.getInt("Cost"));%>></td>
</tr>


<%}%>
<tr>
	      <td></td>
		  <TD width="50%"><button OnClick="alert('By purchasing these medicines you are agreeing to TERMS AND CONDITIONS')">SUBMIT</button></TD>
	  </tr>
</table>
<center><a href="bill.jsp">GET PREVIOUS ORDER DETAILS</a></center>
<%
    String connectionURL = "jdbc:mysql://localhost:3306/patientsprofile";
   PreparedStatement pstatement = null;
   PreparedStatement pstatement1 = null;
   ResultSet rs1 = null;    
     Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
   
     
          int updateQuery = 0;
     
               
               
                try {
            
                                               
              connection = DriverManager.getConnection(connectionURL,"root","padamin1");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO medicine(Medicine_Name,cost,Quantity,Customer_Name) VALUES(?,?,?,?)";
                                 
              pstatement = connection.prepareStatement(queryString);
                 	int Index = 1; 
                 	int Index1 = 2;
                 	int Index2 = 3;
                 	int Index3 = 4;
                 	int total=0;
    			String[] interact=request.getParameterValues("c1");
    			String[] interact1=request.getParameterValues("c2");
    			//String interact1="";
    			String[] interact2=request.getParameterValues("r1");
      			//String name1=session.getAttribute("name");
      		
      			//StringBuilder sb = new StringBuilder();
      			for(int i = 0; i < interact.length; i++) {
      			    
      			   /* if (i == (interact.length - 1)) {
      			        // do not append a semicolon after the last hobby
      			        sb.append(interact[i]);
      			    } else {
      			        // append the hobby and a semicolon
      			        sb.append(interact[i]);
      			        sb.append(";");
      			    }*/
      			//String get=interact[i];
      			pstatement.setString(Index,interact[i]);
      			
      			/*out.println(interact[i]);
      			response.sendRedirect("CustomerMedicineSelect1.jsp");
      			String sql1 ="SELECT * FROM medicineentry WHERE Medicine_Name=?";
      			pstatement1 = connection.prepareStatement(sql1);
      			
      			pstatement1.setString(1,get);
      			rs1=pstatement1.executeQuery();
      			//out.println(rs1.getString("Cost"));
      			rs1.next();
      			interact1=rs1.getString("Cost");*/
      			
      			//out.println(interact1);
      			//String interact11=request.getParameter("interact1");
      			pstatement.setString(Index1,interact1[i]);
      			
      			pstatement.setString(Index2,interact2[i]);
      			total+=(Integer.parseInt(interact1[i]))*(Integer.parseInt(interact2[i]));
      			pstatement.setObject(Index3,session.getAttribute("name"));
      			
    			updateQuery = pstatement.executeUpdate();}%>
      			<font size="+3"><% out.println("The Total Bill is:");
      			out.println(total);%>
      			</font>
                <% if (updateQuery != 0) { %>
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
out.println("Unable to connect to database.");
	out.println(ex);
   }
finally {
    // close all the connections.
    pstatement.close();
    
    connection.close();
}

%>
</FORM>
</body>
</html>