<%-- 
    Document   : modal
    Created on : Oct 19, 2018, 4:07:02 PM
    Author     : pawan sah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>A simple Bootstrap modal example</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
</head>
<body>
<div class="container">


<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Register
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <center><h3>Description</h3></center>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
                     </div> 
            <div class="modal-body">
            <div class="fullpage">
              
             <div class="form-group">Hostel id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="hid" name="hid"  /><span id="mess1"></span>
                   Student Name :
                 <input type="text" placeholder="ex: abc" class="form-control" id="sname" name="sname"  /><span id="mess2"></span>
                 Father's Name :
                 <input type="text" placeholder="ex: xyz" class="form-control" id="fname" name="fname"  /><span id="mess3"></span>
                 Address :
                 <input type="text" placeholder="ex: sharanpur " class="form-control" id="sadd" name="sadd"  /><span id="mess4"></span>
                 Gender:
                 <select id="gender" class="form-control" >
                <option  value="-1" selected>Choose here</option>
                <option  value="Male" >Male</option>
                <option value="Female">Female</option>
                <option value="other">Other</option>
	</select><span id="mess5"></span>
                 Room rent:
                 <input type="text" placeholder="ex: 55,000" class="form-control" id="srent" name="rent"  /><span id="mess6"></span>
                 photo :
                 <input type="file" class="form-control" id="simage" name="simage"  /><span id="mess7"></span>
                 
                                 
                </div>
               
          </div>
			
        </div>
            <div class="modal-footer">
             <input type="reset" class="btn btn-success " value="reset" />
               <input type="submit" class="btn btn-success  " value="submit" />
         
      
        
    </div>
  </div>
</div>
</div>
</div>
 


    </body>
</html>
