  <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
    <title>gallery</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
      <link href="css/bootstrap2.css" rel="stylesheet">
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/myscript4.js" ></script>
        <link href="css/design1.css" rel="stylesheet">
        <link href="css/design2.css" rel="stylesheet">
   <link href="css/design3.css" rel="stylesheet">
</head>
<body class="body-property"> 
            
    <div class="heading"><img  class="logo" src="hostelimg/iimt.png" height="70px" width="80px">

          <h4>INDRAPRASTHA INSTITUTE OF<BR> MANAGEMENT & TECHNOLOGY.</h4><h5>Umahi , Saharanpur (247001)</h5>  
          
      
      </div> 
  
    
        
<form  name="regform" action="gallupload.jsp" onsubmit="return photovalidate()" method="POST"  enctype="multipart/form-data">
    <div class="display4">
        
        <p class="reglabel"> logged in success fully</p><hr class="white">
        <div class="form-group">
                
              
                <hr class="white">
                <div class="form-group">
                <p class="aqua">
               
                 upload  photo :
                 <input type="file" class="form-control" id="simage" name="simage"  />
                 <span id="mess1"></span>                
            </p>
              <hr class="white">  
              <hr class="white">
               <input type="submit" class="btn btn-success  " value="submit" />
                </div>
            
        </div>

    </div>
</form>



<br>
                  
       
	
	

	
	</body>
</html>
