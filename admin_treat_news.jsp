<%@ page  import="java.sql.*" %>
<%@ page session ="true"%>
<%@ page import= "java.util.*"%>
<HTML>
<HEAD>
<%
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhosy:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL, "root","");
    Statement s=con.createStatement();
    ResultSet rs;
    String value;
%>

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
<!-- ImageReady Slices (general_for_everyone.psd) -->
			<p style="margin-top: 1px">
			<b><font size="2" face="Verdana">Latest News regarding to Products 
			of&nbsp; treatment 
			of any new disease and it's detail.</font></b><font size="2"> </font>
			</p>
			<table cellpadding="5" cellspacing="1" align =center>
	<%
		 out.println("<th>Nno.</th><th>Disease name</th><th>It's Proof</th><th>Treatment</th><th>It's Proof</th><th>Admin has to approve</th>");
%>
<%
rs=s.executeQuery("SELECT * from tblnews");
while(rs.next())
{
%>
	<font face="Verdana" size="2">
	<% String st=rs.getString("n_no");%>
	<% String st1=rs.getString("n_disease");%>
	<% String st2=rs.getString("n_dproof");%>
	<% String st3=rs.getString("n_treatment");%>
	<% String st4=rs.getString("n_tproof");%>
	

	</font>
	
 	 <tr> 
    	<td height="20" width="10" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%out.print(st);%></font></td>
    	<td height="20" width="138" bgColor=#6AA3D0><font face="Verdana" size="2"><%out.print(st1);%></font></td>
    	<td height="20" width="138" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%out.print(st2);%></font></td>
    	<td height="20" width="138" bgColor= #6AA3D0>
		<font face="Verdana" size="2"><%out.print(st3);%></font></td>
    	<td height="20" width="138" bgColor= #BFBFBF>
		<font face="Verdana" size="2"><%out.print(st4);%></font></td>
    	<td height="20" width="138"bgColor= #BFBFBF ><font face="Verdana" size="2"><%out.println("<a href='verified_news.jsp?i1=" +st1+ "&i2=" + st2 +"&i3=" + st3 +"&i4=" + st4+"'>Verified</a>");%></font></td>
    	

	<%
	}
	%>
  </tr>
</table>
</TD>
		<TD>
			&nbsp;</TD>
	</TR>
	</TABLE>
</BODY>
