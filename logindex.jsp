  <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
	<head>
    <title>stddetail</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
      <link href="css/bootstrap2.css" rel="stylesheet">
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/myscript4.js" ></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
        <link href="css/design1.css" rel="stylesheet">
        <link href="css/design2.css" rel="stylesheet">
   <link href="css/design3.css" rel="stylesheet">
      <link href="css/heading.css" rel="stylesheet">
   <style>.avatar{
    radius:50%;
    width:40%;
}</style>
   <script>
       window.history.forward();
        function noBack() {
            window.history.forward();
            
        }
      
        </script>
   <style>
        .btn {
    background-color:#022c54;
    border: none;
    color: white;
    padding: 5px;
    font-size: 1rem;
    cursor: pointer;
    width:25%;
    margin-bottom:2px; 
}.btn:hover {
    background-color: RoyalBlue;
      .showprofile{
    padding:1rem;
color:white;
margin-bottom: .2rem;
   border-style:groove;
   background-color: #0080ff4d;
  border-radius: .5rem;
  border-color:navy;
  max-height:auto;
  max-width:auto;
  height: auto;
  width:auto;
  margin:0rem .5rem 1rem .5rem ;
  z-index: 150;
} 
   </style>
</head>
<%
String  name = (String)request.getSession().getAttribute("name"); 
String  id = (String)request.getSession().getAttribute("uid");  
String  pass = (String)request.getSession().getAttribute("pass"); 
 String fname = (String)request.getSession().getAttribute("fname");
String  gender = (String)request.getSession().getAttribute("gender"); 
 String address = (String)request.getSession().getAttribute("address");
String  rent = (String)request.getSession().getAttribute("rent");
String  contact = (String)request.getSession().getAttribute("contact");
String path = (String)request.getSession().getAttribute("path");
%>


            
    <body background="hostelimg/iimtbuild.jpg" >
 
    <div   class="recordhed">
        
            </div>
        <table>                  
            <tr> 
                <button class="btn"  data-toggle="modal" data-target="#myModal">
         <i class="fa fa-upload" aria-hidden="true"></i> upload images</button>

<form name="login" action="imguploader.jsp" onsubmit="return imgvalidate()" method="POST" enctype="multipart/form-data" >             
                 
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3 class="heads">Ulpoad gallery</h3></center>
          <button type="button" class="close" data-dismiss="modal"><p class="letter3">&times;</p></button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
               
             <div class="form-group"> <p class="yellow">
               
                 select here images :
                 <input type="file" class="form-control" id="simage" name="simage"  />
                 <span id="mess1"></span>                
            </p>
                </div>
                <center> <input type="submit" class="btn-dark" value="submit" /></center>
                   </div>
			
        </div>
       
  </div>
</div>
</div>
</form>  
  <button class="btn"  data-toggle="modal" data-target="#myModal4">
         <i class="fa fa-upload" aria-hidden="true"></i> Complain</button>       
<form  name="login" action="complain.jsp"  method="POST" >             
         
        
 <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3 class="heads">Your Complain</h3></center>
          <button type="button" class="close" data-dismiss="modal"><p class="letter3">&times;</p></button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
               
             <div class="form-group"> <p class="yellow">
               
                 Enter here:
                 <textarea name="textarea" rows="5" class="form-control"></textarea>
                 <span id="mess1"></span>      
                
            </p>
                </div>
                <center> <input type="submit" class="btn-dark" value="submit" /></center>
                   </div>
			
        </div>
       
  </div>
</div>
</div>
</form>  
     
   
        
           
<form  name="login" action="stdlogin.jsp" onsubmit="return stdvalidate()" method="POST" enctype="multipart/form-data" >

     <button class="btn btn-success" data-toggle="modal" data-target="#myModal3">
         <i class="fa fa-comments-o" aria-hidden="true"></i> chat</button> 
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3 class="heads">Hostler Login</h3></center>
          <button type="button" class="close" data-dismiss="modal"><p class="letter3">&times;</p></button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
               
             <div class="form-group"> <P class="letter3">your id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="hostid" name="hostid"  />
                 <span id="message"></span>
                   Password :
                 <input type="password" placeholder="........" class="form-control" id="hostpwd" name="hostpwd"  />
                 <span id="message2"></span>
                
                 </p>             
                </div>
                <center> <input type="submit" class="btn btn-success  " value="submit" /></center>
                   </div>
			
        </div>
       
  </div>
</div>
</div>
</form> 
        
        
        
        <button class="btn btn-success" onclick="location.href = 'index.jsp';">
            <i class="fa fa-sign-out" aria-hidden="true"></i>logout</button>
          
        </tr>
    </table>    
<div class="frame" name="display" width="100%" height="auto">
<div class="showprofile"><img src="studentphoto/<%=path%>" class="avtar" alt="" style="width:160px" >      
     
        <hr class="white">
        
                
                <p class="navy"> 
                                    Hostler id &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <%=id%><br>
                                    Password &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <%=id%><br>
                                   Name  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=name%><br>
                                   Father's name &nbsp&nbsp&nbsp&nbsp: <%=fname%><br>
                                   Gender &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp: <%=gender%><br>
                                   Address &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=address%><br>
                                   Rent amount &nbsp&nbsp&nbsp&nbsp&nbsp : <%=rent%><br>
                                   Contact no   &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp : <%=contact%><br></p>
                
            
       
</div>
	
</div>
	
	</body>
</html>
