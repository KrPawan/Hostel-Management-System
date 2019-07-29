<%-- 
    Document   : imageupload
    Created on : Apr 9, 2016, 11:47:27 AM
    Author     : sanjeev
--%>
<%@page import="Mypack.information"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Home.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="header">
            <%@include file="Header.html" %>
            <div class="googleSercher">
                <form action="MySercher" method="post">
                    <input type="text" name="nam" placeholder="search">
                     <input type="image" src="img/search.png" onclick="alert" width="30px" height="20px">
                    </form>
            </div>
        </div>
        
        <div class="container">
           
            <div class="menu">
           <div class="main_menu">
                <%@include file="Menu.jsp" %>
                </div>

            </div>
                <div class="uragi">
                               <%
        if(request.getAttribute("info")==null)
                       {
            response.sendRedirect("index.jsp");
            
        }
        information i=(information)request.getAttribute("info");
        session = request.getSession();
        session.setAttribute("info", i);
       out.println(i.getImgcount());    
        %>
         
        <form action="Uploading" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                    <td>
                        Select Image1
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" name="file1"/>
                    </td>
                </tr>
              
                <tr>
                    <td></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><input type="submit" value="submit"/>
                </tr>
                
        </table>
            
        </form>
        <a href="TourPackage.jsp">go to tour info</a>
                </div>
        <div class="footer">
            <%@include file="Footer.html" %>
        </div>
        </div>
    </body>
</html>
