<%@ page import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page  import = "java.lang.*"%>
<%@ page  import = "java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'forums.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%

 String type=(String) session.getAttribute("t");
if(type.equals("User"))
{
%>
<jsp:forward page="userhome.jsp"/>
<%
}
 if (type.equals("Pharmist"))
{
%>
<jsp : forward page="pharhome.jsp"/>
<%
}
 if(type.equals("Doctor"))
{
%>
<jsp : forward page="dochome.jsp"/>
<%
}
%>

  
  
    <br>
  </body>
</html>
