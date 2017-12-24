<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.lang.Object.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'contact.jsp' starting page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%
     Class.forName("com.mysql.jdbc.Driver");
  String dbURL = "jdbc:mysql://localhost:3306/medicates";
  
Connection con = DriverManager.getConnection(dbURL, "root","");
 Statement s=con.createStatement();
%>  
</head>
  
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

    <%
 String name = request.getParameter("Name");
 String comments = request.getParameter("comments");
 String e_mail = request.getParameter("email");
       
  
try {
PreparedStatement s1=con.prepareStatement("insert into contactdetail (c_name, c_mail, c_comment) values('"+name+"','"+e_mail+"','"+comments+"')");
s1.executeUpdate();
     
}

catch(Exception e)
{
out.println("Error"+e.getMessage());
}
finally
{
con.close();
}
%><b><font face="MS Sans Serif">&nbsp;&nbsp; </font></b>
<font face="MS Sans Serif">
Your Name: </font><font face="MS Sans Serif" color="#808000"><%out.println(request.getParameter("Name"));%>
</font>
<p><font face="MS Sans Serif">Your Message:&nbsp;</font><font face="MS Sans Serif" color="#808000"><%out.println(request.getParameter("comments"));%></p>
</font>
<font face="MS Sans Serif">
<p align="center">Click Here to <a href="home.html">Home </a></p></font>
       
       
    
     <br>
  </body>
</html>
