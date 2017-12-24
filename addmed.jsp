<%@page import="java.sql.*"%>
<html>
<head>
<title>Medicine Record</title>
</head>

<body bgcolor=#F0F0F0>
  &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0" border="0" width="766" height="240">
				<param name="movie" value="images/header.swf"></param>
				<param name="quality" value="High"></param>
				<embed src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1" width="766" height="240"></object>
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

	   String mn=request.getParameter("mednm");
	   	   String q=request.getParameter("qty");
if(flag==1)
{

  try
  {
	   
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con3 = DriverManager.getConnection(dbURL,"root","");
    Statement s7=con3.createStatement();
	
	Statement s5=con3.createStatement();
   ResultSet rs =s5.executeQuery("select area from phar_reg ");
		
	if(rs.next())
	  {
	String a=rs.getString(1);
		 	out.println(q);
		    //Statement sss=con.;

int t =s7.executeUpdate("insert into pharmed(area,mname,mqty) values('"+a+"','"+mn+"','"+q+"')");
if(t>0)
{
out.println("added successfully");
}
else
{
out.println("sorry,medicine not available");	
}
  }
}	  
  
	  catch(Exception e)
	  {
		    out.println(e);
	  }
}
else
{
out.println("Please Login to continue");
}
	  %>
	 
</body>
</html>