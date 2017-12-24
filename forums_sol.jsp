<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
<title>Thanks</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
<%
String st1 = (String)session.getAttribute("id");
int s2= Integer.parseInt(st1);
 String rname = request.getParameter("dname");
String subject = request.getParameter("subj"); 
String solution = request.getParameter("solution");
 String s_name = request.getParameter("name");
 String s_email = request.getParameter("e_mail");
String ss=(String)  session.getAttribute("id");
  Class.forName("com.mysql.jdbc.Driver");
  String dbURL = "jdbc:mysql://localhost:3306/medicate";
  Connection con =DriverManager.getConnection(dbURL,"root","");
    
  int rs=0;
  ResultSet r=null; 
try {
      
    PreparedStatement ps=con.prepareStatement("insert into forum_rep(fid,name,subj,reply) values('"+s2+"','"+rname+"','"+subject+"','"+solution+"') ");
   ps.executeUpdate();
	}

catch(Exception e)
{
  out.println(e);
  }

%>
<font face="MS Sans Serif">
<b>&nbsp;&nbsp;</b> Name: </font><font face="Square721 Ex BT" color="#808000"><%out.println(request.getParameter("dname"));%>
</font><br><br>
Subject: </font><font face="Square721 Ex BT" color="#808000"><%out.println(request.getParameter("subj"));%>
</font><br><br>
<p><font face="MS Sans Serif">&nbsp; Solution:</font>&nbsp;<font face="Square721 Ex BT" color="#808000"><%out.println(request.getParameter("solution"));%></p>
</font><br><br>
<font face="MS Sans Serif">
<p align="center">Click Here to go
<a href="discussion.jsp">
Forum</a>
</body>

</html>