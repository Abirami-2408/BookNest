<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <!-- jstl uri -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:AddBooks</title>
<%@include file="allcomponents/allCSS.jsp"%>
</head>
<body style="background-color:#f0f2f2;">
<%@include file="allcomponents/navbar.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4 p-4">
<div class="card">
<div class="card-body">

<h4 class="text-center">Add Books</h4>
<c:if test="${not empty SuccMessage }">
<p class="text-center text-danger">${SuccMessage}</p>
<c:remove var="SuccMessage" scope="session"/>
</c:if>
<c:if test="${not empty  FailMessage}">
<p class="text-center text-danger">${FailMessage}</p>
<c:remove var="FailMessage" scope="session"/>
</c:if>
<form action="${pageContext.request.contextPath}/addbook" method="post" enctype="multipart/form-data">

<div class="form-group">
<label>Book Name*:</label>
<input type="text" name="bname" class="form-control form-control-sm" required>
</div>

<div class="form-group">
<label>Author Name*:</label>
<input type="text" name="author" class="form-control form-control-sm" required>
</div>

<div class="form-group">
<label>Price*:</label>
<input type="number" name="price" class="form-control form-control-sm" required>
</div>

<div class="form-group">
<label for="inputState">Book Categories:</label>
<select name="category" class="form-control form-control-sm">
<option selected>--Select--</option>
<option value="Biography">Biography</option>
<option value="Fantasy">Fantasy & Adventures</option>
</select>
</div>

<div class="form-group">
<label for="inputState">Book Status:</label>
<select name="status" class="form-control form-control-sm">
<option selected>--Select--</option>
<option value="Active">Active</option>
<option value="Inactive">Inactive</option>
</select>
</div>

<div class="form-group">
<label>Upload Photo</label>
<input type="file" name="photo" class="form-control-file">
</div>
<button type="submit" class="btn btn-primary btn-sm">Add</button>
</form>
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