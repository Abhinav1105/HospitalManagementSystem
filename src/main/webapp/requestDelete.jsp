<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String phonenumber = request.getParameter("phonenumber");

try {
	Connection conn = ConnectionProvider.getConn();
	Statement st = conn.createStatement();
	st.executeUpdate("delete from bloodreq where phone='"+phonenumber+"'");
	response.sendRedirect("requestBlood.jsp");
	
} catch(Exception e) {
	System.err.println(e);
	response.sendRedirect("requestBlood.jsp");
}
%>
