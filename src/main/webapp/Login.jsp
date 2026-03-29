<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page isELIgnored="false" %>
    <!-- jstl uri -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookNest:Login Page</title>
<%@include file="allcomponents/allCSS.jsp"%>
</head>
<body style="background-color:#f0f4c3">
<%@include file="allcomponents/navbar.jsp"%>
<!-- bootstrap form -->
<form action="login" method="post">
<div class="container-fluid">
<div class="row">
<div class="col-md-4 offset-md-4 p-4">
<div class="card">
<div class="card-body">
<h5 class="text-center p-2"><i class="fa-duotone fa-solid fa-right-to-bracket"></i>Login</h5>
<c:if test="${not empty FailMessage}">
<h5 class="text-center text-danger">${FailMessage}</h5>
<c:remove var="FailMessage" scope="session"/>
</c:if>
<c:if test="${not empty SuccMessage}">
<h5 class="text-center text-success">${SuccMessage}</h5>
<c:remove var="SuccMessage" scope="session"/>
</c:if>
  <div class="form-group">
    <label for="exampleInputEmail1"><i class="fa-duotone fa-regular fa-envelope"></i>Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1"><i class="fa-duotone fa-solid fa-lock"></i>Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"  required="required" name="password">
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-warning">Login</button><br>
  <a href="Register.jsp" 
   class="btn btn-outline-success mt-2 text-dark text-decoration-none">
   Create Account
</a>
  </div>
</div>
</div>
</div>
</div>
</div>
</form>
</body>
</html>