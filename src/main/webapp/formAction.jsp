<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String bloodgroup = request.getParameter("bloodgroup");
String phone = request.getParameter("phone");
String location = request.getParameter("location");
String status = "pending";
try {
	Connection conn = ConnectionProvider.getConn();
	PreparedStatement ps = conn.prepareStatement("insert into bloodReq values(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,bloodgroup);
	ps.setString(3,phone);
	ps.setString(4,location);
	ps.setString(5,status);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?mssg=valid");
	
} catch(Exception e) {
	System.err.println("form");
	response.sendRedirect("index.jsp?mssg=invalid");
}

%>
