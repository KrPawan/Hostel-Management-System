<%-- 
    Document   : newRegister
    Created on : Aug 13, 2018, 10:51:53 AM
    Author     : pawan sah
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>New student Register</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
 
        <h1>Test me</h1>
        <script type="text/javascript">
            function submitPost(btn) {
                var $result = false;
                $result = confirm('Are you sure???');
                if ($result === true) {
                    alert("Submit????? " + $result);
                    return true;
                } else {
                    alert("Do not submit " + $result);
                    return false;
                }
            }
        </script>
        <%
           String token = request.getParameter("finalise");
           out.println("Set is " + token);    
        %>
        <form method="get" name="myform" action="index.jsp">   
            Hostel id :
                 <input type="text" placeholder="ex: iimt432" class="form-control" id="hid" name="hid"  /><span id="mess1"></span>
                   Student Name :
                 <input type="text" placeholder="ex: abc" class="form-control" id="sname" name="sname"  /><span id="mess2"></span>
                 
            <button type="submit" id="SaveIt"  onclick="return submitPost(this);" name="finalise" value="setme">TEST ME</button>
        </form>
    
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
			
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>

</body>
</html>
