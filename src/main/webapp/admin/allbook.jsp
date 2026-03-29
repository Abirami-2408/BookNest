<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@page isELIgnored="false" %>
    <!-- jstl uri -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
 <%@ page import="java.util.List" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnection" %>
<%@ page import="com.model.Book_datalist" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin:All Books</title>
<%@include file="allcomponents/allCSS.jsp"%>
</head>
<body>
<%@include file="allcomponents/navbar.jsp"%>
<h3 class="text-center mt-2"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
</svg> Hello Admin</h3>
<c:if test="${not empty SuccMessage }">
<h5 class="text-center text-danger">${SuccMessage}</h5>
<c:remove var="SuccMessage" scope="session"/>
</c:if>
<c:if test="${not empty  FailMessage}">
<h5 class="text-center text-danger">${FailMessage}</h5>
<c:remove var="FailMessage" scope="session"/>
</c:if>
<table class="table table-striped ">
  <thead class="bg-success text-white">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Categories</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  BookDAOImpl dao=new BookDAOImpl(DBConnection.getConn());
  List<Book_datalist>list=dao.getAllBooks();
  for(Book_datalist b:list){
%> 
  <tr><td><%=b.getId() %></td>
  <td>
  <img src="../book/<%=b.getPhoto()%>" 
       style="width:60px;height:70px;">
</td>
      <td><%=b.getBookName()%></td>
      <td><%=b.getAuthor()%></td>
      <td><%=b.getPrice()%></td>
      <td><%=b.getBookCategory()%></td>
       <td><%=b.getStatus()%></td>
      <td>
      <a href="edit_books.jsp?id=<%= b.getId() %>" class="btn btn-sm btn-primary">Edit</a>
      <a href="<%= request.getContextPath() %>/delete?id=<%= b.getId() %>" 
   class="btn btn-sm btn-danger">Delete</a>
      </td> 
    </tr>
<%
  }
%>	   
  </tbody>
</table>
<div style="margin-top:70px;">
<%@include file="allcomponents/footer.jsp" %>
</div>
</body>
</html>