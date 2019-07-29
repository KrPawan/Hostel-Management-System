  <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
 <%! String id,name,fname,address,gender,rent,contact,pass,path,hostid,pwd ;%>
<% 
  hostid = request.getParameter("hostid");
  pwd = request.getParameter("hostpwd");
 
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/student";
Statement stm = null;

try{
    
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
ResultSet rs = stm.executeQuery("select * from registration where id='"+hostid+"' "  );

if(rs.next()){
   pass=rs.getString("password");
   id=rs.getString("id");
   name=rs.getString("name");
   path=rs.getString("photo");
   fname=rs.getString("fname");
   address=rs.getString("address");
   rent=rs.getString("rent");
   gender=rs.getString("gender");
   contact=rs.getString("contact");
   
    request.getSession().setAttribute("uid", id); 
    request.getSession().setAttribute("pass", pass);
    request.getSession().setAttribute("path",path);
    request.getSession().setAttribute("name", name); 
    request.getSession().setAttribute("fname",fname); 
    request.getSession().setAttribute("address",address); 
    request.getSession().setAttribute("rent", rent); 
    request.getSession().setAttribute("gender",gender); 
    request.getSession().setAttribute("contact",contact); 
   
   if(pass.equals(pwd)) {
%><jsp:forward page="logindex.jsp" /><%
}
     else{
     
out.println("<script type=\"text/javascript\">");
out.println("alert('password not matched')");
out.println("location='index.jsp'");
out.println("</script>"); 

     
     }
}   
else{


out.println("<script type=\"text/javascript\">");
out.println("alert('id  not matched')");
out.println("location='index.jsp'");
out.println("</script>"); 

}

}
catch(Exception e){
    e.printStackTrace();
}

 %>

