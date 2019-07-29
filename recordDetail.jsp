<%-- 
    Document   : index
    Created on : Nov 12, 2017, 10:27:15 PM
    Author     : Pawan-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
   div.fullpage{position:absolute;left:400px;top:15px;}          
  div.uploadhead{position:absolute;width:260px;height:40px;top:10px;background-color:indigo; color:white;border-radius: 100px;left:90px  }
  h1.descp{position:absolute;top:-23px;left:15% }
    div.uploadetail{position:absolute;top:55px;width:440px;height:600px;background-color:indigo;border-radius: 100px;}
     div.btn0{position:absolute;background-color:orange;width:380px;color:indigo; font-size:25pt;text-align:center;height:40px;left:30px;top:20px;border-top-left-radius:100px ;border-top-right-radius:100px;}
   input.txt0{position:absolute;width:374px;font-size:15pt;text-align:center;height:34px;left:30px;top:55px;border-bottom-left-radius: 100px;border-bottom-right-radius: 100px;}   
    input.txt1{position:absolute;width:374px;font-size:15pt;text-align:center;height:34px;left:30px;top:135px;border-bottom-left-radius: 100px;border-bottom-right-radius: 100px; }    
      div.btn1{position:absolute;background-color:orange;width:380px;color:indigo; font-size:25pt;text-align:center;height:40px;left:30px;top:100px;border-top-left-radius:100px ;border-top-right-radius:100px;}
     input.txt2{position:absolute;width:374px;font-size:15pt;text-align:center;height:34px;left:30px;top:215px;border-bottom-left-radius: 100px;border-bottom-right-radius: 100px; } 
      div.btn2{position:absolute;background-color:orange;width:380px;color:indigo; font-size:25pt;text-align:center;height:40px;left:30px;top:180px;border-top-left-radius:100px ;border-top-right-radius:100px;}
     input.txt4{position:absolute;width:374px;font-size:15pt;text-align:center;height:34px;left:30px;top:295px;border-bottom-left-radius: 100px;border-bottom-right-radius: 100px;} 
         div.btn4{position:absolute;background-color:orange;width:380px;color:indigo; font-size:25pt;text-align:center;height:40px;left:30px;top:260px;border-top-left-radius:100px ;border-top-right-radius:100px;}   
      input.txt6{position:absolute;width:380px;font-size:15pt;text-align:center;height:34px;left:30px;top:460px;border-bottom-left-radius: 100px;border-bottom-right-radius: 100px;}
      div.btn5{position:absolute;background-color:orange;width:380px;color:indigo; font-size:25pt;text-align:center;height:40px;left:30px;top:345px;border-top-left-radius:100px ;border-top-right-radius:100px;}  
      select.txt5{position:absolute;width:380px;font-size:15pt;text-align:center;height:34px;left:30px;top:380px;border-bottom-left-radius: 100px;border-bottom-right-radius: 100px;}
      div.btn6{position:absolute;background-color:orange;width:380px;color:indigo; font-size:25pt;text-align:center;height:40px;left:30px;top:420px;border-top-left-radius:100px ;border-top-right-radius:100px;}  
       input.btn8{position:absolute;width:180px;font-size:20pt;height:40px;left:35px;text-align:center;background-color:orange;top:510px;border-radius:100px; }
      input.btn9{position:absolute;width:185px;font-size:20pt;height:40px;left:220px;text-align:center;background-color:orange;top:510px;border-radius:100px; }
       h2.delete{position:absolute;top:600px;font-size:20pt; }
        div.last{position:absolute;width:260px;height:40px;top:595px;left:135px; }
        </style>
     <script type="text/javascript">
    function Validate(){
      
        var a= document.upload.cid.value;
        var b= document.upload.cname.value;
         var c= document.upload.cfname.value;
         var e= document.upload.caddress.value;
        
      
     
        if(a==null || a==""){
            alert("Enter a new Id");
    document.upload.cid.focus();
    document.upload.cid.style.background="#B0E0E6";
    return false;
    } 
    
    if(b==null || b==""){
            alert("Name must be filled");
    document.upload.cname.focus();
    document.upload.cname.style.background="#B0E0E6";
    return false;
    }
      
        if(c==null || c==""){
            alert("Father name must be filled");
    document.upload.cfname.focus();
    document.upload.cfname.style.background="#B0E0E6";
    return false;
    } 
    
           if(e==null || e==""){
            alert("Please enter the address");
    document.upload.caddress.focus();
    document.upload.caddress.style.background="#B0E0E6";
    return false;
    } 
   if(document.upload.cgender.value=="-1"){
            alert("Please choose a gender");
    document.upload.cgender.focus();
    document.upload.cgender.style.background="#B0E0E6";
    return false;
    }
     
   return true;
  
    }
   
  </script> 
    </head>
                                
      <body ><div class="fullpage">
       <form name="upload"  onsubmit="return Validate()" action="childreg.jsp" method="post">
            <div class="uploadhead">
                <center><h1 class="descp">Description</h1></center>
            </div>
            
            <div class="uploadetail">
                  <input class="txt0" type="text"  name="cid" >
            <div class="btn0" >Id No:</div>
            <input class="txt1" type="text"  name="cname" >
            <div class="btn1" >Name</div>
             <input class="txt2" type="text"  name="cfname">
            <div class="btn2" >Fathers's Name</div>
                
           <input class="txt4" type="text"  name="caddress">
            <div class="btn4" >Address</div>
            <select name="cgender"  class="txt5">
                <option  value="-1" selected>Choose here</option>
                <option  value="Male" >Male</option>
	<option value="Female">Female</option>
	<option value="other">Other</option>
	</select>
            <div class="btn5" >Gender</div>
            <input class="btn8" type="reset" value="Reset"><input class="btn9" type="submit" value="Submit">
             <input class="txt6" type="file"  name="photo">
            <div class="btn6" >Upload photo</div>
            </div>
             
                </form> <div class="last">
                    <a href="delete.jsp"><h2 class="deletes" ><font color="yellow">Delete a record ????.</font></h2></a></div>
          </div>
    </body>
</html>

