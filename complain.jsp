<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>

<%!String id,complain ;%><%
 id = (String)request.getSession().getAttribute("uid"); 
 complain = (String)request.getSession().getAttribute("complaintxt");
%>
<%
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/student";
Statement stm = null;

try{
    String query ="insert into complainrecord (id,complain) values('"+id+"','"+complain+"')";
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
int s =stm.executeUpdate(query);
if(s>0){

out.println("<script type=\"text/javascript\">");
out.println("alert('"+complain+"')");
out.println("location='logindex.jsp'");
out.println("</script>"); 
}
else{
System.out.println("Error!");
}

}
catch(Exception e){
    e.printStackTrace();
}

 %>
 