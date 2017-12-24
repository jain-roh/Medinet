<%@ page import="java.sql.*" %>
<html>
<head>
<title>Thanks</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor=#F0F0F0>
  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
				&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <br>
<%
 String n_treatment = request.getParameter("n_treatment");
 String n_tproof = request.getParameter("n_tproof");
 String n_disease = request.getParameter("n_disease");
 String n_dproof = request.getParameter("n_dproof");
       
  Class.forName("com.mysql.jdbc.Driver");
  String dbURL = "jdbc:mysql://localhost:3306/medicates";
  Connection con =null;
  Statement s=null;
  int rs=0;
try {
      
    con = DriverManager.getConnection(dbURL,"root","");
    s=con.createStatement();
    rs=s.executeUpdate("insert into tblnews_admin values ('"+n_treatment+"','"+n_tproof+"','"+n_disease+"','"+n_dproof+"')");
    
	if(rs>=1)
	{
		%>


		<font face="MS Sans Serif">
<b>&nbsp;&nbsp; </b>
Thank u for your valuable information.</font></body>

<%
	}
}

catch(Exception e)
{
out.println(e);}

%>


</html>