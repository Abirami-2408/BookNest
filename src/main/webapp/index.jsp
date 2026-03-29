<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<title>BookNest</title>
<%@include file="allcomponents/allCSS.jsp"%>
<style type="text/css">
.back-img{
background:url("img/BookNest.jpeg");
height:90vh;
width:100%;
background-size:cover;
background-repeat:no-repeat;
}
</style>
</head>
<body style="background-color:#f7f7f7;">
<%@include file="allcomponents/navbar.jsp"%>
<div class="container-fluid back-img">
  <h2 class="text-center text-danger ">BookNest</h2>
</div>


<!-- starting of Recent Books -->
<h3 class="text-center mt-2">Recent Books</h3>
<div class="row">
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book1.jpeg" style="width:70px;height:90px">
<p>The Story of my Life<i class="fa-solid fa-ranking-star"></i></p>
<p>Author: Helen Keler</p>
<p>Category:Biography </p>
<div class="row">
<a href="" class="btn btn-danger btn-sm  mt-1"><i class="fa-brands fa-shopify"></i>Add Cart</a>
<a href="" class="btn btn-warning btn-sm ml-1 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-1 mt-1">$399</a>
</div>
</div>
</div>
</div>

<!-- 2 img -->
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book2.jpeg" style="width:60px;height:70px">
<p>The Sword & Magic<i class="fa-duotone fa-solid fa-khanda"></i></p>
<p>Author:J.K.Rowling </p>
<p>Category:Fantasy&Adventures </p>
<div class="row">
<a href="" class="btn btn-danger btn-sm  mt-1"><i class="fa-brands fa-shopify"></i>Add Cart</a>
<a href="" class="btn btn-warning btn-sm ml-1 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-1 mt-1">$399</a>
</div>
</div>
</div>
</div>

<!-- #3 rd book -->
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book3.jpeg" style="width:60px;height:90px">
<p>The Narnia<i class="fa-brands fa-linode"></i></p>
<p>Author: C.S.Lewis</p>
<p>Category:Biography </p>
<div class="row">
<a href="" class="btn btn-danger btn-sm mt-1"><i class="fa-brands fa-shopify"></i>Add Cart</a>
<a href="" class="btn btn-warning btn-sm ml-1 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-1 mt-1">$599</a>
</div>
</div>
</div>
</div>

</div>
<div class="text-center mt-3 ">
<a href="" class="btn btn-primary  btn-small text-white"><i class="fa-duotone fa-solid fa-eye"></i>View All</a>
</div>
<!-- End Of Recent Books -->
<hr>
<!-- starting of new Books -->
<h3 class="text-center mt-2">New Books</h3>
<div class="row">
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book4.jpeg" style="width:60px;height:70px">
<p>The Dragons<i class="fa-brands fa-d-and-d"></i> </p>
<p>Author: Andrew Mondro</p>
<p>Category:Fantasy </p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2 mt-1">Add Cart</a>
<a href="" class="btn btn-warning btn-sm ml-2 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-2 mt-1">$399</a>
</div>
</div>
</div>
</div>

<!-- 2 img -->
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book2.jpeg" style="width:70px;height:90px">
<p>The Sword & Magic<i class="fa-duotone fa-solid fa-khanda"></i></p>
<p>Author:J.K.Rowling </p>
<p>Category:Fantasy </p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2 mt-1">Add Cart</a>
<a href="" class="btn btn-warning btn-sm ml-2 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-2 mt-1">$399</a>
</div>
</div>
</div>
</div>

<!-- #3 rd book -->
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book3.jpeg" style="width:60px;height:70px">
<p>The  Chronicles of Narnia<i class="fa-brands fa-linode"></i></p>
<p>Author: C.S.Lewis</p>
<p>Category:Biography </p>
<div class="row">
<a href="" class="btn btn-danger btn-sm ml-2 mt-1">Add Cart</a>
<a href="" class="btn btn-warning btn-sm ml-2 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-2 mt-2">$599</a>
</div>
</div>
</div>
</div>

</div>
<div class="text-center mt-2 ">
<a href="" class="btn btn-primary  btn-small text-white"><i class="fa-duotone fa-solid fa-eye"></i>View All</a>
</div>
<!-- End Of new Books -->
<hr>
<!-- starting of  old Books -->
<h3 class="text-center mt-2">Old Books</h3>
<div class="row">
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book1.jpeg" style="width:60px;height:90px">
<p>The Story of my Life<i class="fa-solid fa-ranking-star"></i></p>
<p>Author: Helen Keler</p>
<p>Category:Biography </p>
<div class="row">
<a href="" class="btn btn-warning btn-sm ml-2 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-2 mt-1">$399</a>
</div>
</div>
</div>
</div>

<!-- 2 img -->
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book2.jpeg" style="width:60px;height:90px">
<p>The Sword & Magic<i class="fa-duotone fa-solid fa-khanda"></i></p>
<p>Author:J.K.Rowling </p>
<p>Category:Adventures </p>
<div class="row">

<a href="" class="btn btn-warning btn-sm ml-2 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-2 mt-1">$399</a>
</div>
</div>
</div>
</div>

<!-- #3 rd book -->
<div class= "col-md-3">
<div class="card crd-ho ml-3 mt-2">
<div class="card-body text-center">
<img alt="" src="book/Book3.jpeg" style="width:60px;height:90px">
<p>The Narnia<i class="fa-brands fa-linode"></i></p>
<p>Author: C.S.Lewis</p>
<p>Category:Fantasy </p>
<div class="row">

<a href="" class="btn btn-warning btn-sm ml-2 mt-1">View Details</a>
<a href="" class="btn btn-success btn-sm ml-2 mt-1">$599</a>
</div>
</div>
</div>
</div>

</div>
<div class="text-center mt-2 ">
<a href="" class="btn btn-primary  btn-small text-white"><i class="fa-duotone fa-solid fa-eye"></i>View All</a>
</div>
<!-- End Of  Books -->
<%@include file="allcomponents/footer.jsp" %>

</html>
</body>
