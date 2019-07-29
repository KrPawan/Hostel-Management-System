 function loginvalidate(){
         document.getElementById("messa").style.color="yellow";
         document.getElementById("messb").style.color="yellow";
         
        var id = document.getElementById("hostdid").value;
         var pwd = document.getElementById("hostpwd").value;
        
        
         if(id==null || id==""  ){
            document.getElementById("hostid").nextSibling.innerHTML=
            "Please Enter hostler id"+"<br>";
             document.getElementById("hostid").focus();
             
	  return false;
    }  
      if(pwd==null || pwd==""){
                  document.getElementById("hostpwd").nextSibling.innerHTML=
            "Please Enter valid password"+"<br>";
             document.getElementById("hostpwd").focus();
	  return false;
    }
      
      
   return true;
  
 }
