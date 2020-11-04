<%--
  Created by IntelliJ IDEA.
  User: Hoang Tu
  Date: 02/11/2020
  Time: 4:09 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Currency Converter</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Currency Converter</h2>
<form action="<%=request.getContextPath()%>/index" method="post">
  <label>Product Description: </label><br/>
  <input type="text" name="productDescription" placeholder="Product Description"/><br/>
  <label>List Price: </label><br/>
  <input type="text" name="listPrice" placeholder="List Price" value="0"/><br/>
  <label>Discount Percent: </label><br/>
  <input type="text" name="discountPercent" placeholder="Discount Percent" value="0"/><br/>
  <input type = "submit" id = "submit" value = "result"/>
</form>

</body>
</html>