<% 
String reg = request.getParameter("register");
String log = request.getParameter("logout");

if(log.equals("logout")){
    
out.println("<script type=\"text/javascript\">");
out.println("location='index.jsp'");
out.println("</script>");
}
if(reg.equals("register")){
    String wardid2 = (String)request.getSession().getAttribute("wardid");
    %><jsp:forward page="hostelregister.jsp"/><%
}

%>