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
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
        <link href="css/design1.css" rel="stylesheet">
        <link href="css/design2.css" rel="stylesheet">
   <link href="css/design3.css" rel="stylesheet">
   <link href="css/heading.css" rel="stylesheet">
   <style>
       .btn {
    background-color: navy;
    border: none;
    color: white;
    padding: 5px;
    font-size: 1.5rem;
    cursor: pointer;
    width:25%;
    border-radius: 5;
    font-family:sans-serif;
    margin:3px; 
       </style>
</head>
    
    
<body background="hostelimg/iimtbuild.jpg" >
 
    <div   class="recordhed">
        <img src="logoall.gif" width="100%">
            </div>
    <button class="btn" onclick="location.href = 'index.jsp';"><i class="fa fa-home"></i>HOME</button>
    <br>    
            
     
 
<%
Connection conn = null;
Statement stm = null;
ResultSet rs = null;
String impath =null;
%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/student";

try{
    String query ="select * from hostelgallery";
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root", "root");
stm = conn.createStatement();
rs=stm.executeQuery(query);
%><br><div class="container"><div class="row"><%
while(rs.next()){
impath=rs.getString("image");

%>

    	
        		<div class="col-md-4">
                            <a href="gallimage/<%=impath%>" class="image-popup fh5co-board-img" title="">
                          
                             <img src="gallimage/<%=impath%>" class="img-thumbnail" alt="">
                             
                                 </a>
                        </div>
        		
        	
                
            
        	
        	      

<%
}
%></div></div><%
               }
catch(Exception e){
    e.printStackTrace();
}

%>
		

    
          


<br>
                  
       
	
	

	
	</body>
</html>
