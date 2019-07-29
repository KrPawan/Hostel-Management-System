<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<%
 
 
String saveFile="";
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File("E:/google test/final/web/image/"+saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%><br><table border="2"><tr><td><b>You have successfully upload the file:</b>
<%out.println(saveFile);%></td></tr></table>

<%--
Connection conn = null;
Statement stm = null;

--%>
<%-- 
String connectionURL = "jdbc:mysql://localhost:3307/student";

try{
    String query ="insert into imgpath values('"+saveFile+"')";
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root", "root");
stm = conn.createStatement();
stm.executeUpdate(query);
       }
catch(Exception e){
    e.printStackTrace();
}

--%>
<%
String id = request.getParameter("hostid");
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3307/student";
Statement stm = null;

try{
    
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();

ResultSet rs = stm.executeQuery("select * from hostlerid where id='"+id+"'");
if(rs.next()){
response.sendRedirect("modal.jsp");
}
else{
%> <script type="text/javascript" language="javascript">
    alert("not found");
    
</script> <% 
}

}
catch(Exception e){
    e.printStackTrace();
}
}
 %>
 <h3><a href="imageShow.jsp">click to show images</a></h3>