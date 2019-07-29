  <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>gallery</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
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


  <!-- Facebook and Twitter integration -->
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Salvattore -->
	
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Modernizr JS -->
	
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body class="body-property"> 
            
          
<div class="gallerydisplay">
    
            
    <p class="letter3" href="#">INDRAPRASTHA INSTITUTE OF<br> MANAGEMET & TECHNOLOGY.</p><hr>
    <p class="gallhead" href="#">HOSTEL GALLERY | <a href="index.jsp">Home</a></p>
       
                  
        </div>

<%
Connection conn = null;
Statement stm = null;
ResultSet rs = null;
String impath =null;
%>
<%
String connectionURL = "jdbc:mysql://localhost:3307/student";

try{
    String query ="select * from imgpath";
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root", "root");
stm = conn.createStatement();
rs=stm.executeQuery(query);
while(rs.next()){
impath=rs.getString("path");

%>

 <div id="fh5co-board" data-columns>

        	<div class="item">
        		<div class="animate-box">
	        		<a href="image/<%=impath%>" class="image-popup fh5co-board-img" title="">
                                    <img src="image/<%=impath%>" alt="Free "></a>
        		</div>
        		<div class="fh5co-desc"></div>
        	</div>
        	
        	
        </div>

<%
}

               }
catch(Exception e){
    e.printStackTrace();
}

%>
		

	
	

	
	</body>
</html>
