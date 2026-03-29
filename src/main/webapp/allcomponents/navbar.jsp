 <%@page isELIgnored="false" %>

<%@ page session="true" %>
    <!-- jstl uri -->
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid p-3" style="background-color:#EE92B1">
</div>
<div class="container-fluid p-3 bg-light">
<div class="row">
<div class="col-md-3 text-danger">
<h3>
  <i class="fa-solid fa-book-open"></i> BOOKNEST
</h3>
</div>
<div class="col-md-6">
<form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
    </form>
</div>

<div class="col-md-3">
<c:choose>
  <c:when test="${sessionScope.userobj != null}">
      <a href="#" class="btn btn-success">
          <c:out value="${sessionScope.userobj.name}" />
      </a>
      <a href="<c:url value='/Logout'/>" class="btn btn-danger">Logout</a>
  </c:when>

  <c:otherwise>
      <a href="<c:url value='/Login.jsp'/>" class="btn btn-success">Login</a>
      <a href="<c:url value='/Register.jsp'/>" class="btn btn-primary">Register</a>
  </c:otherwise>
</c:choose>
</div>
</div>
</div>

<!-- Logout modal -->
<!-- Vertically centered modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Are you sure</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
      <h4>Do you want to logout?</h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="<c:url value='/Logout'/>" class="btn btn-danger">Logout</a>
      </div> 
      </div>
      <div class="modal-footer">      
      </div>
    </div>
  </div>
</div>
<!--  End Logout modal -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><i class="fa-duotone fa-solid fa-address-book"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active"><a class="nav-link" href="admin/home.jsp"><i class="fa-solid fa-house"></i>Home <span class="sr-only">(current)</span></a></li>
      <li class="nav-item active"><a class="nav-link" href="#"><i class="fa-solid fa-book-open"></i>New Book</a></li>
      <li class="nav-item active"><a class="nav-link" href="#"><i class="fa-solid fa-book"></i>Recent Book</a></li>    
      <li class="nav-item active"><a class="nav-link disabled" href="#"><i class="fa-regular fa-book"></i>Old book</a> </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
            <button class="btn btn-warning my-2 my-sm-0" type="submit"><i class="fa-duotone fa-solid fa-gears"></i>Settings</button>
            <button class="btn btn-danger my-2 my-sm-0" type="submit"><i class="fa-sharp-duotone fa-solid fa-address-card"></i>Contact Us</button>
    </form>
  </div>
</nav>