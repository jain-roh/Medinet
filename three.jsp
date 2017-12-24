<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.awt.image.BufferedImage,java.io.ByteArrayOutputStream,java.io.InputStream,java.sql.Blob,java.sql.Connection,
java.sql.ResultSet,javax.swing.ImageIcon,java.sql.*" %>

<%
try
{

Class.forName("com.mysql.jdbc.Driver").newInstance();


Connection con;
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medicates");
int id=Integer.parseInt(request.getParameter("id"));
out.println("id:"+id);
PreparedStatement po=con.prepareStatement("select report from reports where rid=?");   

po.setInt(1,id);
ResultSet rs = po.executeQuery();
if(rs.next()) {
byte[] bytearray = new byte[4096];
int size=0;
InputStream image;
image = rs.getBinaryStream(1);
response.reset();
response.setContentType("image/gif");
while((size=image.read(bytearray))!= -1 ){
response.getOutputStream().write(bytearray,0,size);
} 
response.flushBuffer();
image.close();
rs.close();

 }
}
catch (Exception exc)
{
out.println(exc);
}

%> 



</body>
</html>