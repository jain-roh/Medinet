<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

<table border=3>
<th>Report Id</th><th>Response From Doctor</th>

<%
String dbURL1="jdbc:mysql://localhost:3306/medicates";
	Connection con1=DriverManager.getConnection(dbURL1,"root","");	
String u_id=(String) session.getAttribute("u");
String u_pass=(String) session.getAttribute("p");    

    Statement susr=con1.createStatement();
    ResultSet usr=susr.executeQuery("select uid,pwd from user_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
int flag=0;
while(usr.next())	
{
if(usr.getString(1).equals(u_id) && usr.getString(2).equals(u_pass))
{
flag=1;
}
}
	if(flag==1)
{
  try
  {
	  int r=Integer.parseInt(request.getParameter("rd"));
	  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con3 = DriverManager.getConnection(dbURL,"root","");
    Statement s7=con3.createStatement();
	out.println("1");
	Statement s5=con3.createStatement();
   ResultSet rs =s5.executeQuery("select rid,docres  from reports where rid='"+r+"'");
   while(rs.next())
   {
	    int rid=rs.getInt(1);
	    String b=rs.getString(2);
	    %>
	    
	    <tr><td><%=rid%></td><td><%=b %></td></tr>
</table>
   <%
   }
  }
  catch(Exception e)
  {
	   out.println(e);
  }  
}
else
{
out.println("Please Login to continue");
}   
%>
	

</BODY>
</html>