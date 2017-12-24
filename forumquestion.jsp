<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.awt.*"%>
<html>
<head>
<title>Thanks</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=200 TOPMARGIN=10 MARGINWIDTH=0 MARGINHEIGHT=0>
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
				<br>

<%! static int count=1;%>
<%

  try
  {
  String  questn = request.getParameter("question");
  String  descrip = request.getParameter("desc");
	String postedby=(String) session.getAttribute("u");
 
       out.println("Problem :"+questn);
out.println("Details :"+descrip);
  Class.forName("com.mysql.jdbc.Driver");
  String dbURL = "jdbc:mysql://localhost:3306/medicate";
  Connection con =null;
  
  int rs=0;

 

      
    con = DriverManager.getConnection(dbURL,"root","");
    
	PreparedStatement s=con.prepareStatement("insert into forum_ms (questn,replyans,postedby) values ('"+questn+"' , '"+descrip+"','"+postedby+"') ");	
    rs=s.executeUpdate();
	
    if(rs>1)
	{
	
	out.println("success");
	}
	else
	{
	  out.println("please check");
	  }
	
}

catch(Exception e)
{
  out.println(e);}

%>

<font face="MS Sans Serif">
<p align="center">Click Here to <a href="discussion.jsp">forums </a></p></font>
</body>

</html>