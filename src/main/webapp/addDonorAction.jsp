<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String father = request.getParameter("father");
String mother = request.getParameter("mother");
String gender = request.getParameter("gender");
String bloodgroup = request.getParameter("bloodgroup");
String phone = request.getParameter("phone");
String location = request.getParameter("location");
try {
	Connection conn = ConnectionProvider.getConn();
	PreparedStatement ps = conn.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,father);
	ps.setString(4,mother);
	ps.setString(5,gender);
	ps.setString(6,bloodgroup);
	ps.setString(7,phone);
	ps.setString(8,location);
	ps.executeUpdate();
	response.sendRedirect("addDonor.jsp?mssg=valid");
	
} catch(Exception e) {
	System.err.println("donor form");
	response.sendRedirect("addDonor.jsp?mssg=invalid");
}

%>
