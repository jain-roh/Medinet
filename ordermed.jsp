<%@page import="java.sql.*" %>
 <%@ page import= "java.util.*"%>
 <html>

<meta http-equiv="Content-Language" content="en-us">
<TITLE>Latest News in Medical Field</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
</HEAD>
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
    ResultSet usr=susr.executeQuery("select uid,pwd from user_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
int flag=0;
while(usr.next())	
{
if(usr.getString(1).equals(u_id) && usr.getString(2).equals(u_pass) && type.equals("User"))
{
flag=1;
}
}
%>
 <% 
if(flag==1)
{
  try
  {
	   String i=(String)session.getAttribute("pid");
	   String mn=request.getParameter("mdn");
out.println("Medicine name:"); 	
	   out.println(mn);
	   	   String q=request.getParameter("qty");
		   String a=request.getParameter("area");
		    String n=request.getParameter("uname");
		   String p=request.getParameter("ph");
		   String ad=request.getParameter("addr");
out.println("From Area:");	   
out.println(a);



    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection c9 = DriverManager.getConnection(dbURL,"root","");
		 
    Statement ss7=c9.createStatement();

		  
     ResultSet rt=ss7.executeQuery("select * from pharmed where mname='"+mn+"' and area='"+a+"' ");
	 if(rt.next())
	  {
                  

		    out.println(" is Available");
			out.println("<br><br><br>");
			Connection cw=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicates","root","");
			Statement s0=cw.createStatement();
			 out.println("<a href=order.html>Click here to Order</a>");

s0.executeUpdate("insert into ordermed values('"+n+"','"+p+"','"+ad+"','"+a+"','"+mn+"','"+q+"' )");	  

}
	  else
	  {
		   out.println("Sorry Medicine is not Available");
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
	  
	  </body>
	  </html>
	  