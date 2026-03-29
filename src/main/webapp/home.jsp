<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page isELIgnored="false" %>
    <!-- jstl uri -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
</head>
<body>
<h1>User:Home</h1>
<c:if test="${not empty userobj }">
<h1>Name:${userobj.name }</h1>
<h1>Email:${userobj.email}</h1>
</c:if>
</body>
</html>