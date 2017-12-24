<%@ page  import = "java.sql.*"%>
<%@ page  import = "java.lang.*"%>
<html>
<head>
<title>Medicine Record</title>
<% String Name = request.getParameter("productname");%>
<%
if (Name=="")
{
out.print("no record found");
}
%>

<%
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
    Statement s=con.createStatement();
    ResultSet rs =s.executeQuery("select * from tblproduct_admin where p_disease like'"+Name+"%' ORDER BY p_id");

%>

<title>Search Result</title>
</head>

<body><BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
<div align="center"><div align="center">  
  </div><p align="center"><font size="2" face="Verdana">
				<b><font color="#4B927C">Search a Medicine for your Disease</font></b></font></p>
	<p align="center"><a href="home.html">Home</a>&nbsp; &nbsp;<a href="login.html">Log 
    in</a> &nbsp;&nbsp;<a href="contact.html">FeedBack</a></p>
  <form action="search1.jsp"method="POST"><div align="center"> 
    </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
      <strong><font color="#993366">&nbsp;&nbsp;More search </font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
      <input type="text" name="productname" size="50"> 
      <input type="submit" value="Go!" name="B1" style="text-decoration: underline; color: rgb(102, 153, 255); font-family: Tempus Sans ITC; font-weight: bold;"> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
  </form>
  <div align="center"><font color="#996666"><em><font face="Verdana, Arial, Helvetica, sans-serif"><strong>This  
    is the detail of Your Disease and It's Solution**</strong></font></em></font></div><p align="left">  
    <%while(rs.next()) 
	{%> 
  </p>
</div>
<div align="center">
<div align="right">
	<div align="left">
	<p></p>
			<p></p>
		
    </div>

	<div align="left"> </div>
	</div>

</div>
	
<p><em><font color="#996666"><strong><font face="Verdana, Arial, Helvetica, sans-serif"></p>
<table width="34%" border="1" cellpadding =2 cellspacing=5 align=center  bordercolor=#E2F2F1>
  
  <tr> 
    <td width="27%" bgcolor="#FFFFFF"><b>
	<font face="Verdana" size="2" color="#008080">Product Rank</font></b></td>
    </font>
    <td width="32%" bgcolor="#FFFFFF">
	<font face="Verdana" size="2"><%=rs.getString("p_id")%>&nbsp;</font></td>
  </tr>
	<font face="Verdana, Arial, Helvetica, sans-serif">
<tr> 
    <td width="27%" bgcolor="#FFFFFF"><b>
	<font face="Verdana" size="2" color="#008080">Disease Name</font></b></td>
    <td width="32%" bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("p_disease")%>&nbsp;</font></td>
  </tr>

  <tr> 
    <td width="27%" bgcolor="#FFFFFF"><b>
	<font face="Verdana" size="2" color="#008080">Product Name </font></b></td>
    <td width="32%" bgcolor="#FFFFFF">
	<font face="Verdana" size="2"><%=rs.getString("p_name")%>&nbsp;</font></td>
  </tr>
  <tr> 
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">Product Dosage</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("p_dosage")%>&nbsp;</font></td>
  </tr>
  <tr> 
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">&nbsp;Product Side Effects</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("p_side")%>&nbsp;</font></td>
  </tr>
<tr> 
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">&nbsp;Valid Age</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("p_age")%>&nbsp;</font></td>
  </tr>

</table>
</div>
  <%}%>
  <%
      s.close(); 
      con.close();
%>
</p>
<div align="center"><font face="CommercialScript BT" size="4">*</font><font face="Bradley Hand ITC">*  
This data is like First-Aid Treatment of any patient. If any </font> 
<strong></strong><strong> 
	<font face="Verdana, Arial, Helvetica, sans-serif"> 
<font face="Bradley Hand ITC"><font color="#ff0000">allergy </font><font color="#996666">or 
</font><font color="#ff0000">itching</font></font><font color="#996666"><font face="Bradley Hand ITC"> contact Your Doctor 
</font></font></font></strong></div><strong><font face="Verdana, Arial, Helvetica, sans-serif"><font color="#996666"> 
</font></font></strong></body>
</html>