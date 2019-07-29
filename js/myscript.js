 function regvalidate(){
        
         document.getElementById("mess2").style.color="yellow";
        document.getElementById("mess3").style.color="yellow";
         document.getElementById("mess4").style.color="yellow";
        document.getElementById("mess5").style.color="yellow";
         document.getElementById("mess6").style.color="yellow";
       document.getElementById("mess7").style.color="yellow";
           
         var name = document.getElementById("sname").value;
        var father = document.getElementById("fname").value;
        var address = document.getElementById("sadd").value;
        var gender = document.getElementById("gender").value;
        var rent = document.getElementById("srent").value
         
             var contact = document.getElementById("scontact").value;
          var x = rent /rent; 
          var y = contact/contact;
          
      if(name==null || name=="" ){
                  document.getElementById("sname").nextSibling.innerHTML=
            "Please Enter student name"+"<br>";
             document.getElementById("sname").focus();
	  return false;
    }
      if(father==null || father==""){
                  document.getElementById("fname").nextSibling.innerHTML=
            "Please Enter father name"+"<br>";
             document.getElementById("fname").focus();
	  return false;
    }
      if(address==null || address==""){
                  document.getElementById("sadd").nextSibling.innerHTML=
            "Please Enter student address"+"<br>";
             document.getElementById("sadd").focus();
	  return false;
    }
       if(gender=="-1"){
     document.getElementById("gender").nextSibling.innerHTML=
     "Please choose gender"+"<br>"; 
    document.getElementById("gender").focus();
  
    return false;
    }
      if(rent==null || rent=="" || x!=1 ){
                  document.getElementById("srent").nextSibling.innerHTML=
            "Please Enter rent"+"<br>";
             document.getElementById("srent").focus();
             document.getElementById("srent").value="";
	  return false;
    }
     if(contact==null || contact=="" || y!=1 || contact.length<10){
                  document.getElementById("scontact").nextSibling.innerHTML=
            "Please Enter contact"+"<br>";
             document.getElementById("scontact").focus();
             document.getElementById("scontact").value="";
	  return false;
    }
      
     
   return true;
  
    }
   

                        var imageIdex = 1;
			function changeImage(){
					var myImage =	document.getElementById("image");
                                      
			var ArrayImage =["image/four.jpg","image/two.JPG","image/three.jpg","image/one.jpg","image/five.jpg"];
				myImage.setAttribute("src",ArrayImage[imageIdex]);
                              
				imageIdex++;
				
				if(imageIdex >=ArrayImage.length){
					
					imageIdex = 0;
				}
			}
  