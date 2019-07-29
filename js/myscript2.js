 function wardvalidate(){
         document.getElementById("mess1").style.color="yellow";
         document.getElementById("mess2").style.color="yellow";
         
        var id = document.getElementById("wardid").value;
         var pwd = document.getElementById("wardpwd").value;
        
        
         if(id==null || id==""  ){
            document.getElementById("wardid").nextSibling.innerHTML=
            "Please Enter Warden id"+"<br>";
             document.getElementById("wardid").focus();
             
	  return false;
    }  
      if(pwd==null || pwd==""){
                  document.getElementById("wardpwd").nextSibling.innerHTML=
            "Please Enter valid password"+"<br>";
             document.getElementById("wardpwd").focus();
	  return false;
    }
      
      
   return true;
  
 }
	

			var imageIdex = 1;
			function changeImage(){
					var myImage =	document.getElementById("image");
			var ArrayImage =["hostelimg/four.jpg","hostelimg/five.jpg","hostelimg/three.jpg","hostelimg/one.jpg","hostelimg/six.jpg"];
				myImage.setAttribute("src",ArrayImage[imageIdex]);
				imageIdex++;
				
				if(imageIdex >=ArrayImage.length){
					
					imageIdex = 0;
				}
			}
			setInterval(changeImage,3000);
		