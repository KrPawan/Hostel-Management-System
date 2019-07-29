<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<% 
String host=request.getParameter("hostid");
String str;
String check;
String saveFile="";
String contentType = request.getContentType();
%>
<% 

 
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3307/student";
Statement stm = null;
%><%
try{
    
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
ResultSet rs = stm.executeQuery("select id from registration where id='"+host+"'" );
while(rs.next()){
  

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
 str="host"+(saveFile.substring(saveFile.indexOf(".")));
File ff = new File("E:/DO NOT DELETE/Jantar Mantar/hostelDetail/web/studentphoto/"+str);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
}
out.print("success");

}

}
catch(Exception e){
    e.printStackTrace();
}


 %>