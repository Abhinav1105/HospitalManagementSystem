<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String father = request.getParameter("father");
String mother = request.getParameter("mother");
String phone = request.getParameter("phone");
String location = request.getParameter("location");
try {
	Connection conn = ConnectionProvider.getConn();
	PreparedStatement ps = conn.prepareStatement("update donor set name=?,father=?,mother=?,phone=?,location=? where id=?");
	ps.setString(1,name);
	ps.setString(2,father);
	ps.setString(3,mother);
	ps.setString(4,phone);
	ps.setString(5,location);
	ps.setString(6,id);
	ps.executeUpdate();
	response.sendRedirect("modifyList.jsp?mssg=valid");
	
} catch(Exception e) {
	System.err.println(e);
	response.sendRedirect("modifyList.jsp?mssg=invalid");
}

%>
