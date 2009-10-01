<!--ShowApplication.jsp-->
<%@page import = "java.util.*"%>
<html>
<head><title>Application Object Example</title></head>
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


    Integer totalAccessCount =
      (Integer)application.getAttribute("totalAccessCount");
    if (totalAccessCount == null) {
      totalAccessCount = new Integer(1);
    } else {
      totalAccessCount = new Integer(totalAccessCount.intValue() + 1);
    }

    application.setAttribute("totalAccessCount", totalAccessCount);
%>

  <h1 align=center><%=heading%></h1>
  <h2 align=center>Access Counts</h2>

  <table border=1 align="center">
    <tr bgcolor="#F9AD00">
      <th>Info Type</th><th>Value</th>
    </tr>
    <tr>
      <td>Your Accesses</td>
      <td> <%=accessCount%> </td>
    </tr>
    <tr>
      <td>Total Accesses</td>
      <td> <%=totalAccessCount%> </td>
    </tr>
  </table>

</body>
</html>
