  <%-- +
    Document   : index
    Created on : Jan 27, 2018, 1:42:54 PM
    Author     : silent_KILLER
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
div.division1{height:70px; width:1235px;margin-left:40px;margin-top:5px;position:absolute;  }
img.logo{left:80px;position:absolute;top:15px; }
p.find{position:absolute;left:250px;color:navy;font-size:35pt;top:-32px;  }
hr.hr2{width:1230;height:3px;position:relative;top:60px; }
div.social{position:absolute;left:1100px;top:30px;  }
p.title{position:absolute;left:640px;color:maroon;font-size:15pt;top:15px;  }
iframe.iiframe{position:absolute;height:57em;top:138px;width:1230px;left:45px;border-radius:15px; }
ul {
	
    list-style-type: none;
    margin: 0;
    padding: 0px;
    overflow: hidden;
	word-spacing:1px;
	letter-spacing:1px;
    background-color: rgba(77,88,99,.8);
}

li {
    float:left;
	font-size:15pt;
}

li a, .dropbtn {
    display:inline-block;
    color:white;
    text-align:center;
    padding:13px 21px;
    text-decoration: none;
	
}

li a:hover, .dropdown:hover .dropbtn {
    background-color:black;
	
}

li.dropdown {
    display:inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:rgba(77,88,99,.8);
    min-width:280px; 
}

.dropdown-content a {
    color:white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color:rgb(77,88,99);}

.dropdown:hover .dropdown-content {
    display: block;
}
#menu{
	border-radius:5px;
position:absolute;
left:48px;
top:85px;
width:1235px;
}

#gallery{
	frameborder:1px;
	scrolling:no;
	left:73px;
	position:absolute;
	top:100px;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color:rgba(77,88,99,.8);
    min-width: 200px; 
   box-shadow: 0px 8px 10px 5px rgba(0,0,0,.5);
   box-radius:0px 0px 2px 2px;
    z-index:10;
}


        </style>
</head>

<body>
 <div class="division1">
<img class="logo"src="image\logo.png" width="100px" height="40px">
    <p class="find" ><font face="algerian" weight="bold">E&nbsp&nbsp- &nbsp&nbspB&nbspR&nbspO&nbspK&nbspE&nbspR</font></p>
    <p class="title">A single place to bargain Materials and Manpowers  .........</p>
   <div class="social"> <a href="https://www.facebook.com/search/top/?q=pawan%20kumar%20sah" target="hello"><img src="image\fb.png"  height=30px width=30px hspace=3></a>
<a href="https://twitter.com/awankumarsah" target="hello"><img src="image\twt.png"  height=30px width=30px hspace=3></a>
<a href="https://www.instagram.com/52pawan/" target="hello"><img src="image\inst.png" width=30px height=30px hspace=3></a>
    </div>  
    <hr class="hr2" color="brown" >   
</div>
    <div id=menu>
<ul>
  <li class="dropdown"><a href="home.jsp"  target="display"> Home</a></li>
<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Air ticket</a>
<div class="dropdown-content">
      <a href="http://www.indianrail.gov.in/enquiry/TrainBetweenImportantStations.html" target="hello">tribhuwan</a>
      <a href="https://www.cleartrip.com/tourism/train/routes/" target="hello">jet</a>
      <a href="https://www.yatra.com/trains" target="hello">Yatra</a>
    </div></li>
<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Bus Tickets</a>
<div class="dropdown-content">
      <a href="http://www.abhibus.com/" target="hello">Abhibus</a>
      <a href="https://www.mobikwik.com/bus-tickets"target="hello">Mobikwik</a>
      <a href="https://www.redbus.in/"target="hello">Red bus</a>
    </div></li>
	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn"> Vehicle booking</a>
    <div class="dropdown-content">
      <a href="https://www.savaari.com/delhi/car-rental" target="hello">Savaari</a>
      <a href="https://www.expedia.co.in/Compare-Cheap-Car-Hire-In-Delhi.d180000.Car-Hire-Guide" target="hello">Expedia</a>
      <a href="http://www.delhitourism.gov.in/delhitourism/transport/car_rental.jsp" target="hello">Delhi Tourism</a>
	 
	    </div></li>

	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn"> Hotel Booking</a>
    <div class="dropdown-content">
      <a href="https://www.cleartrip.com/hotels" target="hello">Clear Trip</a>
      <a href="https://www.oyorooms.com/" target="hello">Oyo rooms</a>
  	  <a href="  https://www.expedia.co.in/Hotels" target="hello">Xpedia</a>
	  
    </div></li>
    
	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Manpower</a>
    <div class="dropdown-content">
      <a href="https://www.cleartrip.com/hotels" target="hello">Clear Trip</a>
      <a href="https://www.oyorooms.com/" target="hello">Oyo rooms</a>
  	  <a href="  https://www.expedia.co.in/Hotels" target="hello">Xpedia</a>
	  
    </div></li>
    
	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Materials</a>
    <div class="dropdown-content">
      <a href="https://www.cleartrip.com/hotels" target="hello">Clear Trip</a>
      <a href="https://www.oyorooms.com/" target="hello">Oyo rooms</a>
  	  <a href="  https://www.expedia.co.in/Hotels" target="hello">Xpedia</a>
	  
    </div></li>
    
	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Auditing</a>
    <div class="dropdown-content">
      <a href="https://www.cleartrip.com/hotels" target="hello">Clear Trip</a>
      <a href="https://www.oyorooms.com/" target="hello">Oyo rooms</a>
  	  <a href="  https://www.expedia.co.in/Hotels" target="hello">Xpedia</a>
	  
    </div></li>
    
	<li class="dropdown"><a href="javascript:void(0)" class="dropbtn">others</a>
    <div class="dropdown-content">
      <a href="https://www.cleartrip.com/hotels" target="hello">Clear Trip</a>
      <a href="https://www.oyorooms.com/" target="hello">Oyo rooms</a>
  	  <a href="  https://www.expedia.co.in/Hotels" target="hello">Xpedia</a>
	  
    </div></li>

</ul>
</div>
    <iframe height="500px" width="1200px" bgcolor="aqua"  class="iiframe" name="display"></iframe>
 </body>
</html>