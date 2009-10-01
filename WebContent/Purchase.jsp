<%@ page import="java.util.Vector" %>
<html>
<head><title>Shopping Cart Example</title></head>
<body>
  <center>
    <form type=post action="Purchase.jsp">
      <h1>Shopping Cart Example</h1>
      <br>
      Please select a Product and add it to your Shopping Cart
      <br>
      <select name='product'>
        <option>Beginning Java 2 by Ivor Horton</option>
        <option>Professional Java Programming by Brett Spell</option>
        <option>Professional Jini by Sing Li</option>
        <option>Professional JSP by Sing Li et al</option>
        <option>Professional XSL by Andrew Watt et al</option>
        <option>XML Applications by Frank Boumphrey et al</option>
        <option>Beginning XML by Nikola Ozu et al</option>
        <option>Instant UML by Pierre-Alain Muller</option>
        <option>Beginning Java Objects by Jacquie Barker</option>
      </select>
      <input type=submit name="submit" value="add">
    </form>

<!-- Here goes the shopping cart display -->

<%
    String submit = request.getParameter("submit");
    if (submit != null) {
%>
      <hr>
      <h2 align="center">Your Shopping Cart</h2>
      <p>

      <jsp:useBean id="cart" scope="session"
       class="com.wrox.sessions.ShoppingCart"/>
      <jsp:setProperty name="cart" property="*" />

<%
      cart.processRequest(request);
%>

      <table width="75%" align="center" border="1">

<%
      Vector products = cart.getProducts();
      for(int i=0; i<products.size(); i++) {
%>
        <tr>
          <td><%= products.get(i) %></td>
          <td><a href="Purchase.jsp?product=<%= products.get(i)
              %>&submit=remove">Remove</a>
          </td>
        </tr>
<%
      }
      if (products.size() == 0) {
%>
        <tr><td>Your cart is currently empty</td></tr>
<%
      }
%>
      </table>
<%
    }
%>
  </center>
</body>
</html>

 
