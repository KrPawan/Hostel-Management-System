<%@ page import="java.sql.*" %>

<% 
 String id = request.getParameter("hostid");
 
 
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3307/student";
Statement stm = null;

try{
    
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
ResultSet rs = stm.executeQuery("select * from hostlerid where id='"+id+"'");
if(rs.next()){
response.sendRedirect("modal.jsp");
}
else{
out.println("not found"); 
}
}
catch(Exception e){
    e.printStackTrace();
}
}
 %>

