<%session.invalidate(); %>
<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


    <link rel="stylesheet" href="css/icomoon.css">
        
    <title>iimt hostel</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
    <script src="themes/js-image-slider.js" type="text/javascript"></script> 
         <script src="js/myscript.js"></script> 
   
  <link href="css/heading.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/design1.css" rel="stylesheet">
     <link href="css/design3.css" rel="stylesheet">
    <link href="themes/slider.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap2.css" rel="stylesheet">
 <link href="css/design2.css" rel="stylesheet">
    <!-- Custom styles for this template -->
     <script src="js/myscript5.js"></script>      
   <script src="js/myscript2.js"></script>
   <script type="text/javascript"src="js/jquery.min.js"></script>
   <script>
        function loginvalidate(){
         document.getElementById("messa").style.color="yellow";
         document.getElementById("messb").style.color="yellow";
         
        var id = document.getElementById("hostdid").value;
         var pwd = document.getElementById("hostpwd").value;
        
        
         if(id==null || id==""  ){
            document.getElementById("hostid").nextSibling.innerHTML=
            "Please Enter hostler id"+"<br>";
             document.getElementById("hostid").focus();
             
	  return false;
    }  
      if(pwd==null || pwd==""){
                  document.getElementById("hostpwd").nextSibling.innerHTML=
            "Please Enter valid password"+"<br>";
             document.getElementById("hostpwd").focus();
	  return false;
    }
      
      
   return true;
  
 }
       
   </script>
  </head>

  <body background="hostelimg/iimtbuild.jpg">
<div class="body-position">
       <div   class="recordhed">
        <img src="logoall.gif" width="100%" height="auto" z-index="10">
            </div>
     
    <nav class="navbar navbar-expand-md navbar-dark bg-dark  "> 
        <a class="navbar-brand" href="#"><h4 class="heads">HOSTEL MANAGEMENT SYSTEM</h4> </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
                data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
                .0 aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                   <li class="nav-item">
                    <a class="nav-link" href="record.jsp">Record</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal">Registeration</a>
                </li>
     
<form  name="login" action="registeration.jsp"  method="POST" onsubmit="return wardvalidate">

    
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3 class="heads">Warden Login</h3></center>
          <button type="button" class="close" data-dismiss="modal"><p class="letter3">&times;</p></button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
               
             <div class="form-group"> <P class="letter3">Warden id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="wardid" name="id"  />
                 <span id="mess1"></span>
                   Password :
          
                 <input type="password" placeholder="........" class="form-control" id="wardpwd" name="pass"  />
                 <span id="mess2"></span>
                 </p>      
                              
             </div><br>
                <center> <input type="submit" class="btn btn-success  " value="submit"  /></center>
                   </div>
			
        </div>
       
  </div>
</div>
</div>
    
 

</form>
                
           <li class="nav-item">
                    <a class="nav-link" href="gallery.jsp">View  Gallery</a> 
                    
                </li>
               
                
                 <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal2">Hostler Login</a>
                </li>
                

 <form  name="login3" action="loginCheck.jsp"  method="POST"  >


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3 class="heads"> Login Please</h3></center>
                        <button type="button" class="close" data-dismiss="modal"><p class="letter3">&times;</p></button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
              
             <div class="form-group"><p class="letter3">Hostler Id :
                 <input type="text" placeholder="ex: pawan432" class="form-control" id="hostid" name="hostid"  />
                 <span id="messa"></span>
                  Password :
                 <input type="password" placeholder="........" class="form-control" id="hostpwd" name="hostpwd"  />
                 <span id="messb"></span>
                 </p>
                 <br>                  <hr class="white">
              
                </div>
                <center> <input type="submit" class="btn btn-success  " value="submit" id="register" /></center>
               
          </div>
			
        </div>
       
  </div>
</div>
</div>
 
 

</form>               
              <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal5">Complains</a>
                </li>
     
<form  name="login" action="complaincheck.jsp"  method="POST" enctype="multipart/form-data" onsubmit="return wardvalidate()" >

    
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3 class="heads">Warden Login</h3></center>
          <button type="button" class="close" data-dismiss="modal"><p class="letter3">&times;</p></button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
               
             <div class="form-group"> <P class="letter3">Warden id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="wardid" name="wardid"  /><span id="mess1"></span>
                   Password :
                 <input type="password" placeholder="........" class="form-control" id="wardpwd" name="wardpwd"  /><span id="mess2"></span>
                
                 </p>             
                </div>
                <center> <input type="submit" class="btn btn-success  " value="submit"  /></center>
                   </div>
			
        </div>
       
  </div>
</div>
</div>
    
 

</form>  
                
                   <li class="nav-item">
                    <a class="nav-link" href="#">Connect with us</a>
                </li>

            </ul>
            <font size="5px" >
            
                    <a href="#" class="icone"><i class="icon-twitter"></i></a>
			<a href="#" class="icone"><i class="icon-facebook"></i></a>
			<a href="#" class="icone"><i class="icon-instagram"></i></a>
			<a href="#" class="icone"><i class="icon-dribbble"></i></a>
			<a href="#" class="icone"><i class="icon-youtube"></i></a>
         
                </font>
        </div>
    </nav> 
      
      <div class="display2">
          <img id="image"  src="hostelimg/one.jpg" class="marqmain" /><span id="iSpan" ></span>
      </div>
      <div class="display2">
            <h3 class="heads">Facilities
            </h3>
           
           <ul type="round" class="a"> 
                <li>24 Hours Electricity</li>
                <li>Pure Drinking Water</li>
                <li>Attached Bathrooms</li>
                <li>Cooler Fan</li>
                <li>Hygienic Rooms</li>
                <li>Free Wi-Fi</li>
               
            </ul>
      </div> 
  
    
        <div class="display2">  
            <h3 class="heads">Food and snacks
            </h3>
            <marquee behavior="alternate" >
                 <img id="fimage"  src="image/burger.jpg" class="img-thumbnail" />
                 <img id="fimage"  src="image/rice.jpg" class="img-thumbnail" />
                 <img id="fimage"  src="image/momos.jpg" class="img-thumbnail" />
                 <img id="fimage"  src="image/chowmein.jpg" class="img-thumbnail" />
            </marquee>
            
                      
             <ul type="round" class="a"> 
             
                <li>Rajma Chawal</li>
                <li>Chicken & Paneer</li>
                <li>Egg Curry</li>   
             
                <li>Green Vegetables</li>
                <li>Chowmein, Momos,Pettiz</li>
                <li>Soyabeen Aloo</li>
                 <li>Kadhi Chawal</li>
                <li>Samosa & Namkeen</li>
                 
            </ul>
         
        </div>
    
    
          <div class="display2">
              <p class="icone">&copy;  All Rights Reserved. <br>Designed by: pawan sah </p>
              <p class="icone"> Follow me on:</p>
               <font size="5px" >
            
                    <a href="#" class="icone"><i class="icon-twitter"></i></a>
			<a href="#" class="icone"><i class="icon-facebook"></i></a>
			<a href="#" class="icone"><i class="icon-instagram"></i></a>
			<a href="#" class="icone"><i class="icon-youtube"></i></a>
                        
                        
                </font>
           </div>
        
         

   
  </div> 
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
     
  </body>
</html>