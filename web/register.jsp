<%@ page import="kz.bitlab.sprint.servlet.RegisterServlet" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign In</title>
    <%@include file="styles.jsp"%>
</head>
<body>
<div class="container mt-3" style="width: 70%">
    <%@include file="navbar.jsp"%>


    <form action="/register" method= "POST" class="form-control p-0">
        <%
            String fail = (String) request.getAttribute("fail");
            if(Objects.equals(fail, "failed")){
        %>
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            Incorrect login or password!
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
        <%
            }
        %>
            <h4 class="bg-light pt-3 pb-3 ps-2 m-0">Login Page</h4>
            <div class="bg-dark" style="height: 2px; opacity: 0.3;"></div>
                <table class="table table-borderless mt-4 ms-3">
                    <tr>
                        <td class="pe-0"><label for="email" class="form-label" >Email</label></td>
                        <td class="ps-0"><input type="email" name="email" class="form-control w-75" id="email" aria-describedby="emailHelp" required></td>
                    </tr>
                    <tr>
                        <td class="pe-0"><label for="password" class="form-label">Password</label></td>
                        <td class="ps-0"><input type="password" name="password" class="form-control w-75" id="password" required></td>
                    </tr>
                </table>
            <button class="btn btn-success ms-4 mb-3">Log In</button>
    </form>
</div>
</body>
</html>
