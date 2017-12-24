<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>

<html>
<body>
 <body bgcolor=#F0F0F0 	>
 
   &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<object height="240" border="0" width="766" classid="clsid:D27CDB6E-AE6D-11CF-96B8-444553540000" id="obj1" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"> 
				<param name="movie" value="images/header.swf"> 
				<param name="quality" value="High"> 
				<embed height="240" width="766" src="images/header.swf" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="obj1"></embed></object> 
				<br></div>
				<br>

<%
  
    Class.forName("com.mysql.jdbc.Driver");
    String dbURL = "jdbc:mysql://localhost:3306/medicates";
    Connection con = DriverManager.getConnection(dbURL, "root","");
    
    ResultSet rs;
    String value;
%>
<%
	
        String contentType = request.getContentType();
        String did1=(String) session.getAttribute("did");
      
 if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) 
{
                DataInputStream in = new DataInputStream(request.getInputStream());
                //we are taking the length of Content type data
                int formDataLength = request.getContentLength();
                byte dataBytes[] = new byte[formDataLength];
                int byteRead = 0;
                int totalBytesRead = 0;
                //this loop converting the uploaded file into byte code
                while (totalBytesRead < formDataLength)
 			{
                        byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                        totalBytesRead += byteRead;
                        }
                                        String file = new String(dataBytes);
                 String server_path = getServletContext().getRealPath("/");
 		String upload_directory = "reports/";
		String complete_path = server_path + upload_directory;
                String saveFile = file.substring(file.indexOf("filename=\"") + 10);
                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
                saveFile = saveFile.substring(saveFile.lastIndexOf("\\")+ 1,saveFile.indexOf("\""));
               
		 int lastIndex = contentType.lastIndexOf("=");
                String boundary = contentType.substring(lastIndex + 1,contentType.length());
                int pos;
                //extracting the index of file 
		pos = file.indexOf("filename=\"");
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                int boundaryLocation = file.indexOf(boundary, pos) - 4;
                int startPos = ((file.substring(0, pos)).getBytes()).length;
                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
                FileOutputStream fileOut = new FileOutputStream(complete_path+saveFile);
                fileOut.write(dataBytes, startPos, (endPos - startPos));

try
{
PreparedStatement ps=con.prepareStatement("insert into reports(rimgname,d_id) values('"+saveFile+"','"+did1+"') ");
ps.executeUpdate();
}
catch(Exception e)
{
out.println(e);
}

                

		fileOut.flush();
                fileOut.close();
	out.println("Report Uploaded");
                                }%>
<br><table border="2"><tr><td><b>You have successfully
 upload the Report .</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </td></tr></table> <%
                

%>
<%
int ri=0;
Statement s=null;
s=con.createStatement();
ResultSet r=s.executeQuery("select rid from reports order by rid desc limit 1");

while(r.next())
{
int rd=r.getInt(1);

out.println("Your Report Id is :" + (rd));
}
%>




</body>
</html>