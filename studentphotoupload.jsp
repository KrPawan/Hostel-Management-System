<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
 
<%! String str,sid,sname,fname,gender,address,rent,contact ,password;%>
<%
 sid = (String)request.getSession().getAttribute("uid");
  sname = (String)request.getSession().getAttribute("name"); 
 fname = (String)request.getSession().getAttribute("fname");
 gender = (String)request.getSession().getAttribute("gender");
 address = (String)request.getSession().getAttribute("address");
  rent = (String)request.getSession().getAttribute("rent"); 
  contact = (String)request.getSession().getAttribute("contact");
  password =sid;
%>
<% if(sid!= null){

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
 str=""+sid+""+(saveFile.substring(saveFile.indexOf(".")));
File ff = new File("E:/DO NOT DELETE/Jantar Mantar/hostelDetail/web/studentphoto/"+str);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
}
%>

<%

Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/student";
Statement stm = null;

try{
    
Class.forName("com.mysql.jdbc.Driver");
connection  = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
String query="insert into registration (id,name,fname,address,rent,photo,gender,contact,password) values('"+sid+"','"+sname+"','"+fname+"','"+address+"','"+rent+"','"+str+"','"+gender+"','"+contact+"','"+password+"')";
stm = connection.createStatement();
int i=stm.executeUpdate(query);

if(i>0){
%><jsp:forward page="success.jsp"/><%
}
else{

out.println("<script type=\"text/javascript\">");
out.println("alert('Student id already submitted')");
out.println("location='hostelregister.jsp'");
out.println("</script>"); 
}


}
catch(Exception e){
    e.printStackTrace();
}

}

else{


out.println("<script type=\"text/javascript\">");
out.println("alert('you are not logged in')");
out.println("location='index.jsp'");
out.println("</script>"); 
}
%>


 