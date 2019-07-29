<%-- 
    Document   : reg
    Created on : Nov 13, 2017, 6:23:24 PM
    Author     : Pawan-PC
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%! String uid,name,fname,address,gender,photo,detail ;%>
<%
uid=request.getParameter("cid");
name=request.getParameter("cname");
fname=request.getParameter("cfname");
address=request.getParameter("caddress");
gender=request.getParameter("cgender");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration page</title>
        
    </head>
    <body>
        <% 
 Statement stmt,st;
 ResultSet rs;
 %>
 <%    

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 Connection con=DriverManager.getConnection("Jdbc:Odbc:childreg");
stmt = con.createStatement();
st=con.createStatement();
String str="insert into childreg (Name,Fathername,Age,Address,Gender,Detail) values('"+name+"','"+fname+"','"+address+"','"+gender+"','"+detail+"')";

PreparedStatement ps = con.prepareStatement(str);

 ps.executeUpdate();
 st.close();

%>
<%
con.close();
%>
      		<script>
		if(confirm("Details Submitted")==true){
		
                <jsp:include page="home.jsp"/>
		}
		</script>
 
        
         
              
    </body>
</html>
