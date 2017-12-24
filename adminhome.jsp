<%@ page  import = "java.sql.*"%>
<%@ page  import = "java.lang.*"%>

<HTML>
<HEAD>
<TITLE>products</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
<%{ String u_id = request.getParameter("u_id");

 String u_password = request.getParameter("u_password");
     String t = request.getParameter("type");
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
     Statement s1=con.createStatement();
    ResultSet rs1 =s1.executeQuery("select uid,pwd from ulogin where uid='"+u_id+"' AND pwd='"+u_password+"'");
    
    int count =0;
    while( rs1.next() )
     { 
      count = count +1 ;
     } 
    
    if ( count == 0) 
    {
    response.sendRedirect("services.html");
    rs1.close();
    }
   }       
%>

</HEAD>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

<!-- ImageReady Slices (products.psd) -->
			<font face="Tahoma" size="2">If you want see the Latest news then
			<a href="news.jsp">click here!</a></font></TD>
		<TD ROWSPAN=11>
			<p align="justify"><font face="Verdana" size="2">In this section 
			user can get latest Quality controls on Food and Environment.</font></TD>
			<font face="Tahoma" size="2">If you want to update about new diseases and treatments then 
			 <a href="admin_news.html">click here!</a></font></TD>
		<TD COLSPAN=10 ROWSPAN=4>if you want to update latest product news then <a href="admin_products.html">click here</a>
			&nbsp;</TD>

<!-- End ImageReady Slices -->
</BODY>
</HTML>