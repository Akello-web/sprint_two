<%@ page import="kz.bitlab.sprint.db.Item" %>
<%@ page import="java.util.ArrayList" %>
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

    <div class="row mt-4">
        <h2 class="text-center">Welcome to <%=nameStore%>!</h2>
        <p class="text-center">Electronic devices with high quality and service</p>
    </div>

    <div class="d-flex justify-content-around flex-wrap">
            <%
                ArrayList<Item> zattar = (ArrayList<Item>) request.getAttribute("itemse");
                if(zattar!=null){
                    System.out.println("The size: " + zattar.size());
                for(Item it : zattar){
            %>
        <div class="row mt-3">
            <div class="col-md-3">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title"><%=it.getName()%></h5>
                    <h4 class="card-text text-success"><%=it.getPrice()%>$</h4>
                    <p class="card-text"><%=it.getDescription()%></p>
                    <a href="#" class="btn btn-success w-100">Buy Now</a>
                </div>
            </div>
            </div>
        </div>
            <%
                              }
                }
            %>
    </div>
</div>
</body>
</html>
