<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %> 
    <%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Beers</title>
<style>

body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
.navbar {
  overflow: hidden;
  background-color: green;
  position: sticky;
  position: -webkit-sticky;
  top: 0;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  background: green;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
.navbar a.right {
  float: right;
}

.navbar a.active {
  background-color: #666;
  color: white;
}
.card{
  overflow: hidden;
}
.card-text{
    font-size:19px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
  word-wrap: break-word;

}



.card-deck{
    bottom-margin: 20px;
}
.click {
	font-size: 33px;
	color: rgba(0,0,0,.5);
	width: 38px;
	height: 38px;
	margin: 0 auto;
	margin-top: 20px;
	position: relative;
	cursor: pointer;
}

body {
	padding-top: 20px;
}

.click span {
	margin-left: 4px;
	margin-top: 3px;
	z-index: 999;
	position: absolute;
}

span:hover {
	opacity: 0.8;
}

span:active {
	transform: scale(0.93,0.93) translateY(2px)
}

.ring, .ring2 {
	opacity: 0;
	background: grey;
	width: 1px;
	height: 1px;
	position: absolute;
	top: 19px;
	left: 18px;
	border-radius: 50%;
	cursor: pointer;
}

.active span, .active-2 span {
	color: #F5CC27 !important;
}

.active-2 .ring {
	width: 58px !important;
	height: 58px !important;
	top: -10px !important;
	left: -10px !important;
	position: absolute;
	border-radius: 50%;
	opacity: 1 !important;
}

.active-2 .ring {
	background: #F5CC27 !important;
}

.active-2 .ring2 {
	background: #fff !important;
}

.active-3 .ring2 {
	width: 60px !important;
	height: 60px !important;
	top: -11px !important;
	left: -11px !important;
	position: absolute;
	border-radius: 50%;
	opacity: 1 !important;
}
.info {
	font-family: 'Open Sans', sans-serif;
	font-size: 12px;
	font-weight: 600;
	text-transform: uppercase;
	white-space: nowrap;
	color: grey;
	position: relative;
	top: 30px;
	left: -46px;
	opacity: 0;
	transition: all 0.3s ease;
}

.info-tog {
	color: #F5CC27;
	position: relative;
	top: 45px;
	opacity: 1;
}

* {
	transition: all .32s ease;
}
.star {
  font-size: 25px;
	color:gold;
}

</style>

</head>

<body>

<script>
function myFunction1() {
  var x = document.getElementById("myDIV1");
  if (x.innerHTML === "Favourite") {
    x.innerHTML = "Not Favourite";
  } else {
    x.innerHTML = "Favourite";
  }
}
function myFunction2() {
	  var x = document.getElementById("myDIV2");
	  if (x.innerHTML === "Favourite") {
	    x.innerHTML = "Not Favourite";
	  } else {
	    x.innerHTML = "Favourite";
	  }
	}
</script>
<center><b><font size="+4" color="red" ><br></font></b></center><br><br>
    <div class="navbar">
    <h2><a>Beans Love Beers</a></h2>
    <div class="topnav-right">
      <a href="home.jsp">Home</a>
      <a href="favorites.jsp">Favourites</a>
      <a href="products.jsp">Products</a>
</div></div><br>
 <form class="example" action="search.jsp" method="get" style="margin:auto;max-width:800px" >
  <input type="text" placeholder="Search for beer...." name="search">
  <button type="submit">Search</button>
<br><br>
<div class="container">
<div class="card-deck" style="bottom-margin:20px">
  <div class="card" style="width:800px" style="height:300px">
  <div class="media" style="width:400px">
    <img class="media-left" src="C:/Users/ABHINAV/Desktop/p1/images/buzz.jpg" alt="Card image" width="100" height="200">
    <div class="media-body">
    <br><br>
<script>
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.innerHTML === "Favourite") {
    x.innerHTML = "Not Favourite";
  } else {
    x.innerHTML = "Favourite";
  }
}</script>
<button type="submit" name="b1" value="Buzz"><i class="fa fa-star-o"></i></button>
<br><br>
<h4 class="card-title">Buzz&nbsp;&nbsp;</h4>
      <p class="card-text">A light crisp and<br>bitter IPA<br>brewed with<br>English and<br>American hops.<br>A small<br>batch brewed<br>only once...</p>
     </div>
  </div>
  </div>
   <div class="card" style="width:400px" style="height:300px">
  <div class="media" style="width:400px">
    <img class="media-left" src="C:\Users\KHUSHI TALESRA\Pictures\navigus\trashyblonde.jpg" alt="Card image" width="100" height="200">
    <div class="media-body">
    <br><br>
    <button type="submit" name="b1" value="Trashy Blonde"><i class="fa fa-star-o"></i></button>
<br><br>
      <h4 class="card-title">Trashy<br>Blonde</h4>
      <p class="card-text-right">A titillating,<br>neurotic, peroxide<br>punk of a Pale<br>Ale. Combining<br>attitude, style,<br>substance, and li....</p>
     </div>
  </div>
  </div>
  
   <div class="card" style="width:400px" style="height:300px">
  <div class="media" style="width:400px">
    <img class="media-left" src="C:\Users\KHUSHI TALESRA\Pictures\navigus\BerlinerWeisse.jpg" alt="Card image" width="100" height="200">
    <div class="media-body">
    <br><br>
    <button type="submit" name="b1" value="Berliner Weisse "><i class="fa fa-star-o"></i></button>
<br><br>
      <h4 class="card-title">Berliner<br>Weisse<br>With Yuzu<br>- B-Sides</h4>
      <p class="card-text-right">Japanese citrus<br>fruit intensifies<br>the sour nature<br> of this German <br>classic....</p>
     </div>
  </div>
  </div>
  </div>
     <br><br>
  <div class="card-deck" style="bottom-margin:20px">
  <div class="card" style="width:400px" style="height:300px">
  <div class="media" style="width:400px">
    <img class="media-left" src="C:\Users\KHUSHI TALESRA\Pictures\navigus\PilsenLager.jpg" alt="Card image" width="100" height="200">
    <div class="media-body">
    <br><br>
    <button type="submit" name="b1" value="Pilsen Lager"><i class="fa fa-star-o"></i></button>
<br><br>
      <h4 class="card-title">Pilsen Lager</h4>
      <p class="card-text-right">Our Unleash the<br>Yeast series was<br>an epic experiment<br> into the differences<br>in aroma <br>and flavour provided...</p>
     </div>
  </div>
  </div>
    <div class="card" style="width:400px" style="height:300px">
  <div class="media" style="width:400px">
    <img class="media-left" src="C:\Users\KHUSHI TALESRA\Pictures\navigus\AveryBrown.png" alt="Card image" width="100" height="200">
    <div class="media-body">
    <br><br>
    <button type="submit" name="b1" value="Avery Brown Dredge"><i class="fa fa-star-o"></i></button>
<br><br>
      <h4 class="card-title">Avery Brown Dredge</h4>
      <p class="card-text-right">An imperial Pilsner<br> in collaboration<br>with beer writers.<br>Tradition.<br> Homage. Revolution.<br>We wanted to...</p>
     </div>
  </div>
  </div>
   <div class="card" style="width:400px" style="height:300px">
  <div class="media" style="width:400px">
    <img class="media-left" src="C:\Users\KHUSHI TALESRA\Pictures\navigus\ElectricIndia.png" alt="Card image" width="100" height="200">
    <div class="media-body">
    <br><br>
    <button type="submit" name="b1" value="Electric India"><i class="fa fa-star-o"></i></button>
<br><br>
      <h4 class="card-title">Electric India</h4>
      <p class="card-text-right">Re-brewed as a <br>spring seasonal,<br>this beer which<br>appeared originally<br>as an Equity <br>Punk shareholder...</p>
     </div>
  </div>
  </div>
  </div></div>
    <%
    String connectionURL = "jdbc:mysql://localhost:3306/database";
    Connection connection = null;
   PreparedStatement pstatement = null;
   PreparedStatement pstatement1 = null;
   ResultSet rs1 = null;    
     Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
   
     
          int updateQuery = 0;
     
               
               
                try {
            
                                               
              connection = DriverManager.getConnection(connectionURL,"root","padamin1");
                            // sql query to insert values in the secified table.
              String queryString = "INSERT INTO favourites(Product_Name) VALUES(?)";
                                 
              pstatement = connection.prepareStatement(queryString);
                 	int Index = 1; 
                 	
    			String interact=request.getParameter("b1");
    			
      			/*for(int i = 0; i < interact.length; i++) {*/
      			    
      			   /* if (i == (interact.length - 1)) {
      			        // do not append a semicolon after the last hobby
      			        sb.append(interact[i]);
      			    } else {
      			        // append the hobby and a semicolon
      			        sb.append(interact[i]);
      			        sb.append(";");
      			    }*/
      			//String get=interact[i];
      			pstatement.setString(Index,interact);
      			
      			/*out.println(interact[i]);
      			response.sendRedirect("CustomerMedicineSelect1.jsp");
      			String sql1 ="SELECT * FROM medicineentry WHERE Medicine_Name=?";
      			pstatement1 = connection.prepareStatement(sql1);
      			
      			pstatement1.setString(1,get);
      			rs1=pstatement1.executeQuery();
      			//out.println(rs1.getString("Cost"));
      			rs1.next();
      			interact1=rs1.getString("Cost");*/
      			
      			//out.println(interact1);
      			//String interact11=request.getParameter("interact1");
 
      			
    			updateQuery = pstatement.executeUpdate();%>
     
                <% if (updateQuery != 0) { %>
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
out.println("Unable to connect to database.");
	out.println(ex);
   }
finally {
    // close all the connections.
    pstatement.close();
    
    connection.close();
}

%></form>
   </body>
   </html>