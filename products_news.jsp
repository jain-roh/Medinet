<%@ page  import="java.sql.*" %>
<%@ page session ="true"%>
<%@ page import= "java.util.*"%>
<HTML>
<HEAD>
<%
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL, "root","");
    Statement s=con.createStatement();
    ResultSet rs;
    String value;
%>

<meta http-equiv="Content-Language" content="en-us">
<TITLE>Latest News in Medical Field</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
</HEAD>
 <body bgcolor=#F0F0F0 	>
 
   &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object height="240" border="0" width="766" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"> 
				<param name="movie" value="images/header.swf"> 
				<param name="quality" value="High"> 
				<embed height="240" width="766" src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1"></embed></object> 
				<br></div>
				<br>

&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<!-- ImageReady Slices (general_for_everyone.psd) -->
			<p style="margin-top: 1px">
			<b><font size="2" face="Verdana">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Latest News regarding to Products  
			of&nbsp; treatment  
			of any new disease and it's detail.</font></b><font size="2"> </font>
			</p>
			<table cellpadding="5" cellspacing="1" align =center>
	<%
		 out.println("<th>Pno.</th><th>name</th><th>The product use for that disease</th><th>The dosage</th><th>Any side effets</th><th>Age Limit</th>");
%>
<%
rs=s.executeQuery("SELECT * from tblproduct_admin");
while(rs.next())
{
%>
	<font face="Verdana" size="2">
	
	

	</font>
	
 	 <tr> 
    	<td height="20" width="10" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%=rs.getString(1)%></font></td>
    	<td height="20" width="138" bgColor=#6AA3D0>
		<font face="Verdana" size="2"><%=rs.getString(2)%></font></td>
    	<td height="20" width="138" bgColor= #6AA3D0>
		<font face="Verdana" size="2"><%=rs.getString(3)%></font></td>
    	<td height="20" width="138" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%=rs.getString(4)%></font></td>
    	<td height="20" width="138" bgColor= #6AA3D0>
		<font face="Verdana" size="2"><%=rs.getString(5)%></font></td>
		<td height="20" width="138" bgColor= #6AA3D0>
		<font face="Verdana" size="2"><%=rs.getString(6)%></font></td>
		

	<%
	}
	%>
  </tr>
</table>
</TD>
		
<!-- End ImageReady Slices -->
</BODY>
</HTML>