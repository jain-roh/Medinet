<%@ page  import = "java.sql.*"%>
<%@ page  import = "java.lang.*"%>
<%@ page  import = "java.util.*"%>
<HTML>
<HEAD>
<TITLE>products</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
<%  String u_id =(String)session.getAttribute("u");

 String u_pass =(String)session.getAttribute("p");

  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
     Statement s1=con.createStatement();
    ResultSet rs1 =s1.executeQuery("select uname from docreg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
    String dbURL1="jdbc:mysql://localhost:3306/medicates";
	Connection con1=DriverManager.getConnection(dbURL1,"root","");	
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
        
String type=(String) session.getAttribute("t");
Statement sdoc=con1.createStatement();
int flag=0;
    ResultSet doc=sdoc.executeQuery("select uid,pwd from docreg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
while(doc.next())	
{
if(doc.getString(1).equals(u_id) && doc.getString(2).equals(u_pass) && type.equals("Doctor"))
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
&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

<!-- ImageReady Slices (products.psd) -->

			<font face="Tahoma" size="2"><br></font>
			<div align="center"><br><strong><font size="5"><%=u_id%> Home Page</font> </strong></div>
			<br>
&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<img alt="" src="images/uploadreport.png" width="350" height="250">
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; 
			<img alt="" src="images/producthome.jpg" width="350" height="250">
			<br>
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="viewrep.jsp"><img alt="" src="images/viewreport.png" width="350" height="50"></a>
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
			<a href="enter_products.html"><img alt="" src="images/newproduct.png" width="350" height="50"></a>
			<br><br><br><br>
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<img alt="" src="images/usernews.png" width="350" height="250">
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; 
			<img alt="" src="images/videoclip.gif" width="350" height="250">
			<br>
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
<a href="usernews.jsp"><img alt="" src="images/usernewslink.png" width="350" height="70"></a>
			&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
			<a href="upload.jsp"><img alt="" src="images/uploadvideo.png" width="350" height="70"></a>
						
			
			<font face="Tahoma" size="2"><br><br></font><td><br></TD><td><br></TD><p align="justify"><td><br></TD><td><br></TD><font face="Tahoma" size="2"><a href="viewrep.jsp"></a></font></TD>
<br>
<br>
<br>

<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="1500" height="250" bgcolor= #000000>
				<param name="movie" value="images/dock.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/dock.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="1500" height="250" bgcolor= #000000 ></object>
<%
}

%>

<!-- End ImageReady Slices -->
</BODY>
</HTML>