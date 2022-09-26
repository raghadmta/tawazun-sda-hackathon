<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hackthon</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<h1>Welcome, <c:out value = "${user.userName}"></c:out></h1><a href="/home">Home</a> <a href="/logout">Log out</a>
			<h1>Our Products :</h1>
    <table class="table">
        <tr>
            <th>Name</th>
            <th>Price</th>
        </tr>
        <c:forEach var="project" items="${Prodects}">
        <tr>
           <td><a href="#"><c:out value="${project.name}"/></a></td> 
           <td> $ <c:out value="${project.price}"/></td> 
        </tr>
        </c:forEach>
    </table> 
<p>Total price is  <c:out value="${total}"/> SR</p>
<button><a href="done"> Buy</a></button>
</body>
</html>