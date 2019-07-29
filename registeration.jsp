  <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>

<%! String ward,pass; %>

<% 
 ward = request.getParameter("id");
 pass = request.getParameter("pass");
 
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/student";
Statement stm = null;

try{
    
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
ResultSet rs = stm.executeQuery("select * from wardenrecord where id='"+ward+"'and pass='"+pass+"' "  );

if(rs.next()){
   request.getSession().setAttribute("wardid",ward);
%><jsp:forward page="hostelregister.jsp" /><%
}
else{


out.println("<script type=\"text/javascript\">");
out.println("alert('invalid user or pasword')");
out.println("location='index.jsp'");
out.println("</script>"); 

}

}
catch(Exception e){
    e.printStackTrace();
}

 %>

