<%@page import="java.sql.*;" %>

<BODY BGCOLOR=#F0F0F0 LEFTMARGIN=275 TOPMARGIN=25 MARGINWIDTH=0 MARGINHEIGHT=0>  
&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
				<br>

<%

String dbURL1="jdbc:mysql://localhost:3306/medicates";
	Connection con1=DriverManager.getConnection(dbURL1,"root","");	
String u_id=(String) session.getAttribute("u");
String u_pass=(String) session.getAttribute("p");    
String type=(String) session.getAttribute("t");	
 Statement susr=con1.createStatement();
    ResultSet usr=susr.executeQuery("select uid,pwd from phar_reg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
int flag=0;
while(usr.next())	
{
if(usr.getString(1).equals(u_id) && usr.getString(2).equals(u_pass) && type.equals("Pharmist"))
{
flag=1;
}
}
if(flag==1)
{
  try
  {
	  String i=(String)session.getAttribute("pid");
	  //out.println(i);
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection c1 = DriverManager.getConnection(dbURL,"root","");
    Statement f7=c1.createStatement();
	//out.println("1");
   
		 	//out.println("4");
		   //Statement sss=con.;
   ResultSet rt=f7.executeQuery("select area from phar_reg where uid='"+i+"' ");
	 while(rt.next())
	  {
           String a=rt.getString(1);       
              Statement sm=c1.createStatement();
		    ResultSet rtt=sm.executeQuery("select * from ordermed where area='"+a+"' ");
			while(rtt.next())
		  {
				%>
<table border=5 width="884" height="187">
<th>Name</th><th>Phone</th><th>Address</th><th>Area</th><th>Medicine</th><th>Quantity</th>

	<tr><td><%=rtt.getString(1)%></td><td><%=rtt.getString(2)%></td><td><%=rtt.getString(3)%></td><td><%=rtt.getString(4)%></td><td><%=rtt.getString(5)%>		  </td><td><%=rtt.getString(6)%></td></tr>		 
	<%

	  }
  }
	  %>
	  </table>
	  <%
  

}
  
	  catch(Exception e)
	  {
		    out.println(e);
	  }
}
else
{
out.println("Please Login to Continue");
}
	  %>
	  </BODY>
	  