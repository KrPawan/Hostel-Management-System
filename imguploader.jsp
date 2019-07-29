<%@page import="java.util.Random"%>
<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<%! String sess; %>     
<%

         Random rand = new Random();

int n1 = rand.nextInt(1) + 6;

String strng ="00112233445566ABCDEF";

int flag=0;
  
   StringBuilder sb2 = new StringBuilder( strng.length()) ;

     for( int i = 0; i <n1; i++ ) {
      sb2.append( strng.charAt( rand.nextInt(strng.length()) ) );
}sess=sb2.toString();

   %> 
<%
 String  id = (String)request.getSession().getAttribute("uid"); 
 String str = null;
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
 str=  ""+sess+"" +(saveFile.substring(saveFile.indexOf(".")));
File ff = new File("E:/DO NOT DELETE/Jantar Mantar/hostelDetail/web/gallimage/"+str);

FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%>

<%

Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/student";
Statement stm = null;

try{
    String query ="insert into hostelgallery (image,id) values('"+str+"','"+id+"')";
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
int s =stm.executeUpdate(query);
if(s>0){
    
out.println("<script type=\"text/javascript\">");
out.println("alert('image uploaded successfully')");
out.println("</script>");     
response.sendRedirect("logindex.jsp");
}
else{
System.out.println("Error!");
}

}
catch(Exception e){
    e.printStackTrace();
}
}
 %>
 