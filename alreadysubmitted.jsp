 

    
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


<%

 
String  name = (String)request.getSession().getAttribute("name"); 

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body >
<% 
String path="hostelregister.jsp";
String path2="index.jsp";
 String wardid2 = (String)request.getSession().getAttribute("wardid"); 
%>
        

    <div class="display4">
        
        <p class="reglabel"> <%=name%> Registered successfully</p><hr class="white"/>
     
        <div class="form-group">
          
               
            <a href="<%=path%>"> <input type="submit" class="btn btn-success  " value="New Registration"  /></a>
          <hr class="white">
          <a href="<%=path2%>"><input type="submit" class="btn btn-success  " value="logout" name="logout" />       </a >     
          <hr class="white">
          </div>                                                                                             
            
        
        </form>

    </div>


    </body>
</html>