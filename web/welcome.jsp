<%@ page import="kz.bitlab.sprint.db.Item" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kz.bitlab.sprint.servlet.RegisterServlet" %>
<%@ page import="java.util.Objects" %>
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
    String myAdmin = (String) request.getAttribute("admin");
    if(Objects.equals(myAdmin, "Aklbktglv@gmail.com")){
  %>
  <a class="btn btn-success btn-sm m-2 ms-4 mb-0" href="/addItem.jsp">+Add Item</a>

  <div class="row mt-5">
    <div class="col-12">
      <h2 class="text-center">Nice to see you, Mr. <%=myName%>!</h2>
      <p class="text-center text-lg">As the Main Admin, you have all the CRUD privileges!</p>
    </div>
  </div>
  <%
    }else {
  %>
  <div class="row mt-5">
    <div class="col-12">
    <h2 class="text-center">Hello, <%=myName%>!</h2>
    <p class="text-center">This is your profile page</p>
    </div>
  </div>
  <%
    }
  %>
  </div>
</body>
</html>
