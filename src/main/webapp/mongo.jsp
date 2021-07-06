
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
     import="com.mongodb.*"
      %> 
      <%@ page import="java.io.*" %> 
      <%@ page import ="java.util.*" %>
<html>
     <head>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1256"> 
     <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
     <title> Test Page</title>
     </head> 
     <body>
     <form method="get" action="mongo.jsp">
     <TABLE border="1" align="center">
         <TR>
                      <TH width="50%">Name</TH>
                                  <TD width="50%"><INPUT TYPE="text" NAME="email"></TD>
                  </tr>
      <TR>
                     <TH width="50%">Age</TH>
                                <TD width="50%"><INPUT TYPE="text" NAME="password"></TD>
                  </tr>   
                   <tr>
                      <TH></TH>
                                  <TD><INPUT TYPE="submit" VALUE="submit"></TD>
                  </tr>
  </TABLE>
				</form>
	
     
 <%
 String col1 = request.getParameter("email");
 String col2 = request.getParameter("password");
 String sub1 = request.getParameter("submit");
        int updateQuery = 0;

 MongoClient mongoClient = null;
try {
    mongoClient = new MongoClient();
} catch (Exception e1) {
    // TODO Auto-generated catch block
    e1.printStackTrace();
}
// or, to connect to a replica set, supply a seed list of members
//MongoClient mongoClient = new MongoClient(Arrays.asList(new ServerAddress("localhost", 27017),
  //                                    new ServerAddress("localhost", 27018),
    //                                  new ServerAddress("localhost", 27019)));

DB db = mongoClient.getDB("test2");
DBCollection col;
col = db.getCollection("product");
BasicDBObject doc = new BasicDBObject("email",col1);
//System.out.println("Data Display");
col.insert(doc);
DBCursor cursor = col.find();
try {
   while(cursor.hasNext()) {
      //out.println(cursor.next());
   }
} 
catch (Exception e1) {
    // TODO Auto-generated catch block
    e1.printStackTrace();
}
	finally {

   //mongoClient.dropDatabase("test");
   
   cursor.close();

}
    %>
     </body>
     </html>