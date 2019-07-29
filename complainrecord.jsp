  <%@ page import="java.io.*,java.sql.*,java.util.*" %>


    
<html>
<head>
    <title>recheck</title>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
      <link href="css/bootstrap2.css" rel="stylesheet">
    <script src="js/bootstrap.min.js" ></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
        <link href="css/design1.css" rel="stylesheet">
        <link href="css/design2.css" rel="stylesheet">
   <link rel="stylesheet" href="css/font-awesome.min.css">
        <link href="css/design3.css" rel="stylesheet">
   <style>
    
    .one{color:white;font-weight: 500;font-size: 1.5rem;text-align: right;text-shadow:5px 5px 5px black; }
    .two{color:white;font-weight: 500;font-size: 1.5rem;text-align: left;text-shadow:5px 5px 5px black;margin-left: 1rem;}

   </style>

</head>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body >

    <div   class="heading"><img  class="logo" src="hostelimg/iimt.png" height="70px" width="80px">

           <h4>INDRAPRASTHA INSTITUTE OF<BR> MANAGEMENT & TECHNOLOGY.</h4><h5>Umahi , Saharanpur (247001)</h5>  
         <button class="btn" onclick="location.href = 'index.jsp';"><i class="fa fa-home"></i> Home</button>
    </div>
    
    <br>    
<%
Connection conn = null;
Statement stm = null;
ResultSet rs = null;
String id =null;
String complain = null;
String path = (String)request.getSession().getAttribute("path");
%>
<%
String connectionURL = "jdbc:mysql://localhost:3307/student";

try{
    String query ="select * from complainrecord";
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root", "root");
stm = conn.createStatement();
rs=stm.executeQuery(query);

while(rs.next()){
id =rs.getString("id");
complain =rs.getString("complains");


%> 

<div class="row">
     <%
response.setIntHeader("Refresh", 60);
Random rand = new Random();

int n1 = rand.nextInt(1) + 6;

String str ="00112233445566ABCDEF";
String sess=null;
int flag=0;
  
   StringBuilder sb2 = new StringBuilder( str.length()) ;

     for( int i = 0; i <n1; i++ ) {
      sb2.append( str.charAt( rand.nextInt(str.length()) ) );
}sess=sb2.toString();

   %> 
   <br>
   <div style="background:<%="#"+sess%>" class="col-md-2" >
       
    <table border="0" >
        
    
        <tr>
            <td rowspan="5" class="round">
    <div style="border-radius:5px"class="col-md-4" >
          
          <img src="studentphoto/<%=path%>" class="imground" alt="<%=path%>" style="width:160px" >
        

   
    </div> 
  </div></td> </tr> 

        <tr>  <td><p class="one"></p></td> <td><p class="two"><%=complain%></p></td> </tr>
        
    </table>


   
   
   </div>
<%
   sb2.delete(0,6);
;   %>
       
    </div>

<%
}

               }
catch(Exception e){
    e.printStackTrace();
}

%>

<br>
</body>
</html>
