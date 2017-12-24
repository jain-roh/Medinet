<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*" %>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userproducts.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <body bgcolor=#F0F0F0 	>
 
   &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object height="240" border="0" width="766" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"> 
				<param name="movie" value="images/header.swf"> 
				<param name="quality" value="High"> 
				<embed height="240" width="766" src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1"></embed></object> 
				<br></div>
				<br>

<%
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL, "root","");
    
    ResultSet rs;
    String value;
%>
<%
    String pname=request.getParameter("productname");
    String pman=request.getParameter("manufacturer");
    String dcure=request.getParameter("cure");
    String side=request.getParameter("seffects");
%>
<%
try
{
PreparedStatement ps=con.prepareStatement("insert into tblproducts(pname,pman,dcured,s_affects)values('"+pname+"','"+pman+"','"+dcure+"','"+side+"')");
ps.executeUpdate();
out.println("Product Updated ");
out.println("Your Information is Valueable");
}
catch(Exception e)
{
out.println("Error:" + e.getMessage());
}


 %>    
    <br>
  </body>
</html>
