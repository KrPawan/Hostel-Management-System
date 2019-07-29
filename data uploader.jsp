  <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
  <%! String uid,name,fname,address,gender,rent,contact ;%>
<%
uid=request.getParameter("sid");
name=request.getParameter("sname");
fname=request.getParameter("sfname");
address=request.getParameter("saddress");
gender=request.getParameter("sgender");
rent=request.getParameter("srent");
contact=request.getParameter("contact");
request.getSession().setAttribute("uid", uid);
request.getSession().setAttribute("name", name);
request.getSession().setAttribute("fname", fname);
request.getSession().setAttribute("address",address);
request.getSession().setAttribute("gender", gender);
request.getSession().setAttribute("rent", rent);
request.getSession().setAttribute("contact", contact);

%>
<% 
 
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3307/student";
Statement stm = null;

try{
    
Class.forName("com.mysql.jdbc.Driver");
connection  = DriverManager.getConnection(connectionURL, "root", "root");
stm = connection.createStatement();
String query="insert into registration (id,name,fname,address,rent) values('"+uid+"','"+name+"','"+fname+"','"+address+"','"+rent+"')";
stm = connection.createStatement();
int i=stm.executeUpdate(query);

if(i>0){
%><jsp:forward page="sucess.jsp"/><%
}
else{
%><jsp:forward page="alreadysubmited.jsp"/><%
}


}
catch(Exception e){
    e.printStackTrace();
}

 %>
 
<html>
<head>
    <title>recheck</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/myscript3.js" ></script>
        <link href="css/design1.css" rel="stylesheet">
        <link href="css/design2.css" rel="stylesheet">

</head>
<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>

<%
 String uid = (String)request.getSession().getAttribute("uid");
String  name = (String)request.getSession().getAttribute("name"); 
 String fname = (String)request.getSession().getAttribute("fname");
String  gender = (String)request.getSession().getAttribute("gender"); 
 String address = (String)request.getSession().getAttribute("address");
String  rent = (String)request.getSession().getAttribute("rent"); 
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body background="image/iimtbuild.jpg">
    
    
        
<form  name="regform" action="studentphotoupload.jsp" onsubmit="return photovalidate()" method="POST"  enctype="multipart/form-data">
    <div>
        
        <p class="reglabel">registerd successfully</p>
        <div class="form-group">
                <hr color="white">
                <p class="yellow"> Hostler id &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <%=uid%><br>
                                   Name  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=name%><br>
                                   Father's name &nbsp&nbsp&nbsp&nbsp: <%=fname%><br>
                                   Gender&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <%=gender%><br>
                                   Address&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=address%><br>
                                   Rent amount &nbsp&nbsp&nbsp&nbsp : <%=rent%><br>
                </p>
                <hr color="white">
                <p class="aqua">
               
                 upload student's photo :
                 <input type="file" class="form-control" id="gallimage" name="gallimage"  />
                 <span id="messb"></span>                
            </p>
            
               <input type="submit" class="btn btn-success  " value="submit" />
               
            
        </div>

    </div>
</form>

    </body>
</html>

