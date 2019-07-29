<%@ page import="java.io.*,java.sql.*,java.util.*" %>
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
         <link href="css/heading.css" rel="stylesheet">

</head>
<%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>

<%!String id,name,fname,gender,address,rent,contact; %>
<%
  id =null;
  name = (String)request.getSession().getAttribute("name"); 
 fname = (String)request.getSession().getAttribute("fname");
  gender = (String)request.getSession().getAttribute("gender"); 
 address = (String)request.getSession().getAttribute("address");
 rent = (String)request.getSession().getAttribute("rent");
 contact = (String)request.getSession().getAttribute("contact");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body background="hostelimg/iimtbuild.jpg">
    <%
Random rand = new Random();

int n1 = rand.nextInt(1) + 4;

String str ="0123456789ABCDEF" ;
String sess=null;
int flag=0;
  
   StringBuilder sb2 = new StringBuilder( str.length()) ;

     for( int i = 0; i <n1; i++ ) {
      sb2.append( str.charAt( rand.nextInt(str.length()) ) );
}sess=sb2.toString();
   
id=name+sess;
sb2.delete(0,3);
 request.getSession().setAttribute("uid", id);  
   %>  

   <br>   
<form  name="regform" action="studentphotoupload.jsp" onsubmit="return photovalidate()" method="POST"  enctype="multipart/form-data">
    <div class="regdisplay">
        
        <p class="reglabel">Student Detail <br> please upload photo to submit the form</p><hr class="white">
        <div class="form-group">
                
                <p class="yellow"> 
                    Hostler id &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <%=id%><br>
                                   Name  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=name%><br>
                                   Father's name &nbsp&nbsp&nbsp&nbsp: <%=fname%><br>
                                   Gender &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <%=gender%><br>
                                   Address &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=address%><br>
                                   Rent amount &nbsp&nbsp&nbsp&nbsp&nbsp : <%=rent%><br>
                                   Contact no   &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=contact%><br></p>
                <p class="letter"> Your id is your password you can change it later.
                </p>
                <hr class="white">
                <div class="form-group">
                <p class="aqua">
               
                 upload student's photo :
                 <input type="file" class="form-control" id="simage" name="simage"  />
                 <span id="mess1"></span>                
            </p>
            
               <input type="submit" class="btn btn-success  " value="submit" />
                </div>
            
        </div>

    </div>
</form>

    </body>
</html>
