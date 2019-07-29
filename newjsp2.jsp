<%@page import=" java.util.*"%>
<%-- 
    Document   : newjsp2
    Created on : Nov 25, 2018, 9:27:22 PM
    Author     : pawan sah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            function shuffle(a) {
    var j, x, i;
    for (i = a.length - 1; i > 0; i--) {
        j = Math.floor(Math.random() * (i + 1));
        x = a[i];
        a[i] = a[j];
        a[j] = x;
    }
    return a;
}
var myArray = ['1','2','3','4','5','6','7','8','9'];
shuffle(myArray);
        </script>
        
<%

Random rand = new Random();

int n1 = rand.nextInt(5);

String str ="ABCDE";
String sess=null;
int flag=0;
  
  
   %>
   
   <%
   Random random = new Random();
   for(int i=0;i<4;i++){
int index = random.nextInt(10);

 out.println(index); 

}
%>

    </body
    
</html>
