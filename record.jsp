  <%@ page import="java.io.*,java.sql.*,java.util.*" %>


    
<html>
<head>
    <title>recheck</title>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
    
     
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <link rel="shortcut icon" href="favicon.ico">
    <link href="css/design1.css" rel="stylesheet">
 <link href="css/icomoon.css" rel="stylesheet">
    <link href="themes/slider.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap2.css" rel="stylesheet">
 <link href="css/design2.css" rel="stylesheet">
  <link href="css/heading.css" rel="stylesheet">
   <script type="text/javascript" lang="english">
            function stdvalidate(){
         document.getElementById("message").style.color="yellow";
         document.getElementById("message2").style.color="yellow";
         
        var hid = document.getElementById("hostid").value;
         var hpwd = document.getElementById("hostpwd").value;
        
        
         if(hid==null || hid==""  ){
            document.getElementById("hostid").nextSibling.innerHTML=
            "Please Enter id"+"<br>";
             document.getElementById("hostid").focus();
             
	  return false;
    }  
      if(hpwd==null || hpwd==""){
                  document.getElementById("hostpwd").nextSibling.innerHTML=
            "Please Enter password"+"<br>";
             document.getElementById("hostpwd").focus();
	  return false;
    }
      
      
   return true;
  
 }
</script>
   <style>

    .one{color:maroon;font-weight: 500;font-size: 1.2rem;text-align: right;text-shadow:5px 5px 5px #ffc107ab; padding:0; margin:0rem; }
    .two{color:maroon;font-weight: 500;font-size: 1.2rem;text-align: left;text-shadow:5px 5px 5px #ffc107ab;margin: 0rem;padding:0px;}
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
}.btn:hover {
    background-color: navy;
}
    .imground{
  padding: 0rem;
  background-color: #fff;
  border: 1px solid #dee2e6;
  border-radius: 50%;
  cursor: pointer;
 
 box-shadow:5px 5px 10px black;
  
}
   </style>

</head>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<body background="hostelimg/iimtbuild.jpg" >
 <div class="body-position">
    <div   class="recordhed">
        <img src="logoall.gif" width="100%">
            </div>
    <button class="btn" onclick="location.href = 'index.jsp';"><i class="fa fa-home"></i> HOME </button>
    <br>    
<%
Connection conn = null;
Statement stm = null;
ResultSet rs = null;
String name =null;
String imgpath =null;
String address =null;
String fname =null;
String rent =null;
%>
<%
String connectionURL = "jdbc:mysql://localhost:3306/student";

try{
    String query ="select * from registration";
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL, "root", "root");
stm = conn.createStatement();
rs=stm.executeQuery(query);

while(rs.next()){
name=rs.getString("name");
address=rs.getString("address");
fname=rs.getString("fname");
rent=rs.getString("rent");
imgpath=rs.getString("photo");

%> 

<div class="row">
     <%
response.setIntHeader("Refresh", 120);
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
   <div  style="background:#87ceeb6e;box-shadow: 5px 5px 5px black;" class="col-md-2" >
       
    <table border="0" >
        
    
        <tr>
            <td rowspan="5px">
               
       <div style="border-radius:5px"class="col-md-4" >
          <img src="studentphoto/<%=imgpath%>" class="imground" alt="<%=imgpath%>" style="width:90px; height:90px;"  >
        </div> 
 
                
            </td>
    <td ><p class="one" >Name :</p></td><td >
        <p class="two">&nbsp;&nbsp;<%=name%></p></td>   </tr>

        <tr>  <td ><p class="one">Father's name :</p></td> 
            <td><p class="two">&nbsp;&nbsp;<%=fname%></p></td> </tr>
        
        <tr><td><p class="one" >Address :</p></td>
            <td><p class="two">&nbsp;&nbsp;<%=address%></p></td>  </tr>
        
        
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
 </div>
    </body>
</html>
