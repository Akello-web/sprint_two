<%@ page import="kz.bitlab.sprint.db.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.sprint.servlet.RegisterServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Items</title>
  <%@include file="styles.jsp"%>
</head>
<body>
<div class="container mt-3" style="width: 70%">
  <%@include file="navbar.jsp"%>
  <div class="bg-dark mt-0" style="height: 1px; opacity: 0.3;"></div>

  <%
    String myName = (String) request.getAttribute("fullName");
    System.out.println("This is your name: " + myName);
  %>

  <div class="row mt-5">
    <div class="col-12">
    <h2 class="text-center">Hello, <%=myName%>!</h2>
    <p class="text-center">This is your profile page</p>
    </div>
  </div>
</div>

</body>
</html>
