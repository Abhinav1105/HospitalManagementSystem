<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Survey Form</title>
</head>
<body>
<h1><center>Survey Form</center></h1>
<FORM action="form.jsp" method="get">
<font size="+2">Q.1.We would like to ask you some information about your social networks at IIM Udaipur.
For each person from your section (Section A) whose name is listed below please
let us know the nature of your interaction with the person.
Please leave the line in front of your own name blank.</font>
<TABLE style="background-color: #ECE5B6;" WIDTH="100%" >
<tr>
<th><p align=justify>Student Name</th>
    <th>If you dont know the person,<br>check box and move to the next person</th> 
    <th>Degree of Friendship with the Person<br><p align=left>Try To<br>Avoid &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Neutral&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Close Friend<br><p align=left>&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7</p></th>
  </tr>
  <tr>
    <td><pre><font size="4">  ABCD  </font></pre></td>
    <td><center><input type="checkbox" name="c1" value="ABCD"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="d1" value="1"> &nbsp; <input type="radio" name="d1" value="2"> &nbsp; <input type="radio" name="d1" value="3"> &nbsp; 
<input type="radio" name="d1" value="4"> &nbsp; <input type="radio" name="d1" value="5"> &nbsp; <input type="radio" name="d1" value="6"> &nbsp; <input type="radio" name="d1" value="7"></p></td>
  </tr>
  <tr>
    <td><pre><font size="4">  EFGH  </font></pre></td>
    <td><center><input type="checkbox" name="c1" value="EFGH"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="d2" value="1"> &nbsp; <input type="radio" name="d2" value="2"> &nbsp; <input type="radio" name="d2" value="3"> &nbsp; 
<input type="radio" name="d2" value="4"> &nbsp; <input type="radio" name="d2" value="5"> &nbsp; <input type="radio" name="d2" value="6"> &nbsp; <input type="radio" name="d2" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  IJKL  </font></pre></td>
    <td><center><input type="checkbox" name="c1" value="IJKL"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="d3" value="1"> &nbsp; <input type="radio" name="d3" value="2"> &nbsp; <input type="radio" name="d3" value="3"> &nbsp; 
<input type="radio" name="d3" value="4"> &nbsp; <input type="radio" name="d3" value="5"> &nbsp; <input type="radio" name="d3" value="6"> &nbsp; <input type="radio" name="d3" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  MNOP  </font></pre></td>
    <td><center><input type="checkbox" name="c1" value="MNOP"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="d4" value="1"> &nbsp; <input type="radio" name="d4" value="2"> &nbsp; <input type="radio" name="d4" value="3"> &nbsp; 
<input type="radio" name="d4" value="4"> &nbsp; <input type="radio" name="d4" value="5"> &nbsp; <input type="radio" name="d4" value="6"> &nbsp; <input type="radio" name="d4" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  QRST  </font></pre></td>
    <td><center><input type="checkbox" name="c1" value="QRST"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="d5" value="1"> &nbsp; <input type="radio" name="d5" value="2"> &nbsp; <input type="radio" name="d5" value="3"> &nbsp; 
<input type="radio" name="d5" value="4"> &nbsp; <input type="radio" name="d5" value="5"> &nbsp; <input type="radio" name="d5" value="6"> &nbsp; <input type="radio" name="d5" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  UVWX  </font></pre></td>
    <td><center><input type="checkbox" name="c1" value="UVWX"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="d6" value="1"> &nbsp; <input type="radio" name="d6" value="2"> &nbsp; <input type="radio" name="d6" value="3"> &nbsp; 
<input type="radio" name="d6" value="4"> &nbsp; <input type="radio" name="d6" value="5"> &nbsp; <input type="radio" name="d6" value="6"> &nbsp; <input type="radio" name="d6" value="7"></p></td>
  </tr></table>
  <font size="+2">Q.2.We would like to ask you some information about your socialization and leisure activities at IIM Udaipur
   (Watching movies, going for dinner outside campus, partying, drinking tea/coffee together, playing computer games, clubs/interest 
   groups gatherings, walking together to/from class/hostel, time together in Lounge/TV Room). For each person from your section (Section A)
  whose name is listed below please check the box that is applicable.Please leave the line in front of your own name blank.</font>
<TABLE style="background-color: #ECE5B6;" WIDTH="100%" >
<tr>
<th><p align=justify>Student Name</th>
    <th>If you dont know the person,<br>check box and move to the next person</th> 
    <th><p align=center>Usually interact with<br>(please indicate on the scale below)<br><p align=left>Rarely &emsp; &emsp;&emsp;&emsp;&emsp;
    &emsp;&emsp;&emsp;&emsp;often<br><p align=left>&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7</p></th></tr>
  <tr>
    <td><pre><font size="4">  ABCD  </font></pre></td>
    <td><center><input type="checkbox" name="c2" value="ABCD"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="f1" value="1"> &nbsp; <input type="radio" name="f1" value="2"> &nbsp; <input type="radio" name="f1" value="3"> &nbsp; 
<input type="radio" name="f1" value="4"> &nbsp; <input type="radio" name="f1" value="5"> &nbsp; <input type="radio" name="f1" value="6"> &nbsp; <input type="radio" name="f1" value="7"></p></td>
  </tr>
  <tr>
    <td><pre><font size="4">  EFGH  </font></pre></td>
    <td><center><input type="checkbox" name="c2" value="EFGH"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="f2" value="1"> &nbsp; <input type="radio" name="f2" value="2"> &nbsp; <input type="radio" name="f2" value="3"> &nbsp; 
<input type="radio" name="f2" value="4"> &nbsp; <input type="radio" name="f2" value="5"> &nbsp; <input type="radio" name="f2" value="6"> &nbsp; <input type="radio" name="f2" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  IJKL  </font></pre></td>
    <td><center><input type="checkbox" name="c2" value="IJKL"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="f3" value="1"> &nbsp; <input type="radio" name="f3" value="2"> &nbsp; <input type="radio" name="f3" value="3"> &nbsp; 
<input type="radio" name="f3" value="4"> &nbsp; <input type="radio" name="f3" value="5"> &nbsp; <input type="radio" name="f3" value="6"> &nbsp; <input type="radio" name="f3" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  MNOP  </font></pre></td>
    <td><center><input type="checkbox" name="c2" value="MNOP"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="f4" value="1"> &nbsp; <input type="radio" name="f4" value="2"> &nbsp; <input type="radio" name="f4" value="3"> &nbsp; 
<input type="radio" name="f4" value="4"> &nbsp; <input type="radio" name="f4" value="5"> &nbsp; <input type="radio" name="f4" value="6"> &nbsp; <input type="radio" name="f4" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  QRST  </font></pre></td>
    <td><center><input type="checkbox" name="c2" value="QRST"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="f5" value="1"> &nbsp; <input type="radio" name="f5" value="2"> &nbsp; <input type="radio" name="f5" value="3"> &nbsp; 
<input type="radio" name="f5" value="4"> &nbsp; <input type="radio" name="f5" value="5"> &nbsp; <input type="radio" name="f5" value="6"> &nbsp; <input type="radio" name="f5" value="7"></p></td>
  </tr>
<tr>
    <td><pre><font size="4">  UVWX  </font></pre></td>
    <td><center><input type="checkbox" name="c2" value="UVWX"></center></td> 
    <td><p align=left> &nbsp; <input type="radio" name="f6" value="1"> &nbsp; <input type="radio" name="f6" value="2"> &nbsp; <input type="radio" name="f6" value="3"> &nbsp; 
<input type="radio" name="f6" value="4"> &nbsp; <input type="radio" name="f6" value="5"> &nbsp; <input type="radio" name="f6" value="6"> &nbsp; <input type="radio" name="f6" value="7"></p></td>
  </tr></table>
  <font size="+2">Q.3.In the space provided below, please list the first and last name of your close friends from among other current IIM Udaipur MBA- Ist
   Year students who are not in your section. (Option to list 30 names)</font><br>
   <textarea rows="20" cols="60" name="l1"></textarea><br>
   <font size="+2">Q.4.In the space provided below, please list the first and last name of your close friends from among other current 
   IIM Udaipur MBA-IInd Year students. (Option to list 30 names)</font><br>
   <textarea rows="20" cols="60" name="l2"></textarea><br>
<font size="+2"><br>Q.5.Who was your FIRST CLOSE FRIEND among fellow students in the IIM Udaipur MBA Program?</font>
  
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
         <TR>
	      <TH width="50%">Name</TH>
		  <TD width="50%"><INPUT TYPE="text" NAME="r1"></TD>
	  </tr></TABLE>
	  <font size="+2"><br>Q.6.How did you meet your friend named above?</font>
      <TABLE  style="background-color: #ECE5B6;" WIDTH="30%" >
         <TR>
	      <TH width="50%">Describe</TH>
		  <TD width="50%"><INPUT TYPE="text" NAME="e1"></TD>
	  </tr>
   </TABLE>
   <font size="+2"><br>Q.7.How many of your fellow MBA students did you know prior to coming to IIM Udaipur?</font>
      <TABLE  style="background-color: #ECE5B6;" WIDTH="30%" >
         <TR>
		  <TD width="50%"><input type="checkbox" name="k1" value="None">None<br></TD>
	  </tr>
	  <tr>
	  <td width="50%"><input type="checkbox" name="k1" value="One">One<br></td>
	   <TR>
	   <tr>
	  <td width="50%"><input type="checkbox" name="k1" value="Two">Two<br></td>
	   <TR>
	   <tr>
	  <td width="50%"><input type="checkbox" name="k1" value="Three">Three<br></td>
	   <TR>
	   <tr>
	  <td width="50%"><input type="checkbox" name="k1" value="Four">Four<br></td>
	   <TR>
	   <tr>
	  <td width="50%"><input type="checkbox" name="k1" value="Five">Five<br></td>
	   <TR>
	   <tr>
	  <td width="50%"><input type="checkbox" name="k1" value="Six or More">Six or More<br></td>
	  
	
   </TABLE>
   <font size="+2">Q.8.In the space provided below, please list the names of the fellow MBA students you knew prior to coming to IIM Udaipur
    and how you knew them? (e.g., Facebook, former classmate, co-worker, etc.)</font>
 <table>
<tr>
<td><center>Name</center></td>
<td><center>&emsp;&emsp;How did you know him/her?</center></td>
</tr>
<tr>
<td>
<textarea rows="8" cols="20" name="t1"></textarea>
</td>
<td>&emsp;&emsp;
<textarea rows="8" cols="20" name="t2"></textarea>
</td>
</tr>
</table>
<font size="+2"><br>Q.9.Now, we would like to ask you to assess your agreement or disagreement with the following statements. </font>
      <TABLE  style="background-color: #ECE5B6;" WIDTH="100%" >
      <tr>
	<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
	<th><p align=left>Strongly<br>Disagree&emsp;&emsp;Neither Disagree nor Agree&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Strongly Agree<br><p align=left>&nbsp;&nbsp;&nbsp;&nbsp;&emsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;7</p></th>
	</tr>
	<tr>
<td>1. One should be kind to all people.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b1" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b1" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b1" value="3">&emsp;&emsp;
<input type="radio" name="b1" value="4"> &nbsp;&emsp; <input type="radio" name="b1" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b1" value="6"> &emsp;&emsp; <input type="radio" name="b1" value="7"></p></td></tr>
    <TR>
    <td>2. One should find ways to help others less fortunate than oneself.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b2" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b2" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b2" value="3">&emsp;&emsp;
<input type="radio" name="b2" value="4"> &nbsp;&emsp; <input type="radio" name="b2" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b2" value="6"> &emsp;&emsp; <input type="radio" name="b2" value="7"></p></td></tr>
<TR>
    <td>3. A person should be concerned about the well-being of others.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b3" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b3" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b3" value="3">&emsp;&emsp;
<input type="radio" name="b3" value="4"> &nbsp;&emsp; <input type="radio" name="b3" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b3" value="6"> &emsp;&emsp; <input type="radio" name="b3" value="7"></p></td></tr>
<tr>
<TR>
    <td>4. There should be equality for everyone-because we are all human beings.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b4" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b4" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b4" value="3">&emsp;&emsp;
<input type="radio" name="b4" value="4"> &nbsp;&emsp; <input type="radio" name="b4" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b4" value="6"> &emsp;&emsp; <input type="radio" name="b4" value="7"></p></td></tr>
<tr>
<TR>
    <td>5. Those who are unable to provide for their basic needs should be helped by others.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b5" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b5" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b5" value="3">&emsp;&emsp;
<input type="radio" name="b5" value="4"> &nbsp;&emsp; <input type="radio" name="b5" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b5" value="6"> &emsp;&emsp; <input type="radio" name="b5" value="7"></p></td></tr>
<tr>
<TR>
    <td>6. A good society is one in which people feel responsible for one another.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b6" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b6" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b6" value="3">&emsp;&emsp;
<input type="radio" name="b6" value="4"> &nbsp;&emsp; <input type="radio" name="b6" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b6" value="6"> &emsp;&emsp; <input type="radio" name="b6" value="7"></p></td></tr>
<tr>
<TR>
    <td>7. Everyone should have an equal chance and an equal say in most things.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b7" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b7" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b7" value="3">&emsp;&emsp;
<input type="radio" name="b7" value="4"> &nbsp;&emsp; <input type="radio" name="b7" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b7" value="6"> &emsp;&emsp; <input type="radio" name="b7" value="7"></p></td></tr>
<tr>
<TR>
    <td>8. Acting to protect the rights and interests of other members<br> of the community is a major obligation for all persons.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b8" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b8" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b8" value="3">&emsp;&emsp;
<input type="radio" name="b8" value="4"> &nbsp;&emsp; <input type="radio" name="b8" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b8" value="6"> &emsp;&emsp; <input type="radio" name="b8" value="7"></p></td></tr>
<tr>
<TR>
    <td>9. In dealing with criminals the courts should recognize that many are victims of circumstances.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b9" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b9" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b9" value="3">&emsp;&emsp;
<input type="radio" name="b9" value="4"> &nbsp;&emsp; <input type="radio" name="b9" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b9" value="6"> &emsp;&emsp; <input type="radio" name="b9" value="7"></p></td></tr>
<tr>
<TR>
    <td>10. Prosperous nations have a moral obligation to share some of their wealth with poor nations.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b10" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b10" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b10" value="3">&emsp;&emsp;
<input type="radio" name="b10" value="4"> &nbsp;&emsp; <input type="radio" name="b10" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b10" value="6"> &emsp;&emsp; <input type="radio" name="b10" value="7"></p></td></tr>
<TR>
    <td>11.	The more India actively influences other countries,the better off these countries will be.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b11" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b11" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b11" value="3">&emsp;&emsp;
<input type="radio" name="b11" value="4"> &nbsp;&emsp; <input type="radio" name="b11" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b11" value="6"> &emsp;&emsp; <input type="radio" name="b11" value="7"></p></td></tr>
<TR>
    <td>12.	To maintain our country's superiority, war is sometimes necessary.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b12" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b12" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b12" value="3">&emsp;&emsp;
<input type="radio" name="b12" value="4"> &nbsp;&emsp; <input type="radio" name="b12" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b12" value="6"> &emsp;&emsp; <input type="radio" name="b12" value="7"></p></td></tr>
<TR>
    <td>13.	Since India is far from perfect, this country has many things to learn from other countries.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b13" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b13" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b13" value="3">&emsp;&emsp;
<input type="radio" name="b13" value="4"> &nbsp;&emsp; <input type="radio" name="b13" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b13" value="6"> &emsp;&emsp; <input type="radio" name="b13" value="7"></p></td></tr>
<TR>
    <td>14.	For the most part, India is no more superior than any other developing country in the world. </td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b14" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b14" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b14" value="3">&emsp;&emsp;
<input type="radio" name="b14" value="4"> &nbsp;&emsp; <input type="radio" name="b14" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b14" value="6"> &emsp;&emsp; <input type="radio" name="b14" value="7"></p></td></tr>
<TR>
    <td>15.	To maintain our country's economic superiority,aggressive economic<br> policies are sometimes necessary.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b15" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b15" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b15" value="3">&emsp;&emsp;
<input type="radio" name="b15" value="4"> &nbsp;&emsp; <input type="radio" name="b15" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b15" value="6"> &emsp;&emsp; <input type="radio" name="b15" value="7"></p></td></tr>
<TR>
    <td>16.	India should not dominate other countries in the region.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b16" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b16" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b16" value="3">&emsp;&emsp;
<input type="radio" name="b16" value="4"> &nbsp;&emsp; <input type="radio" name="b16" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b16" value="6"> &emsp;&emsp; <input type="radio" name="b16" value="7"></p></td></tr>
<TR>
    <td>17.	There are many other cultures in the world that are superior to ours.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b17" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b17" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b17" value="3">&emsp;&emsp;
<input type="radio" name="b17" value="4"> &nbsp;&emsp; <input type="radio" name="b17" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b17" value="6"> &emsp;&emsp; <input type="radio" name="b17" value="7"></p></td></tr>
<TR>
    <td>18.	In general, Indians are wonderful people.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b18" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b18" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b18" value="3">&emsp;&emsp;
<input type="radio" name="b18" value="4"> &nbsp;&emsp; <input type="radio" name="b18" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b18" value="6"> &emsp;&emsp; <input type="radio" name="b18" value="7"></p></td></tr>
<TR>
    <td>19.	I feel very warmly towards my countrymen.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b19" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b19" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b19" value="3">&emsp;&emsp;
<input type="radio" name="b19" value="4"> &nbsp;&emsp; <input type="radio" name="b19" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b19" value="6"> &emsp;&emsp; <input type="radio" name="b19" value="7"></p></td></tr>
<TR>
    <td>20.	I do not care for most other Indians.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b20" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b20" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b20" value="3">&emsp;&emsp;
<input type="radio" name="b20" value="4"> &nbsp;&emsp; <input type="radio" name="b20" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b20" value="6"> &emsp;&emsp; <input type="radio" name="b20" value="7"></p></td></tr>
<TR>
    <td>21.	Most other Indians are not worth caring about.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b21" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b21" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b21" value="3">&emsp;&emsp;
<input type="radio" name="b21" value="4"> &nbsp;&emsp; <input type="radio" name="b21" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b21" value="6"> &emsp;&emsp; <input type="radio" name="b21" value="7"></p></td></tr>
<TR>
    <td>22.	Every time I hear the national anthem, I feel strongly moved.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b22" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b22" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b22" value="3">&emsp;&emsp;
<input type="radio" name="b22" value="4"> &nbsp;&emsp; <input type="radio" name="b22" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b22" value="6"> &emsp;&emsp; <input type="radio" name="b22" value="7"></p></td></tr>
<TR>
    <td>23. I find the sight of the Indian flag very moving.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b23" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b23" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b23" value="3">&emsp;&emsp;
<input type="radio" name="b23" value="4"> &nbsp;&emsp; <input type="radio" name="b23" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b23" value="6"> &emsp;&emsp; <input type="radio" name="b23" value="7"></p></td></tr>
<TR>
    <td>24.	The Indian flag should not be treated as a sacred object.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b24" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b24" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b24" value="3">&emsp;&emsp;
<input type="radio" name="b24" value="4"> &nbsp;&emsp; <input type="radio" name="b24" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b24" value="6"> &emsp;&emsp; <input type="radio" name="b24" value="7"></p></td></tr>
<TR>
    <td>25. An ideal society requires some groups to be on top and others to be on the bottom.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b25" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b25" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b25" value="3">&emsp;&emsp;
<input type="radio" name="b25" value="4"> &nbsp;&emsp; <input type="radio" name="b25" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b25" value="6"> &emsp;&emsp; <input type="radio" name="b25" value="7"></p></td></tr>
<TR>
    <td>26.	Some groups of people are simply inferior to other groups.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b26" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b26" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b26" value="3">&emsp;&emsp;
<input type="radio" name="b26" value="4"> &nbsp;&emsp; <input type="radio" name="b26" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b26" value="6"> &emsp;&emsp; <input type="radio" name="b26" value="7"></p></td></tr>
<TR>
    <td>27.	No one group should dominate in society.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b27" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b27" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b27" value="3">&emsp;&emsp;
<input type="radio" name="b27" value="4"> &nbsp;&emsp; <input type="radio" name="b27" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b27" value="6"> &emsp;&emsp; <input type="radio" name="b27" value="7"></p></td></tr>
<TR>
    <td>28.	Groups at the bottom are just as deserving as groups at the top.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b28" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b28" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b28" value="3">&emsp;&emsp;
<input type="radio" name="b28" value="4"> &nbsp;&emsp; <input type="radio" name="b28" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b28" value="6"> &emsp;&emsp; <input type="radio" name="b28" value="7"></p></td></tr>
<TR>
    <td>29.	Group equality should not be our primary goal.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b29" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b29" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b29" value="3">&emsp;&emsp;
<input type="radio" name="b29" value="4"> &nbsp;&emsp; <input type="radio" name="b29" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b29" value="6"> &emsp;&emsp; <input type="radio" name="b29" value="7"></p></td></tr>
<TR>
    <td>30.	It is unjust to try to make groups equal.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b30" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b30" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b30" value="3">&emsp;&emsp;
<input type="radio" name="b30" value="4"> &nbsp;&emsp; <input type="radio" name="b30" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b30" value="6"> &emsp;&emsp; <input type="radio" name="b30" value="7"></p></td></tr>
<TR>
    <td>31.	We should do what we can to equalize conditions for different groups.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b31" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b31" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b31" value="3">&emsp;&emsp;
<input type="radio" name="b31" value="4"> &nbsp;&emsp; <input type="radio" name="b31" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b31" value="6"> &emsp;&emsp; <input type="radio" name="b31" value="7"></p></td></tr>
<TR>
    <td>32.	We should work to give all groups an equal chance to succeed.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b32" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b32" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b32" value="3">&emsp;&emsp;
<input type="radio" name="b32" value="4"> &nbsp;&emsp; <input type="radio" name="b32" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b32" value="6"> &emsp;&emsp; <input type="radio" name="b32" value="7"></p></td></tr>
<TR>
    <td>33.	The symbols of India (e.g., the flag, parliament) do not move me one way or the other.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b33" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b33" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b33" value="3">&emsp;&emsp;
<input type="radio" name="b33" value="4"> &nbsp;&emsp; <input type="radio" name="b33" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b33" value="6"> &emsp;&emsp; <input type="radio" name="b33" value="7"></p></td></tr>
<TR>
    <td>34.	I would really not want to move to another country.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b34" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b34" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b34" value="3">&emsp;&emsp;
<input type="radio" name="b34" value="4"> &nbsp;&emsp; <input type="radio" name="b34" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b34" value="6"> &emsp;&emsp; <input type="radio" name="b34" value="7"></p></td></tr>
<TR>
    <td>35.	I have warm feelings for the place where I grew up.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b35" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b35" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b35" value="3">&emsp;&emsp;
<input type="radio" name="b35" value="4"> &nbsp;&emsp; <input type="radio" name="b35" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b35" value="6"> &emsp;&emsp; <input type="radio" name="b35" value="7"></p></td></tr>
<TR>
    <td>36.	I feel no differently about the place I grew up than any other place.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b36" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b36" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b36" value="3">&emsp;&emsp;
<input type="radio" name="b36" value="4"> &nbsp;&emsp; <input type="radio" name="b36" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b36" value="6"> &emsp;&emsp; <input type="radio" name="b36" value="7"></p></td></tr>
<TR>
    <td>37.	I would be willing to leave the India for good.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b37" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b37" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b37" value="3">&emsp;&emsp;
<input type="radio" name="b37" value="4"> &nbsp;&emsp; <input type="radio" name="b37" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b37" value="6"> &emsp;&emsp; <input type="radio" name="b37" value="7"></p></td></tr>
<TR>
    <td>38.	I have great love for my country.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b38" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b38" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b38" value="3">&emsp;&emsp;
<input type="radio" name="b38" value="4"> &nbsp;&emsp; <input type="radio" name="b38" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b38" value="6"> &emsp;&emsp; <input type="radio" name="b38" value="7"></p></td></tr>
<TR>
    <td>39.	I am proud to be an Indian.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b39" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b39" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b39" value="3">&emsp;&emsp;
<input type="radio" name="b39" value="4"> &nbsp;&emsp; <input type="radio" name="b39" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b39" value="6"> &emsp;&emsp; <input type="radio" name="b39" value="7"></p></td></tr>
<TR>
    <td>40.	There is nothing particularly wonderful about Indian culture.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b40" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b40" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b40" value="3">&emsp;&emsp;
<input type="radio" name="b40" value="4"> &nbsp;&emsp; <input type="radio" name="b40" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b40" value="6"> &emsp;&emsp; <input type="radio" name="b40" value="7"></p></td></tr>
<TR>
    <td>41.	I don't feel much affection for India.</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b41" value="1">&nbsp;&nbsp;&emsp;<input type="radio" name="b41" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b41" value="3">&emsp;&emsp;
<input type="radio" name="b41" value="4"> &nbsp;&emsp; <input type="radio" name="b41" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b41" value="6"> &emsp;&emsp; <input type="radio" name="b41" value="7"></p></td></tr>
</table>
<font size="+2">Now, we would like to ask you to describe your atttudes and beliefs.</font>
<TABLE style="background-color: #ECE5B6;" WIDTH="100%" >
<tr>
<th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
<th><p align=left>Very<br>Traditional&emsp;&emsp;Neither Liberal nor Traditional&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Very Liberal<br><p align=left>&nbsp;&nbsp;&nbsp;&nbsp;&emsp;1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;7</p></th>
</tr>
<tr>
<td>42.	In terms of economic issues, how would you describe your political attitudes and beliefs?</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b42" value="1">&nbsp;&nbsp;&emsp;&emsp;&nbsp;&emsp;<input type="radio" name="b42" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b42" value="3">&emsp;&emsp;
<input type="radio" name="b42" value="4"> &nbsp;&emsp; <input type="radio" name="b42" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b42" value="6"> &emsp;&emsp; <input type="radio" name="b42" value="7"></p></td></tr>
<tr>
<td>43.	 In terms of social issues, how would you describe your political attitudes and beliefs?</td>
<td><p align=left>&nbsp;&nbsp;&emsp;<input type="radio" name="b43" value="1">&nbsp;&nbsp;&emsp;&emsp;&nbsp;&emsp;<input type="radio" name="b43" value="2">&nbsp;&nbsp;&nbsp;&nbsp;&emsp;<input type="radio" name="b43" value="3">&emsp;&emsp;
<input type="radio" name="b43" value="4"> &nbsp;&emsp; <input type="radio" name="b43" value="5">&nbsp;&emsp;&nbsp;<input type="radio" name="b43" value="6"> &emsp;&emsp; <input type="radio" name="b43" value="7"></p></td></tr>
</table>

<font size="+2">Now, we would like you to describe your political preference (National Parties Listed). We can add drop down with
 more regional parties</font><br><br>
 <TABLE style="background-color: #ECE5B6;" WIDTH="100%" >
 <tr><td>
<select name="political">
<option value="Bahujan Samaj Party (BSP)" selected="selected">Bahujan Samaj Party (BSP)</option>
<option value="Bhartiya Janata Party (BJP)">Bhartiya Janata Party (BJP)</option>
<option value="Communist Party (CPI-M or CPI)">Communist Party (CPI-M or CPI)</option>
<option value="Indian National Congress Party (INC)">Indian National Congress Party (INC)</option>
<option value="All Indian Trinamool Congress (AITC)">All Indian Trinamool Congress (AITC)</option>
<option value="Nationalist Congress Party (NCP)">Nationalist Congress Party (NCP)</option>
</select></td></tr>
<tr>
	      <TH></TH>
		  <TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
	  </tr>
   </TABLE>
   <%
   String know1 = request.getParameter("k1");
   String name1 = request.getParameter("r1");
   String describe1 = request.getParameter("e1");
   String text1 = request.getParameter("t1");
   String text2 = request.getParameter("t2");
   String q1 = request.getParameter("b1");
   String q2 = request.getParameter("b2");
   String q3 = request.getParameter("b3");
   String q4 = request.getParameter("b4");
   String q5 = request.getParameter("b5");
   String q6 = request.getParameter("b6");
   String q7 = request.getParameter("b7");
   String q8 = request.getParameter("b8");
   String q9 = request.getParameter("b9");
   String q10 = request.getParameter("b10");
   String q11 = request.getParameter("b11");
   String q12 = request.getParameter("b12");
   String q13 = request.getParameter("b13");
   String q14 = request.getParameter("b14");
   String q15 = request.getParameter("b15");
   String q16 = request.getParameter("b16");
   String q17 = request.getParameter("b17");
   String q18 = request.getParameter("b18");
   String q19 = request.getParameter("b19");
   String q20 = request.getParameter("b20");
   String q21 = request.getParameter("b21");
   String q22 = request.getParameter("b22");
   String q23 = request.getParameter("b23");
   String q24 = request.getParameter("b24");
   String q25 = request.getParameter("b25");
   String q26 = request.getParameter("b26");
   String q27 = request.getParameter("b27");
   String q28 = request.getParameter("b28");
   String q29 = request.getParameter("b29");
   String q30 = request.getParameter("b30");
   String q31 = request.getParameter("b31");
   String q32 = request.getParameter("b32");
   String q33 = request.getParameter("b33");
   String q34 = request.getParameter("b34");
   String q35 = request.getParameter("b35");
   String q36 = request.getParameter("b36");
   String q37 = request.getParameter("b37");
   String q38 = request.getParameter("b38");
   String q39 = request.getParameter("b39");
   String q40 = request.getParameter("b40");
   String q41 = request.getParameter("b41");
   String q42 = request.getParameter("b42");
   String q43 = request.getParameter("b43");
   String I1 = request.getParameter("d1");
   String I2 = request.getParameter("d2");
   String I3 = request.getParameter("d3");
   String I4 = request.getParameter("d4");
   String I5 = request.getParameter("d5");
   String I6 = request.getParameter("d6");
   String J1 = request.getParameter("f1");
   String J2 = request.getParameter("f2");
   String J3 = request.getParameter("f3");
   String J4 = request.getParameter("f4");
   String J5 = request.getParameter("f5");
   String J6 = request.getParameter("f6");
   String party = request.getParameter("political");
   String list1 = request.getParameter("l1");
   String list2 = request.getParameter("l2");
   String sub1 = request.getParameter("submit");
   
    String connectionURL = "jdbc:mysql://localhost:3306/feedback";
       
    Connection connection = null;
        
     PreparedStatement pstatement = null;
   
     Class.forName("com.mysql.jdbc.Driver").newInstance();
          int updateQuery = 0;
     
     	
	 if(name1!=null && describe1!=null && know1!=null  && q1!=null){
	 		 
	     if(name1!="" && describe1!="") {
	                 try {
            
	               	 
              connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","padamin1");
                            // sql query to insert values in the secified table.
                             Statement st=connection.createStatement(); 
              String queryString = "INSERT INTO data(Friend_Name,Description,Ques1,Known_For,Ques2,Ques3,Ques4,Ques5,"+
                                                    "Ques6,Ques7,Ques8,Ques9,Ques10,Ques11,Ques12,Ques13,"+
                                                    "Ques14,Ques15,Ques16,Ques17,Ques18,Ques19,Ques20,Ques21,"+
                                                    "Ques22,Ques23,Ques24,Ques25,Ques26,Ques27,Ques28,Ques29,"+
                                                    "Ques30,Ques31,Ques32,Ques33,Ques34,Ques35,Ques36,Ques37,"+
                                                    "Ques38,Ques39,Ques40,Ques41,Name,How_Do_You_Know,ABCD,EFGH,"+
                                                    "IJKL,MNOP,QRST,UVWX,ABCD1,EFGH1,IJKL1,MNOP1,"+
                                                    "QRST1,UVWX1,Other_friends_not_in_your_section,Other_close_friends,Ques42,Ques43,Political_party,Interact,"+
                                                    "Socialization)"+
                                                    "VALUES (?,?,?,?,?,?,?,?,"+
                                                            "?,?,?,?,?,?,?,?,"+
                                                            "?,?,?,?,?,?,?,?,"+
                                                            "?,?,?,?,?,?,?,?,"+
                                                            "?,?,?,?,?,?,?,?,"+
                                                            "?,?,?,?,?,?,?,?,"+
                                                            "?,?,?,?,?,?,?,?,"+
                                                            "?,?,?,?,?,?,?,?,"+
             												 "?)";
              pstatement = connection.prepareStatement(queryString);
              	                  
              	  	
              pstatement.setString(1,name1);
              pstatement.setString(2,describe1);
              pstatement.setString(3,q1);
              pstatement.setString(4,know1);
              
              pstatement.setString(5,q2);
              pstatement.setString(6,q3);
              pstatement.setString(7,q4);
              pstatement.setString(8,q5);
              pstatement.setString(9,q6);
              pstatement.setString(10,q7);
              pstatement.setString(11,q8);
              pstatement.setString(12,q9);
              pstatement.setString(13,q10);
              pstatement.setString(14,q11);
              pstatement.setString(15,q12);
              pstatement.setString(16,q13);
              pstatement.setString(17,q14);
              pstatement.setString(18,q15);
              pstatement.setString(19,q16);
              pstatement.setString(20,q17);
              pstatement.setString(21,q18);
              pstatement.setString(22,q19);
              pstatement.setString(23,q20);
              pstatement.setString(24,q21);
              pstatement.setString(25,q22);
              pstatement.setString(26,q23);
              pstatement.setString(27,q24);
              pstatement.setString(28,q25);
              pstatement.setString(29,q26);
              pstatement.setString(30,q27);
              pstatement.setString(31,q28);
              pstatement.setString(32,q29);
              pstatement.setString(33,q30);
              pstatement.setString(34,q31);
              pstatement.setString(35,q32);
              pstatement.setString(36,q33);
              pstatement.setString(37,q34);
              pstatement.setString(38,q35);
              pstatement.setString(39,q36);
              pstatement.setString(40,q37);
              pstatement.setString(41,q38);
              pstatement.setString(42,q39);
              pstatement.setString(43,q40);
              pstatement.setString(44,q41);
              pstatement.setString(45,text1);
              pstatement.setString(46,text2);
              pstatement.setString(47,I1);
              pstatement.setString(48,I2);
              pstatement.setString(49,I3);
              pstatement.setString(50,I4);
              pstatement.setString(51,I5);
              pstatement.setString(52,I6);
              pstatement.setString(53,J1);
              pstatement.setString(54,J2);
              pstatement.setString(55,J3);
              pstatement.setString(56,J4);
              pstatement.setString(57,J5);
              pstatement.setString(58,J6);
              pstatement.setString(59,list1);
              pstatement.setString(60,list2);
              pstatement.setString(61,q42);
              pstatement.setString(62,q43);
              pstatement.setString(63,party);
              String[] interact=request.getParameterValues(" ");
  			
  			int Index = 64; 
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
String[] social=request.getParameterValues("c2");
  			
  			int Index1 = 65; 
  			StringBuilder sb1 = new StringBuilder();
  			for(int i = 0; i < social.length; i++) {
  			    
  			    if (i == (social.length - 1)) {
  			        // do not append a semicolon after the last hobby
  			        sb1.append(social[i]);
  			    } else {
  			        // append the hobby and a semicolon
  			        sb1.append(social[i]);
  			        sb1.append(";");
  			    }
  			}
  			pstatement.setString(Index1,sb1.toString());
  			
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
            out.println("Unable to connect to database.");
   
               }
            finally {
                // close all the connections.
                pstatement.close();
                
                connection.close();
            }
	  }
	}
%>
</FORM>
</body>
</html>