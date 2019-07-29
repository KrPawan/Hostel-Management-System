<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link rel="stylesheet" href="css/icomoon.css">
        
    <title>iimt hostel</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->
     <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/design1.css" rel="stylesheet">
    <link href="themes/slider.css" rel="stylesheet" type="text/css" />
    <script src="themes/js-image-slider.js" type="text/javascript"></script> 
     <script>window.jQuery || document.write('<script src="js/jquery-slim.min.js"><\/script>')</script>
    
    <script src="js/bootstrap.js"></script>
    <script src="js/myscript.js"></script> 
    <script src="js/myscript2.js"></script> 
</head>
<body class="body-property">
     <div class="modal-header">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark ">
              <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
                .0 aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button><a class="navbar-brand" href="#">INDRAPRASTHA INSTITUTE OF<br> MANAGEMET & TECHNOLOGY.</a>
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
            
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal">Registeration</a>
                </li>
         
<!-- Button trigger modal 
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Register
</button>  -->

<form  name="login" action="registeration.jsp" onsubmit="return wardvalidate()" method="POST" enctype="multipart/form-data" >


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3>Warden Login</h3></center>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
              
             <div class="form-group">Warden id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="wardid" name="wardid"  /><span id="mess1"></span>
                   Password :
                 <input type="password" placeholder="........" class="form-control" id="wardpwd" name="wardpwd"  /><span id="mess2"></span>
                
                                 
                </div>
                <center> <input type="submit" class="btn btn-success  " value="submit" /></center>
               
          </div>
			
        </div>
       
  </div>
</div>
</div>

 

</form>

           <li class="nav-item">
                    <a class="nav-link" href="gallery.jsp"> View Gallery</a> 
                    
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="modal" data-target="#myModal2"> Upload Gallery</a> 
                    
                </li>
 <form  name="login2" action="test.jsp"  method="POST"  >


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3> Login Please</h3></center>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
              
             <div class="form-group">Hostler Id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="hostid" name="hostid"  />
                 <span id="mess1"></span>
                 
                                 
                </div>
                <center> <input type="submit" class="btn btn-success  " value="submit" /></center>
               
          </div>
			
        </div>
       
  </div>
</div>
</div>
 
 

</form>               
   
                 <li class="nav-item">
                    <a class="nav-link" href="table.html">Complain</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link" href="table.html">Login</a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link" href="table.html">Sign Up</a>
                </li>
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
    </div>   
    <div class="display2" >
          <marquee behavior="alternate" scrollamount="">
                 <img id="fimage"  src="hostelimg/one.jpg" class="img-thumbnail" />
                 
                 <img id="fimage"  src="hostelimg/three.jpg" class="img-thumbnail" />
                 <img id="fimage"  src="hostelimg/four.jpg" class="img-thumbnail" />
                 <img id="fimage"  src="hostelimg/five.jpg" class="img-thumbnail" />
                 <img id="fimage"  src="hostelimg/six.jpg" class="img-thumbnail" />
                 
            </marquee>
    </div>
    
      <div class="display2">
            <P class="letter3">Facilities
            </P>
           
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
            <P class="letter3">Food & Snacks
            </P>
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
               <font size="5px" >
            
                    <a href="#" class="icone"><i class="icon-twitter"></i></a>
			<a href="#" class="icone"><i class="icon-facebook"></i></a>
			<a href="#" class="icone"><i class="icon-instagram"></i></a>
			<a href="#" class="icone"><i class="icon-youtube"></i></a>
                        
                </font>
           </div>
        
        <br>

   
	
	</body>
</html>
