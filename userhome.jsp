<%@ page  import = "java.sql.*"%>
<%@ page  import = "java.lang.*"%>

<HTML>
<HEAD>
<TITLE>products</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">

<% String u_id=(String) session.getAttribute("u");
String u_pass=(String) session.getAttribute("p");    
String type=(String) session.getAttribute("t");

       Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
     Statement s1=con.createStatement();
    ResultSet rs1 =s1.executeQuery("select uname from user_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
    
    int count =0;
    while( rs1.next() )
     { 
      count = count +1 ;
     } 
    
    if ( count == 0) 
    {
    response.sendRedirect("login.html");
    rs1.close();
    }
    
String dbURL1="jdbc:mysql://localhost:3306/medicates";
	Connection con1=DriverManager.getConnection(dbURL1,"root","");	


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

</HEAD>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
<%
if(flag==1)
{
%>
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
<!-- ImageReady Slices (products.psd) -->
			<div align="center"><br><h2><%=u_id %>- Home Page</h2></div><br>
			 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt="" src="images/response.jpg" width="766" height="154"><br></div><font face="Tahoma" size="2">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
			<a href= "docresview.html"><img src="images/resclick.png" alt="" width="766" height="55"></img></a> <br><br><br><br><br></font>
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 <img alt="" src="images/uploadreport.png" width="350" height="250">
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<img alt="" src="images/medicine.jpg" width="350" height="250">
	<br>
	 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="reports.jsp"><img alt="" src="images/uploadrep.png" width="350" height="50"></img></a>	 
	 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
	 <a href="ordermed.html"><img alt="" src="images/ordermed.png" width="350" height="50"></img></a>
<%
session.setAttribute("log","in");
%>
<%
}
else
{
   response.sendRedirect("login.html");
usr.close();
}
%>				
</BODY>
</HTML>