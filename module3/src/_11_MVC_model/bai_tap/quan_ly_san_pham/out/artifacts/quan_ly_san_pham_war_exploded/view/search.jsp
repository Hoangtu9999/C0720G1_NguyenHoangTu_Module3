<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hoang Tu
  Date: 04/11/2020
  Time: 9:49 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/products">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name:</td>
        <td><c:out value="${product.name}"/></td>
    </tr>
    <tr>
        <td>Product Type:</td>
        <td><c:out value="${product.productType}"/></td>
    </tr>
    <tr>
        <td>Price:</td>
        <td><c:out value="${product.price}"/></td>
    </tr>
</table>
</body>
</html>