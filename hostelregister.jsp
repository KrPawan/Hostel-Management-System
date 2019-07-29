<%-- 
    Document   : modal
    Created on : Oct 19, 2018, 4:07:02 PM
    Author     : pawan sah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>register</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js" ></script>
     <link rel="stylesheet" href="css/icomoon.css">
    <script src="js/myscript.js" ></script>
    
     <link rel="shortcut icon" href="favicon.ico">
             <link href="css/heading.css" rel="stylesheet">
        <link href="css/design1.css" rel="stylesheet">
            <link href="css/design2.css" rel="stylesheet">
               <link href="css/design3.css" rel="stylesheet">
                  <script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
        function validateEmail(emailField){
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(emailField.value) == false) 
        {
           document.getElementById("mess8").style.color="yellow"
           document.getElementById("emailid").nextSibling.innerHTML=
            "enter correct id "+"<br>";
             document.getElementById("emailid").focus();
            return false;
        }

        return true;

}
    </script>
</head>

<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="" background="hostelimg/iimtbuild.jpg">
    
   <div   class="recordhed">
        <img src="logoall.gif" width="100%">
            </div>
    <%String wardid = (String)request.getSession().getAttribute("wardid"); %>
     <%String wardid2= (String)request.getSession().getAttribute("wardid2");
if(wardid==null){
    wardid=wardid2;
}     
%>
<div class="heading2"><h5> 
        
</div>
<form  name="regform" action="recheckform.jsp" onsubmit="return regvalidate()" method="POST"  >
    <div class="regdisplay">
        <p class="yellow"> <%=wardid%>  :Logged in<p><p class="logout">logout  
            <a href="index.jsp" class="icone"><i class="icon-log-out"></i></a></a></p>
        <p class="reglabel">Hostler Registration Form</p>
     
        <div class="form-group"><hr class="white"/>
         <p class="letter3">   
  
       
                   First Name :
                 <input type="text" placeholder="ex: pawan" class="form-control" id="sname" name="sname"  /><span id="mess2"></span>
                   Middle Name :
                 <input type="text" placeholder="ex: kumar" class="form-control" id="smname" name="smname"  />
                 <span id="mess2a"></span>
                   Last Name :
                 <input type="text" placeholder="ex: sah" class="form-control" id="slname" name="slname"  />
                 <span id="mess2b"></span>
                 
                 Father's Name :
                 <input type="text" placeholder="ex: xyz" class="form-control" id="fname" name="sfname"  /><span id="mess3"></span>
                 Address :
                 <input type="text" placeholder="ex: sharanpur " class="form-control" id="sadd" name="saddress"  /><span id="mess4"></span>
                 Gender:
                 <select id="gender" class="form-control" name="sgender" >
                <option  value="-1" selected>Choose here</option>
                <option  value="Male" >Male</option>
                <option value="Female">Female</option>
                <option value="other">Other</option>
	</select><span id="mess5"></span>
               
                 Room rent:
                 <input type="text" placeholder="ex: 55,000" class="form-control" id="srent" name="srent"  /><span id="mess6"></span>
                Contact no:
                 <input type="text" placeholder="ex:9675457330" class="form-control" id="scontact" name="scontact"  /><span id="mess7"></span>
                
                                 
            </p><hr color="white">
           
             <input type="reset" class="btn btn-success " value="reset" class="" />
               <input type="submit" class="btn btn-success  " value="submit" class="" />
               
            
        </div>

    </div>
</form>
        <br>
    </body>
</html>
