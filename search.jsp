
<%@ page  import = "java.sql.*"%>
<%@ page  import = "java.lang.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Medicine Record</title>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

<% String Name = request.getParameter("T1");%>
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
    ResultSet rs =s.executeQuery("select * from tblmedicine where disease like '%"+Name+"' ORDER BY m_rank");

%>
<script language=javascript >
function changecolor()
{
	if (document.forms("ch").D1.value == 1)
	{	
		document.bgColor="#4b927c"
	}
	if (document.forms("ch").D1.value == 2)
	{	
		//document.forms("ch").backcolor = blue
		document.bgColor = "#808080"

	}
	if (document.forms("ch").D1.value == 3)
	{	
		//document.forms("ch").backcolor = blue
		document.bgColor = "ff8080"

	}
if (document.forms("ch").D1.value == 4)
	{	
		//document.forms("ch").backcolor = blue
		document.bgColor = "#ffffff"

	}


	
}


</script>


<title>New Pae 2</title>
</head>

<body>

<div align="center"> 
  <p align="left"><b>
				<font color="#FFFFFF" size="2" face="Verdana">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <font size="4">Search</font></font><font color="#FF8000" size="2" face="Verdana"><font size="4">  
	a Medicine for Your Illness</font>&nbsp; </font></b></p>
	<p align="center"><a href="home.html">Home</a>&nbsp; &nbsp;<a href="login.html">Log 
    in</a> &nbsp;&nbsp;<a href="contact.html">FeedBack</a></p>
  <form action="search.jsp" method="post"><div align="center"> 
    </div>&nbsp;&nbsp;&nbsp;&nbsp;  
      <strong><font color="#993366">&nbsp; More search </font></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
      <input type="text" name="T1" size="100" > 
      <input type="submit" value="Go!" name="B1" style="text-decoration: underline; color: rgb(102, 153, 255); font-family: Tempus Sans ITC; font-weight: bold;" > 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </input></input>
  </form>
  <p align="left"><font color="#996666"><em><font face="Verdana, Arial, Helvetica, sans-serif"><strong>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; This  
    is the detail of Your Medicine **</strong></font></em></font> 
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
	<font face="Verdana" size="2" color="#008080">Medicine Rank</font></b></td>
    </font>
    <td width="32%" bgcolor="#FFFFFF">
	<font face="Verdana" size="2"><%=rs.getString("m_rank")%>&nbsp;</font></td>
  </tr>
	<font face="Verdana, Arial, Helvetica, sans-serif">
<tr> 
    <td width="27%" bgcolor="#FFFFFF"><b>
	<font face="Verdana" size="2" color="#008080">Medicine Name</font></b></td>
    <td width="32%" bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("m_name")%>&nbsp;</font></td>
  </tr>

  <tr> 
    <td width="27%" bgcolor="#FFFFFF"><b>
	<font face="Verdana" size="2" color="#008080">Medicine Category</font></b></td>
    <td width="32%" bgcolor="#FFFFFF">
	<font face="Verdana" size="2"><%=rs.getString("m_category")%>&nbsp;</font></td>
  </tr>
  <tr> 
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">Medicine Manufacturer</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("m_manfac")%>&nbsp;</font></td>
  </tr>
  <tr> 
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">&nbsp;Side 
	Effects</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("m_side")%>&nbsp;</font></td>
  </tr>
  <tr> 
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">
	Disease</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("disease")%>&nbsp;</font></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">Age</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2"><%=rs.getString("age")%></font></td>
  </tr>
  <tr> 
    <td bgcolor="#FFFFFF"><b><font face="Verdana" size="2" color="#008080">Dosage</font></b></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2">&nbsp;<%=rs.getString("dosage")%></font></td>
  </tr>
   <tr> 
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2" color="#008080"><b>M</b><strong>edicine 
	Composition </strong></font></td>
    <td bgcolor="#FFFFFF"><font face="Verdana" size="2">&nbsp;<%=rs.getString("m_composit")%></font></td>
  </tr>

</table>
</div>
  <%}%>
  <%
      s.close(); 
      con.close();
%>
</p>
<font size="4" face="CommercialScript BT">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; *</font><font face="Bradley Hand ITC">* 
This data is like First-Aid Treatment of any patient. If any </font>
</strong><strong>
	<font face="Verdana, Arial, Helvetica, sans-serif">
<font face="Bradley Hand ITC"><font color="#FF0000">allergy </font><font color="#996666">or
</font><font color="#FF0000">itching</font></font><font color="#996666"><font face="Bradley Hand ITC"> contact Your Doctor
</font>
</body>
</html>