<title>Medicine Record</title>
<%@page import="java.sql.*;" %>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

<%
  try
  {
	   String i=(String)session.getAttribute("pid");
	   String mn=request.getParameter("mn");
	   out.println(mn);
	   	   String q=request.getParameter("qty");
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection cn = DriverManager.getConnection(dbURL,"root","");
    Statement su=cn.createStatement();
	


		
	int k=0;
	 k=su.executeUpdate("update pharmed set mqty='"+q+"' where mname='"+mn+"'  ");
  
     if(k>=1)
	  {
		 
		   out.println("Updated Successfully");
	  }
	  else
	  {
		    out.println("Please check");
	  }
		 
		  
	  
  }
	  catch(Exception e)
	  {
		    out.println(e);
	  }

%>