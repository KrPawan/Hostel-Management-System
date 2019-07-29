<%@page import=" java.util.*"%>
<html>
<head>
    <title>changing colors</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery.min.js"></script>
      <link href="css/bootstrap2.css" rel="stylesheet">
    <script src="js/bootstrap.min.js" ></script>
       
        <link href="css/design1.css" rel="stylesheet">
        <link href="css/design2.css" rel="stylesheet">
   <link href="css/design3.css" rel="stylesheet"> 
   <style>
div{height:150px;}
</style>
</head>
 <body bgcolor="" >
     <div class="row">
<%

Random rand = new Random();

int n1 = rand.nextInt(1) + 6;

String str ="0123456ABCDEF";
String sess=null;
int flag=0;
  
   StringBuilder sb2 = new StringBuilder( str.length()) ;
for(int j=0;j<256;j++){
     for( int i = 0; i <n1; i++ ) {
      sb2.append( str.charAt( rand.nextInt(str.length()) ) );
}sess=sb2.toString();

   %> <br>
   
   <div style="background:<%="#"+sess%>" class="col-md-2" ><p style="font-size: 3rem;padding: 2rem;text-align: center;">#<%=sess%></p></div>
<%
   sb2.delete(0,6);
};   %>
     </div>
</body>
</html>