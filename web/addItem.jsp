<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="styles.jsp"%>
</head>
<body>
<div class="container">

    <%@include file="navbar.jsp"%>
    <div class="bg-dark mt-0" style="height: 1px; opacity: 0.3;"></div>

    <div class="row">
        <div class="col-12 d-flex justify-content-center">
            <form action="/add-item" method="post" class="form-control p-0 w-50 mt-4">
                <h4 class="bg-light pt-3 pb-3 ps-2 m-0">Add a new item</h4>
                <div class="bg-dark" style="height: 2px; opacity: 0.3;"></div>

                <div class="p-3">
                <label for="name" class="form-label">Name of the product</label>
                    <input type="text" class="form-control" name="product_name" id="name" placeholder="MacBook Pro...">
                    <label for="description" class="form-label">Description</label>
                    <input type="text" class="form-control" name="product_desc" id="description" placeholder="For a cup of coffee...">
                    <label for="price" class="form-label">Price of the product</label>
                    <input type="text" class="form-control" name="product_price" id="price" placeholder="1099.9$...">
                    <button class="btn btn-success mt-3">Add the item</button>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
</html>
