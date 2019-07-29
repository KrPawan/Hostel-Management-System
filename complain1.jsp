<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<%!String complain;%>
<%
 String  id = (String)request.getSession().getAttribute("uid"); 
 complain=request.getParameter("comp");
%><%

out.println("<script type=\"text/javascript\">");
out.println("alert('"+complain+"')");
out.println("location='logindex.jsp'");
out.println("</script>"); 

 %>
 