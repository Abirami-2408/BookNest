<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <!-- jstl uri -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnection" %>
<%@ page import="com.model.Book_datalist" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:EditBooks</title>
<%@include file="allcomponents/allCSS.jsp"%>
</head>
<body style="background-color:#f0f2f2;">
<%@include file="allcomponents/navbar.jsp"%>
<div class="container">
<div class="row">
<div class="col-md-4 offset-md-4 p-4">
<div class="card">
<div class="card-body">

<h4 class="text-center">Edit Books</h4>

<%
int id=Integer.parseInt(request.getParameter("id"));
BookDAOImpl dao=new BookDAOImpl(DBConnection.getConn());
Book_datalist b=dao.getBookById(id);
%>
<form action="${pageContext.request.contextPath}/editbooks" method="post">
<input type="hidden" name="id" value="<%=b.getId()%>">
<div class="form-group">
<label>Book Name*:</label>
<input type="text" name="bname" class="form-control form-control-sm" required value="<%=b.getBookName()%>">
</div>
<div class="form-group">
<label>Author Name*:</label>
<input type="text" name="author" class="form-control form-control-sm" required value="<%=b.getAuthor()%>">
</div>
<div class="form-group">
<label>Price*:</label>
<input type="number" name="price" class="form-control form-control-sm" required value="<%=b.getPrice()%>">
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
<select name="status" class="form-control form-control-sm" >
<%
if("Active".equals(b.getStatus())){
%>
<option value="Active">Active</option>
<option value="Inactive">Inactive</option>
<%
}else{
%>
<option value="Inactive">Inactive</option>
<option value="Active">Active</option>
<%
}
%>
</select>
</div>
<button type="submit" class="btn btn-primary btn-sm">Update</button>
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