 

 

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<%@ page import="java.sql.*" %>

    <%@ page import="java.io.*" %>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>
<style>
body{

background-image: url("C:/Users/ABHINAV/Desktop/p1/images/doc18.jpg");
 
height: 100%;
width: 100%;
  background-repeat: no-repeat;

  background-size: cover;

}
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color:LightBlue;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color:Blue}

.button:active {
  background-color:Blue;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
</head>

<body>

<h2><font color="red">These are the slots. Click on the button to book!</font></h2>
<%

 

Connection con= null;

 

PreparedStatement ps = null;

 

ResultSet rs = null;

 

 

 

String driverName = "com.mysql.jdbc.Driver";

 

String url = "jdbc:mysql://localhost:3306/patientsprofile";

 

String user = "root";

 

String password = "padamin1";

Connection connection = null;

PreparedStatement ps1=null,ps2=null;

ResultSet rs1 = null, rs2=null;

connection = DriverManager.getConnection(url, user, password);

String col2=(String)session.getAttribute("naame");

/////String col2= request.getParameter("naame");

String sql1 ="SELECT * FROM doctorsignup WHERE Name=?";

//out.println(sql1);

ps1=connection.prepareStatement(sql1);

ps1.setString(1,col2);

rs1 = ps1.executeQuery();

while(rs1.next())

{

                String mail=rs1.getString("Email_Id");

                String sql2 ="SELECT * FROM availability WHERE Email=?";

                //String mail=rs1.getString("Email_Id");

                //out.println(sql2);

                ps2=connection.prepareStatement(sql2);

                ps2.setString(1,mail);

                rs2 = ps2.executeQuery();

               

                while(rs2.next())

                {

                                session.setAttribute("date",rs2.getString("Date"));

                                //out.println("date");

                                if(rs2.getString("Slot").equals("M"))

                                {

                                                String slot=rs2.getString("Slot");

                                int starttimeh=Integer.parseInt(rs2.getString("StartTimeh"));

                                int starttimem=Integer.parseInt(rs2.getString("StartTimem"));

                                int endtimeh=Integer.parseInt(rs2.getString("EndTimeh"));

                                int endtimem=Integer.parseInt(rs2.getString("EndTimem"));

                                int timegap=Integer.parseInt(rs2.getString("Timegap"));

                                int starttime1=starttimeh*60+starttimem;

                                int endtime1=endtimeh*60+endtimem;

                                int time=endtime1-starttime1;

                                int counter=time/timegap;

                                int i;

                                //out.println(counter);

                    int[] array= new int[counter];

                    for(i=0;i<counter;i++)

                    {

                                array[i]=starttime1+i*timegap;

                    }

                    for(i=0;i<counter;i++)

                    {

                               

                                session.setAttribute("slottype",slot);

                                session.setAttribute("timegapp",timegap);

                                %>

                                <a href="Availableslots.jsp" ><button class="button" onclick="alert('Confirm')" ><%=array[i]/60%>:<%=array[i]%60%></button></a>

                               

                                <%

                               

                               

                    }

                                }

                   

                }

 

}

 

 

connection.close();

 

%>

 

 

</body>

</html>