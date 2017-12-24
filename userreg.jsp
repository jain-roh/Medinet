<%@ page import="java.sql.*" %>
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
 String n = request.getParameter("uname");
 String un = request.getParameter("id");
 String p = request.getParameter("pwd");
 String g=request.getParameter("r1");
 String email=request.getParameter("eid");
 String adr=request.getParameter("addr");
 
       String type="User";
  Class.forName("com.mysql.jdbc.Driver");
  String dbURL = "jdbc:mysql://localhost:3306/medicates";
  Connection con =null;
  Statement s=null;
  int rs=0;
try {
      
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicates","root","");
    s=con.createStatement();
    rs=s.executeUpdate("insert into user_reg values('"+n+"','"+un+"','"+p+"','"+g+"','"+email+"','"+adr+"') ");
	if(rs>=1)
	{ 
		  int c=0;
		  Connection cc=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicates","root","");
		  Statement ss=cc.createStatement();
		  c=ss.executeUpdate("insert into ulogin values('"+un+"','"+p+"','"+type+"')");
	}
		  
    
}

catch(Exception e)
{
out.println(e);}

%>
<font face="MS Sans Serif">
<b>&nbsp;&nbsp;</b>Your Login Id: </font><font face="Square721 Ex BT" color="#808000"><%=un%>
</font>
<p><font face="MS Sans Serif">Your Password:</font>&nbsp;<font face="Square721 Ex BT" color="#808000"><%=p%></p>
</font>
<font face="MS Sans Serif">
<p align="center">Click Here to <a href="services.html">Login </a></p></font>
</body>

</html>