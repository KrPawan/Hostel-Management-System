<%-- 
    Document   : home
    Created on : Feb 26, 2018, 11:00:25 PM
    Author     : Pawan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div.division1{height:400px;top:5px; width:1150px;left:0px;position:absolute;}
            div.division2{height:390px;top:185px; width:1150px;left:0px;position:absolute;}
            div.division3{height:300px;top:90px; width:200px;left:890px;position:absolute;border:2px; }
            p.detail{font-family:Times New Roman;font-size:2.5em;color:maroon;position:absolute;left:0px;font-weight:bold;   }
            ul.facility{position:absolute;left:15px;top:70px;   }
            ul.food{position:absolute;left:445px;top:70px;   }
            ul.cook{position:absolute;left:800px;top:70px;   }
            iframe.ione{position:absolute;top:-10px;left:2px; }
        </style>
    </head>
    <body>
     <div class="division1" >
        
       <iframe class="ione" height="250px" width="1150px" src="slider.jsp" scrolling="no" frameborder="no" ></iframe>
           
             <div class="division2">
            <P class="detail">&nbsp &nbsp <b><u>F a c i l i t i e s </u>&nbsp
                     &nbsp &nbsp&nbsp&nbsp &nbsp &nbsp &nbsp&nbsp&nbsp  <u>F o o d &nbsp&nbsp  D e t a i l s</u>
                    &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  <u>C o o k</u></b>
            </P>
           
           <ul type="round" class="facility"> <font size="6pt" color="navy" face="monotype corsiva">
                <li>24 Hours Electricity</li>
                <li>Pure Drinking Water</li>
                <li>Attached Bathrooms</li>
                <li>Cooler Fan</li>
                <li>Hygienic Rooms</li>
                <li>Free Wi-Fi</li>
                </font>   
            </ul>
                      
             <ul type="round" class="food"> <font size="6pt" color="navy" face="monotype corsiva">
                <li>Rajma Chawal</li>
                <li>Chicken & Paneer</li>
                <li>Egg Curry</li>
                <li>Green Vegetables</li>
                <li>Chowmein, Momos,Pettiz</li>
                <li>Soyabeen Aloo</li>
                 <li>Kadhi Chawal</li>
                <li>Samosa & Namkeen</li>
                </font>   
            </ul>
            <div class="division3">
                <iframe height="250px" width="250px" src="imageslider.jsp" scrolling="no" frameborder="no" ></iframe>
            </div>
        </div>
        </div>
              
    </body>
</html>
