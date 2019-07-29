 <%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

  <%! String name,fname,address,gender,rent,contact ;%>
<%

name=request.getParameter("sname");
fname=request.getParameter("sfname");
address=request.getParameter("saddress");
gender=request.getParameter("sgender");
rent=request.getParameter("srent");
contact=request.getParameter("scontact");


request.getSession().setAttribute("name", name);
request.getSession().setAttribute("fname", fname);
request.getSession().setAttribute("address",address);
request.getSession().setAttribute("gender", gender);
request.getSession().setAttribute("rent", rent);
request.getSession().setAttribute("contact", contact);

%>
<% 
 String wardid = (String)request.getSession().getAttribute("wardid"); 
if(wardid==null){
out.println("<script type=\"text/javascript\">");
out.println("alert('Warden Login Invalid')");
out.println("location='index.jsp'");
out.println("</script>"); 

}
 else{
 %><jsp:include page="showdetail.jsp"/> <%
 }
%>
    <%--
Random rand = new Random();

int n1 = rand.nextInt(1) + 8;

String str ="00112233445566ABCDEF";
String pass=null;

  
   StringBuilder sb2 = new StringBuilder( str.length()) ;

     for( int i = 0; i <n1; i++ ) {
      sb2.append( str.charAt( rand.nextInt(str.length()) ) );
}pass=sb2.toString();

 %><%--
   String result;
   
   // Recipient's email ID needs to be mentioned.
   String to = "krpawansah@gmail.com";

   // Sender's email ID needs to be mentioned
   String from = "unicpawan@gmail.com";

   // Assuming you are sending email from localhost
   String host = "localhost";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);

   try {
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("password");
      
      // Now set the actual message
      message.setText(pass);
      
      // Send message
      Transport.send(message);
      result = "Sent message successfully....";
   } catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
   }
--%>

