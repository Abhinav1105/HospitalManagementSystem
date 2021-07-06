<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Medicine Select1</title>
</head>
<body>
<center><a href="bill.jsp">GET BILL</a></center>
<%

Connection connection = null;
    String connectionURL = "jdbc:mysql://localhost:3306/patientsprofile";
   PreparedStatement pstatement1 = null;
   ResultSet rs1 = null;    
     Class.forName("com.mysql.cj.jdbc.Driver").newInstance();              
                
                try {
            
                                               
              connection = DriverManager.getConnection(connectionURL,"root","padamin1");
         		String interact1;
      			String get1=request.getParameter("get");
      			out.println(get1);
      			String sql1 ="SELECT * FROM medicineentry WHERE Medicine_Name=?";
      			pstatement1 = connection.prepareStatement(sql1);
      			
      			pstatement1.setString(1,get1);
      			rs1=pstatement1.executeQuery();
      			rs1.next();
      			out.println(rs1.getString("Cost"));
      			interact1=rs1.getString("Cost");
      			response.sendRedirect("CustomerMedicineSelect.jsp");
      			
      	}
finally {
    // close all the connections.
   
    pstatement1.close();
    
    connection.close();
}%>
</body>
</html>