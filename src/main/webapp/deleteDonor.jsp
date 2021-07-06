<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>


<%
String id = request.getParameter("id");
try {
	Connection conn = ConnectionProvider.getConn();
	Statement st = conn.createStatement();
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("modifyList.jsp?mssg=deleted");
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("modifyList.jsp?mssg=invalid");
}
%>

