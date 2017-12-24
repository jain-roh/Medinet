<%@ page language="java" import="java.util.*,java.sql.*;" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Products Entered</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
<%

String dbURL1="jdbc:mysql://localhost:3306/medicates";
	Connection con1=DriverManager.getConnection(dbURL1,"root","");	
String u_id=(String) session.getAttribute("u");
String u_pass=(String) session.getAttribute("p");    
String type=(String) session.getAttribute("t");	
 Statement susr=con1.createStatement();
    ResultSet usr=susr.executeQuery("select uid,pwd from phar_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
int flag=0;
while(usr.next())	
{
if(usr.getString(1).equals(u_id) && usr.getString(2).equals(u_pass) && type.equals("Pharmist"))
{
flag=1;
}
}
Statement sdoc=con1.createStatement();
    ResultSet doc=sdoc.executeQuery("select uid,pwd from docreg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
while(doc.next())	
{
if(doc.getString(1).equals(u_id) && doc.getString(2).equals(u_pass) && type.equals("Doctor"))
{
flag=1;
}
}
String pname=request.getParameter("pname");
    String pman=request.getParameter("pman");
    String dcure=request.getParameter("dcure");
    String saffects=request.getParameter("sideaffects");
%>
<%
if(flag==1)
{
    
    
     
    Connection con=null;
      Class.forName("com.mysql.jdbc.Driver");
        String dbURL = "jdbc:mysql://localhost:3306/medicates";
         Statement s=null;
  ResultSet rs=null;
  try 
  {   
    con = DriverManager.getConnection(dbURL,"root","");
    s=con.createStatement();
    PreparedStatement s1=con.prepareStatement("insert into tblproducts(pname,pman,dcured,s_affects) values ('"+pname+"','"+pman+"','"+dcure+"','"+saffects+"')");
	s1.executeUpdate();
   }

catch(Exception e)
{
out.println(e);
}
  
  
      
    
     %>
     
    <br>
    
<font face="MS Sans Serif">
<b>&nbsp;&nbsp; </b>
Thank u for your valuable information.</font>
<%
}
else
{
out.println("Please Login to continue");
}
%>
</body>
    
 
</html>
