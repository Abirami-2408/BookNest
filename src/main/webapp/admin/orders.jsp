<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:All Orders</title>
<%@include file="allcomponents/allCSS.jsp"%>
</head>
<body>
<%@include file="allcomponents/navbar.jsp"%>
<h3 class="text-center mt-2"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
</svg> Hello Admin</h3>
<table class="table table-striped ">
  <thead class="bg-success text-white">
    <tr>
      <th scope="col">OrderId</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Ph No</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>
      <a href="#" class="btn btn-sm btn-primary">Edit</a>
      <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td> 
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>
      <a href="#" class="btn btn-sm btn-primary">Edit</a>
      <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td> 
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td>@mdo</td>
      <td>@mdo</td>
      <td>
      <a href="#" class="btn btn-sm btn-primary">Edit</a>
      <a href="#" class="btn btn-sm btn-danger">Delete</a>
      </td> 
    </tr>
    
  </tbody>
</table>

</body>
</html>