 
 <html>
<head>
<title>Medicine Record</title>
<%@page import="java.sql.*;" %>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

<form method="post" action="upm.jsp">
<%
  try
  {
	   
	   String mn=request.getParameter("mednm");
	   	   String q=request.getParameter("qty");
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL,"root","");
    Statement s=con.createStatement();
 
 
 ResultSet rs =s.executeQuery("select mname from pharmed");
		
		%>
		<select name="mn">
		<%
		  while(rs.next())
	  {
	     %>
		 <option><%=rs.getString(1)%></option>
		 <%
	  }
  
  %>

		 </select>
		
		 Enter Quantity<input type="text" name="qty">
		 <br>
		 <br>
		 <input type="submit" name="submit" value="Update">
		  <%
  }
		 catch(Exception e)
  {
	    out.println(e);
  }
		 %>
		 </form>
		 </body>
		 </html>