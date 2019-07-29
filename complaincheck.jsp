  <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<% 
 String wardid = request.getParameter("wardid");
 String pwd = request.getParameter("wardpwd");
 
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3307/student";
Statement stm = null;

try{
    
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
ResultSet rs = stm.executeQuery("select * from wardenrecord where id='"+wardid+"' and password='"+pwd+"'"  );

if(rs.next()){
   request.getSession().setAttribute("wardid", wardid);
%><jsp:forward page="complainrecord.jsp" /><%
}
else{


out.println("<script type=\"text/javascript\">");
out.println("alert('id or password not matched')");
out.println("location='index.jsp'");
out.println("</script>"); 

}

}
catch(Exception e){
    e.printStackTrace();
}

 %>

