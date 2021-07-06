<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine</title>
</head>
<body>
<FORM action="medicine.jsp" method="get">
<TABLE style="background-color: #ECE5B6;" WIDTH="100%" >
<tr>
<th><p align=justify>Medicine Name</p></th>
    <th><p align=justify>Applicable For</p></th> 
    <th><p align=justify>Cost(in Rs.)</p></th>
    <th></th></tr>
  <tr>
    <td><pre><font size="4">Crocin</font></pre></td>
    <td><pre><font size="4">Fever</font></pre></td>
    <td><pre>60</pre></td>
    <td><center><input type="checkbox" name="c1" value="Crocin"></center></td> 
    </tr>
    <tr>
    <td><pre><font size="4">Ibuprofin</font></pre></td>
    <td><pre><font size="4">Fever</font></pre></td>
    <td><pre>80</pre></td>
    <td><center><input type="checkbox" name="c1" value="Ibuprofin"></center></td> 
    </tr>
    <tr>
    <td><pre><font size="4">Dolo 650</font></pre></td>
    <td><pre><font size="4">Fever</font></pre></td>
    <td><pre>30</pre></td>
    <td><center><input type="checkbox" name="c1" value="Dolo 650"></center></td> 
    </tr>
    <tr>
    <td><pre><font size="4">Paracetamol</font></pre></td>
    <td><pre><font size="4">Fever</font></pre></td>
    <td><pre>55.50</pre></td>
    <td><center><input type="checkbox" name="c1" value="Paracetamol"></center></td> 
    </tr>
    <tr>
    <td><pre><font size="4">Allegra</font></pre></td>
    <td><pre><font size="4">Allergy</font></pre></td>
    <td><pre>119.90</pre></td>
    <td><center><input type="checkbox" name="c1" value="Allegra"></center></td> 
    </tr>
    <tr>
    <td><pre><font size="4">Astelin</font></pre></td>
    <td><pre><font size="4">Allergy</font></pre></td>
    <td><pre>110</pre></td>
    <td><center><input type="checkbox" name="c1" value="Astelin"></center></td> 
    </tr>
    <tr>
    <td><pre><font size="4">Oralair</font></pre></td>
    <td><pre><font size="4">Allergy</font></pre></td>
    <td><pre>105</pre></td>
    <td><center><input type="checkbox" name="c1" value="Oralair"></center></td> 
    </tr>
    <tr>
    <td><pre><font size="4">Alocril</font></pre></td>
    <td><pre><font size="4">Allergy</font></pre></td>
    <td><pre>150</pre></td>
    <td><center><input type="checkbox" name="c1" value="Alocril"></center></td> 
    </tr>
    <tr>
	      <TH></TH>
		  <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
	  </tr>
    </TABLE>
    <% 
    String connectionURL = "jdbc:mysql://localhost:3306/patientsprofile";
    
    Connection connection = null;
        
     PreparedStatement pstatement = null;
        
     Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
          int updateQuery = 0;
     
               
                
                                 try {
            
                                               
              connection = DriverManager.getConnection(connectionURL,"root","mysql");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO medicine(cost)VALUES(?)";
                                 
              pstatement = connection.prepareStatement(queryString);
                 	int Index = 1; 
    			String[] interact=request.getParameterValues("c1");
      			
      			
      			StringBuilder sb = new StringBuilder();
      			for(int i = 0; i < interact.length; i++) {
      			    
      			    if (i == (interact.length - 1)) {
      			        // do not append a semicolon after the last hobby
      			        sb.append(interact[i]);
      			    } else {
      			        // append the hobby and a semicolon
      			        sb.append(interact[i]);
      			        sb.append(";");
      			    }
      			}
      			pstatement.setString(Index,sb.toString());
    			updateQuery = pstatement.executeUpdate();
                if (updateQuery != 0) { %>
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
//out.println("Unable to connect to database.");
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