<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <!-- jstl uri -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>

<%@include file="allcomponents/allCSS.jsp" %>
<style type="text/css">
a{
text-decoration:none;
color:black;
}
a:hover{
text-decoration:none;
color:black;
}
</style>
</head>
<body>
<%@include file="allcomponents/navbar.jsp"%>
<c:if test="${empty sessionScope.userobj}">
    <c:redirect url="../Login.jsp"/>
</c:if>
<div class="container">
<div class="row p-5">
<div class= "col-md-3">
<a href="addBook.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-solid fa-cart-plus fa-3x text-warning"></i>
<h5>AddBook</h5>
--------
</div>
</div>
</a>
</div>

<div class= "col-md-3">
<a href="allbook.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-sharp-duotone fa-solid fa-book-open-reader fa-3x text-primary" style="--fa-secondary-color: rgb(173, 124, 174);"></i>
<h5>All Books</h5>
--------
</div>
</div>
</a>
</div>

<div class= "col-md-3">
<a href="orders.jsp">
<div class="card">
<div class="card-body text-center">
<i class="fa-sharp-duotone fa-solid fa-box-open fa-3x text-success"></i>
<h5>Orders</h5>
--------
</div>
</div>
</a>
</div>

<div class= "col-md-3">
<div class="card">
<div class="card-body text-center">
<i class="fa-sharp-duotone fa-solid fa-right-from-bracket fa-3x text-danger"></i>
<h5>Logout</h5>
--------
</div>
</div>
</div>

</div>
</div>
<div style="margin-top:70px;">
<%@include file="allcomponents/footer.jsp" %>
</div>

</body>
</html>