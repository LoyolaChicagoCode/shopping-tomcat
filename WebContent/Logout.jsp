<!--Logout.jsp-->
<%@page %>
<html> <head><title>Session Example: Logout</title></head>
  <body bgcolor="white">

  <p>You are now logged out.</p>

  <% session.invalidate(); %>

  <p><a href="ShowSession.jsp">Log in again</a></p>

</body> </html>

