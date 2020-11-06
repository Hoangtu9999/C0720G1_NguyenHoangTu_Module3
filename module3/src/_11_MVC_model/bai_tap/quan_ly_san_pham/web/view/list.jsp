<%--
  Created by IntelliJ IDEA.
  User: Hoang Tu
  Date: 04/11/2020
  Time: 9:49 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/products?action=create">Create new customer</a>
</p>
<form action="/products?action=search" method="post">
    <label>Tìm kiếm:</label>
    <input type="text" name="search" id="search" >
    <input type="submit" value="search">
</form>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Product Type</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
            <td> <a href="/products?action=view&id=<c:out value='${product.id}'/>"><c:out value="${product.name}"/></a> </td>
            <td><c:out value="${product.productType}"/></td>
            <td><c:out value="${product.price}"/></td>
            <td><a href="/products?action=edit&id=<c:out value="${product.id}"/>">edit</a></td>
            <td><a href="/products?action=delete&id=<c:out value="${product.id}"/>">delete</a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
