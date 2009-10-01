<!--GetCookie.jsp-->
<html>
<head><title>This gets a cookie stored on your computer</title></head>  
<body>
  <h1>The User's name will be displayed from the cookie stored.</h1>  
  
  <%
    Cookie[] cookieList = request.getCookies();
    
    for(int I = 0; I< cookieList.length;I++) { 
      Cookie myCookie = cookieList[I];
      if (myCookie.getName().equals("user")) {
        out.println("The Name of the user is: " + myCookie.getValue());
      }
    }  
  %>
  
</body>  
</html>  
