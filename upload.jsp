<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<HTml>
<HEAD><TITLE>Display file upload form to the user</TITLE></HEAD>
  <BODY> 
<%
Class.forName("com.mysql.jdbc.Driver");
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
Statement sdoc=con1.createStatement();
    ResultSet doc=sdoc.executeQuery("select uid,pwd from docreg where uid='"+u_id+"' AND pwd='"+u_pass+"'");
while(doc.next())	
{
if(doc.getString(1).equals(u_id) && doc.getString(2).equals(u_pass) && type.equals("Doctor"))
{
flag=1;
}
}
%>
<%
if(flag==1)
{
%>
<FORM  ENCTYPE="multipart/form-data" ACTION=
"upload.jsp" METHOD=POST onsubmit="return check();">
                <br><br><br>
          <center><table border="2" >
                    <tr><center><td colspan="2"><p align=
"center"><B>Upload Video ..</B><center></td></tr>
                    <tr><td><b>Choose the file To Upload:</b>
</td>			               
    <td><INPUT NAME="F1" TYPE="file" accept=".mp4" ID="F1"></td></tr>
                                        <tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="Upload Video" ></p></td></tr>
             <table>
<h3> Note You Can Upload video of Upto 30mb<br> and <br>video should be of only File Format .mp4 .</h3>
     </center>      
     </FORM>
<%
}
else
{
out.println("Please Login to continue");
}
%>
</BODY>
<script type="text/javascript" language="JavaScript">
function check() {
  var ext = document.getElementById("F1").value;
  ext = ext.substring(ext.length-3,ext.length);
  ext = ext.toLowerCase();
  if(ext == 'mp4')

 {
return true;
}    
else
{
alert('You selected a .'+ext+
          ' file; please select a .mp4 file instead!');
    return false; 
  }
}
</script>
</HTML>
