<%-- 
    Document   : modal
    Created on : Oct 19, 2018, 4:07:02 PM
    Author     : pawan sah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>warden login
    </title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script src="js/myscript.js" ></script>
      <script src="js/myscript2.js" ></script>
        <link href="css/design1.css" rel="stylesheet">
            <link href="css/design2.css" rel="stylesheet">
            <script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("POST", "registration.jsp", true);
  xhttp.send();
}
</script>
</head>
<body background="image/iimtbuild.jpg">
   <div id="demo">   
    
        
<form  name="regform" onsubmit="return wardvalidate()"   >
  
        
        <p class="reglabel">Warden Login</p>
        <div class="form-group">
         <hr color="white"><p class="letter3">
                
               
             Warden id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="wardid" name="wardid"  /><span id="mess1"></span>
                   Password :
                 <input type="password" placeholder="........" class="form-control" id="wardpwd" name="wardpwd"  /><span id="mess2"></span>
                
            </p><hr color="white">
           
             
            <input type="submit" class="btn btn-success " value="submit" onclick="loadDoc()" />
               
            
        </div>

    
</form>
   </div>
    </body>
</html>
