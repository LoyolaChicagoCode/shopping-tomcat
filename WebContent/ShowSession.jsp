<!--ShowSession.jsp--> 
<%@page import = "java.util.*"%>
<html> <head><title>Session Example</title></head> 
  <body bgcolor="white">

  <% 
    Integer accessCount =
      (Integer)session.getAttribute("accessCount");
    String heading = null;
    if (accessCount == null) {
      accessCount = new Integer(1);
      heading = "Welcome, this is your First Visit";
    } else {
      accessCount = new Integer(accessCount.intValue() + 1);
      heading = "Welcome, this is your visit # " + accessCount;
    }

    session.setAttribute("accessCount", accessCount);
  %>
  
  <h1 align=center>  <%=heading%>   </h1>
  <P>
  <h2 align=center>Information about Your Session</h2><br>
  
  <table border=1 align="center">
  <tr bgcolor="#F9AD00">
    <th>Info Type</th><th>Value</th></tr>
  <tr><td>ID</td>
    <td> <%=session.getId()%></td></tr>
  <tr><td>Creation Time</td>
    <td><%=new Date(session.getCreationTime())%></td></tr>
  <tr>
    <td>Time of Last Access</TD>
    <td><%=new Date(session.getLastAccessedTime())%></td></tr>
  <tr>
    <td>Number of Accesses</td>
    <td> <%=accessCount%> </td></tr>
  </table>
</body> </html>
 
