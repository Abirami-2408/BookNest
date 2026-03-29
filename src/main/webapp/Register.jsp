<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <!-- jstl uri -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookNest Registeration</title>
<%@include file="allcomponents/allCSS.jsp" %>
</head>
<body style="background-color:#f0f4c3">
<%@include file="allcomponents/navbar.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4 p-4">
<div class="card ">
<div class="card-body">
<h4 class="text-center"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
</svg>
 Registration Form</h4>
 
 <c:if test="${not empty SuccMessage}">
 <p class="text-center text-success">${SuccMessage}</p>
 <c:remove var="SuccMessage" scope="session"/>
 </c:if>
 <c:if test="${not empty FailMessage}">
 <p class="text-center text-danger">${FailMessage}</p>
 <c:remove var="FailMessage" scope="session"/>
 </c:if>
<!-- bootstrap4 form -->
<form action="register" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1"><i class="fa-duotone fa-solid fa-user"></i>Name:</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  required="required" name="fname">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1"><i class="fa-duotone fa-regular fa-envelope"></i>Email id:</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1"><i class="fa-duotone fa-solid fa-address-book"></i>Phone number:</label>
    <input type="tel" class="form-control" id="exampleInputPassword1"  required="required" name="phno">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1"><i class="fa-duotone fa-solid fa-lock"></i>Password:</label>
    <input type="password"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"  required="required" name="password">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
    <label class="form-check-label" for="exampleCheck1">Agree terms & Conditions</label>
  </div>
  <button type="submit" class="btn btn-warning">Submit</button>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>