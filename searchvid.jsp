<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'searchvid.jsp' starting page</title>
    
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
  String vidname=request.getParameter("searchvid");
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL, "root","");
    
    ResultSet rs;
    String value;
%>
<table>
			<b><font face="Verdana" size="2" color="#6AA3D0">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <font size="4">Discussion forum Problems:</font></font></b><p>&nbsp;</p>
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;			<table cellpadding="8" cellspacing="1" align=center >
<%
out.println("<th>Vid No.</th><th>Video Name</th><th>View</th>");
%>

 <%   try
    {
    PreparedStatement s=con.prepareStatement("select * from videos where vidname like '%"+vidname+"%'");
    rs=s.executeQuery();
    	
	

 	
	while(rs.next())
    {
    %>
    <font face="Verdana" size="2">
    <% String vn = rs.getString(2); %></font>
   <tr> 
    	<td height="40" width="75" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%=rs.getString(1)%></font></td>
    	<td height="40" width="400" bgColor=#6AA3D0><font face="Verdana" size="2"><%=vn%></font></td>
    	<td height="40" width="125" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%out.println("<a href='videosearched.jsp?i="+vn+"'>Video</a>");%></font></td>

</tr>
<%
}
%>

</table>
<%  

	
}

catch(Exception e)
{
  out.println(e);}

%>
   
   <br>
  </body>
</html>
