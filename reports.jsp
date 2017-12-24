
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%@ page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>My JSP 'index.jsp' starting page</title>
	
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

String dbURL1="jdbc:mysql://localhost:3306/medicates";
	Connection con1=DriverManager.getConnection(dbURL1,"root","");	
String u_id=(String) session.getAttribute("u");
String u_pass=(String) session.getAttribute("p");    
String type=(String) session.getAttribute("t");	
 Statement susr=con1.createStatement();
    ResultSet usr=susr.executeQuery("select uid,pwd from user_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
int flag=0;
while(usr.next())	
{
if(usr.getString(1).equals(u_id) && usr.getString(2).equals(u_pass) && type.equals("User"))
{
flag=1;
}
}
%>
<%
session.setAttribute("did","docid");
if(flag==1)
{
%>
 <form method="get" name="aa"  action="one.jsp" enctype="multipart/form-data" onsubmit="return check();" > 
<br>
<br></br>

  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Enter Doctor Id:&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <input type="text" name="docid" ID="docid">
</input>
<br><br>
   &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <input type="file" name="file1" accept=".gif" ID="file1"> </input>
   <br><br></br>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <input type="submit" value="Upload Report" />[Please Upload in gif format]
    
    
    <div align="center"><a href="doclist.jsp">Click to View Available Doctors</a></div>

<script type="text/javascript" language="JavaScript">
function check() {
  var ext = document.getElementById("file1").value;
  ext = ext.substring(ext.length-3,ext.length);
  ext = ext.toLowerCase();
	

if(document.aa.docid.value=="")

{
alert("Enter Doctor id");
return false;
}

  if(ext == 'gif')

 {
return true;
}    
else
{
alert("You selected a .'+ext+
          ' file; please select a .gif file instead!");
    return false; 
  }



}

</script>
</form>
<%
}

else
{
out.println("Please Login to Continue");
}
%>
</body>
</html>
