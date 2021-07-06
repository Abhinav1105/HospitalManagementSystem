<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<%
String bloodgroup = request.getParameter("bloodgroup");
String units = request.getParameter("units");
String incdec = request.getParameter("incdec");
int unit = Integer.parseInt(units);
try {
	Connection conn = ConnectionProvider.getConn();
	Statement st = conn.createStatement();
	if (incdec.equals("inc"))
	{
		st.executeUpdate("update stock set units=units+'"+unit+"' where bloodgroup='"+bloodgroup+"'");
	}
	else
	{
		st.executeUpdate("update stock set units=units-'"+unit+"' where bloodgroup='"+bloodgroup+"'");
	}
	response.sendRedirect("stock.jsp?mssg.valid");
}
catch (Exception e) {
	response.sendRedirect("stock.jsp?mssg.invalid");
}
%>
