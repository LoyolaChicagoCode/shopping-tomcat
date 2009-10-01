<!--AddCookie.jsp--> 
<html>
<head><title>This page stores a cookie on your computer</title></head>
<body> 
  <h1>Cookie is being stored on your computer!</h1>
  
  <%
    Cookie myCookie = new Cookie("user", "newUser");
    myCookie.setMaxAge(24*60*60);
    response.addCookie(myCookie); 
  %> 
    
  <a href="GetCookie.jsp"/>Read Cookie</a> 
  
</body>
</html>
