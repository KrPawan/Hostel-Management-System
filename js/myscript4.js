 function gallvalidate(){
         document.getElementById("messa").style.color="yellow";
         document.getElementById("messb").style.color="yellow";
         
        var id = document.getElementById("hostid").value;
         var img = document.getElementById("gallimage").value;
        
        
         if(id==null || id=="" ){
            document.getElementById("hostid").nextSibling.innerHTML=
            "Please Enter your id"+"<br>";
             document.getElementById("hostid").focus();
             
	  return false;
    }  
      if(img==null || img==""){
                  document.getElementById("gallimage").nextSibling.innerHTML=
            "choose a picture"+"<br>";
             document.getElementById("gallimage").focus();
	  return false;
    }
      
      
   return true;
  
    }
    
    