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
 
 String n_disease = request.getParameter("n_disease");
 String n_dproof = request.getParameter("n_dproof");
 String n_treatment = request.getParameter("n_treatment");
 String n_tproof = request.getParameter("n_tproof");
       
  Class.forName("com.mysql.jdbc.Driver");
  String dbURL = "jdbc:mysql://localhost:3306/medicates";
  Connection con =null;
  Statement s=null;
  ResultSet rs=null;
try {
      
    con = DriverManager.getConnection(dbURL,"root","");
    s=con.createStatement();
   
    PreparedStatement s1=con.prepareStatement("insert into tblnews values ('"+n_disease+"','"+n_dproof+"','"+n_treatment+"','"+n_tproof+"')");
s1.executeUpdate();
    
}

catch(Exception e)
{
out.println(e);
}

%>
<font face="MS Sans Serif">
<b>&nbsp;&nbsp; </b>
Thank u for your valuable information.</font></body>

</html>