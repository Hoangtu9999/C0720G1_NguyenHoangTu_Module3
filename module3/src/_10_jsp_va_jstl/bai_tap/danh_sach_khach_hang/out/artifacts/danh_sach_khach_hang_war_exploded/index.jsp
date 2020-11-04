<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="dao.CustomerDao" %><%--
  Created by IntelliJ IDEA.
  User: Hoang Tu
  Date: 03/11/2020
  Time: 2:52 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
<%
    List<Customer> listCustomer = CustomerDao.showAllCustomer();
    request.setAttribute("listCustomer",listCustomer);
%>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Birth day</th>
        <th scope="col">Address</th>
        <th scope="col">Image</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="cus" items="${requestScope.listCustomer}">
        <tr>
            <th scope="row"><c:out value="${cus.name}"/></th>
            <td><c:out value="${cus.birthDay}"/></td>
            <td><c:out value="${cus.address}"/></td>
            <td>
                <img style="width: 100px; height: 100px" src="<c:out value="${cus.image}"/>">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
