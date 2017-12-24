<%@ page  import="java.sql.*" %>
<%@ page session ="true"%>
<%@ page import= "java.util.*"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="en-us">
<TITLE>Discussion Forum Questions </TITLE>

<%
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicate";
    Connection con = DriverManager.getConnection(dbURL,"root","");
    Statement s=con.createStatement();
    ResultSet rs;
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
 Statement sdoc=con1.createStatement();
    ResultSet doc=sdoc.executeQuery("select uid,pwd from docreg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
while(doc.next())	
{
if(doc.getString(1).equals(u_id) && doc.getString(2).equals(u_pass) && type.equals("Doctor"))
{
flag=1;
}
}
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

<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
</HEAD>
<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

	
	
<!-- ImageReady Slices (general_for_everyone.psd) -->

<table>
			<b><font face="Verdana" size="2" color="#6AA3D0">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <font size="4">Discussion forum Problems:</font></font></b><p>&nbsp;</p>
			<table cellpadding="5" cellspacing="1" align=center >
	
<%
		out.println("<th>Qno.</th><th>Topic Name</th><th>Description</th><th>Posted By</th><th>Click on Reply</th>");
%>
<%
rs=s.executeQuery("select * from forum_ms order by fid DESC");
while(rs.next())
{

  
%>    	
		


	
<font face="Verdana" size="2">
	<%int st=rs.getInt(1);%>
	

	</font>

<font face="Verdana" size="2">
	<%String quest=rs.getString(2);%>
	

	</font>
<font face="Verdana" size="2">
	<%String desc=rs.getString(3);%>
	

	</font>
	
 	 <tr> 
	
	<td height="70" width="20"bgColor= #BFBFBF >	<font face="Verdana" size="2"><%=st%></font></td>		
 	    	
    	
		<td height="70" width="150"bgColor= #6AA3D0 ><font face="Verdana" size="2"><%=quest%></font></td>
		<td height="70" width="200"bgColor= #BFBFBF ><font face="Verdana" size="2"><%=desc%></font></td>

<td height="150" width="50" bgColor= #6AA3D0 ><font face="Verdana" size="2"><%=rs.getString(4)%></font></td>
		<td height="70" width="40"bgColor= #BFBFBF ><font face="Verdana" size="2"><%out.println("<a href='forums_reply.jsp?i="+st+"'>View Forum</a>");%></font></td>
		
     
		
	
	<%
	}
	%>
<%
if(flag==1)
{
%>
	<form action="forumquestion.jsp" method=post name="aa" onsubmit="return func1();">
	<p><font face="Tahoma"><font size="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

post a question: 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></font>

	    <input type="text" size="50" maxlength="500" name="question" style="border: 1px solid #6FB59F"></font><b><font face="Times New Roman" color="#FF0000"></font></b></p>
<p align="center" ><font face="Tahoma"><font size="2"><b>Details: </b></font>		
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" size="50" width="50" height="5" maxlength="500" name="desc" style="border: 1px solid #6FB59F"></font>
<p align="center" style="margin-bottom: -16px">
		<input type="submit" value="Submit" name="submit" style="font-family: Verdana; font-size: 10px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="Reset" name="B4" style="font-family: Verdana; font-size: 10px">&nbsp;
		
		
		
		<br>	
		<br><br>
	</form>	
<%
}
%>
  </tr>
</table>
<br>
<br>
<br>

<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="1500" height="250" bgcolor= #000000>
				<param name="movie" value="images/dock.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/dock.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="1500" height="250" bgcolor= #000000 ></object>
<!-- End ImageReady Slices -->
</BODY>
</HTML>