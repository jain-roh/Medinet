<%@ page  import = "java.sql.*"%>
<%@ page  import = "java.lang.*"%>

<HTML>
<HEAD>
<TITLE>products</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1">
<body bgcolor=#F0F0F0>
  &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>
				<br>


<%

try
{
String u_id = request.getParameter("u_id");

 String u_password = request.getParameter("u_password");
 session.setAttribute("u",u_id);
 session.setAttribute("p",u_password);
     String t = request.getParameter("type");
session.setAttribute("t",t);

if(t.equals("User"))
  {
	  %>
	  <jsp:forward page="userhome.jsp"/>
	<%                           
    }
	  if(t.equals("Pharmist"))
	  {
		  %>
		  <jsp:forward page="pharhome.jsp"/>
		  <%
	  }
		  if(t.equals("Administrator"))
		  {
			  %>
			  <jsp:forward page="adminhome.jsp"/>
			  <%
		  }

			   if(t.equals("Doctor"))
		  {
			  %>
			  <jsp:forward page="dochome.jsp"/>
			  <%
		  }
		  }
catch(Exception e)
{
  out.println(e);
  }


          
%>
</body></HTML>

