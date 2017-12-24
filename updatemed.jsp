<html>
<head>
<title>Medicine Record</title>
<%@page import="java.sql.*;" %>
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
String i=(String)session.getAttribute("pid");
	   String mn=request.getParameter("mednm");
	   out.println(mn);
	   	   String q=request.getParameter("qty");
if(flag==1)
{
  try
  {
	   
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
    Statement s=con.createStatement();
	out.println("1");
    ResultSet rs =s.executeQuery("select area from phar_reg where uid='"+i+"'");
		out.println("2");
	if(rs.next())
	  {
	String a=rs.getString(1);
	Statement stt=con.createStatement();
		out.println("3");
	int k=0;
	 k=stt.executeUpdate("update pharmed set mname='"+mn+"',mqty='"+q+"' where mname='"+mn+"'and mqty='"+q+"' and area='"+a+"' and mid='"+i+"' ");
     if(k==0)
		  {
		 	out.println("4");
			Connection cc=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicates");
		    Statement sss=cc.createStatement();
int t =sss.executeUpdate("insert into pharmed values('"+i+"','"+a+"','"+mn+"','"+q+"')");
	out.println("5");
		  }
		  
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