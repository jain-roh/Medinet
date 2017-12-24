<%@ page  import = "java.sql.*"%>
<%@ page  import = "java.lang.*"%>

<HTML>
<HEAD>
<TITLE>products</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
<% String dbURL1="jdbc:mysql://localhost:3306/medicates";
	Connection con1=DriverManager.getConnection(dbURL1,"root","");	
String u_id=(String) session.getAttribute("u");
String u_pass=(String) session.getAttribute("p");    
String type=(String) session.getAttribute("t");



  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
     Statement s1=con.createStatement();
    ResultSet rs1 =s1.executeQuery("select uname from phar_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
    
    int count =0;
    while( rs1.next() )
     { 
		 session.setAttribute("pid",u_id);
      count = count +1 ;
     } 
    
    if ( count == 0) 
    {
    response.sendRedirect("login.html");
    rs1.close();
    }
int flag=0;
Statement sphar=con1.createStatement();
    ResultSet phar=sphar.executeQuery("select uid,pwd from phar_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
while(phar.next())	
{
if(phar.getString(1).equals(u_id) && phar.getString(2).equals(u_pass) && type.equals("Pharmist"))
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
  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font size="5"><strong><object height="240" border="0" width="766" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"> 
				<param name="movie" value="images/header.swf"> 
				<param name="quality" value="High"> 
				<embed height="240" width="766" src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1"></embed></object><br><br>
				<div align="center">
				<%=u_id %> Home Page
				<br></div></strong></font> 
				 
				  
				
				
				<br>
				&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object height="150" border="0" width="766" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"> 
				<param name="movie" value="images/enterproduct.swf"> 
				<param name="quality" value="High"> 
				<embed height="150" width="766" src="images/enterproduct.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1"></embed></object> 
				 
				<br> 
				<br> 
				&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
				<img height="250" width="350" alt="" src="images/medicine.jpg"> 
				&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
				<img height="250" width="350" alt="" src="images/vieworder.png"> 
				<br> 
				&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
				<a href="meddetails.html"><img height="50" width="350" alt="" src="images/updtmed.png"></a> 
				&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
				<a href="vieword.jsp"><img height="50" width="350" alt="" src="images/viewordr.png"></a> 
				<br><br><br><br> 
			 &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<img height="250" width="350" alt="" src="images/usernews.png"> 
		&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;  
			<img height="250" width="350" alt="" src="images/videoclip.gif"> 
			<br> 
			  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
<a href="usernews.jsp"><img height="70" width="350" alt="" src="images/usernewslink.png"></a> 
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
			<a href="upload.jsp"><img height="70" width="350" alt="" src="images/uploadvideo.png"></a><td></td> 
<!-- End ImageReady Slices --> 

<br>
<br>
<br>

<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="1500" height="250" bgcolor= #000000>
				<param name="movie" value="images/dock.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/dock.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="1500" height="250" bgcolor= #000000 ></object>
<%
session.setAttribute("log","in");
%>
<%
}
%>
</BODY>
</HTML>