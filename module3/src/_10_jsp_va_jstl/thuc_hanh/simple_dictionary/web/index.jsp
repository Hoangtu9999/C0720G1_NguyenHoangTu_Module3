<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hoang Tu
  Date: 03/11/2020
  Time: 11:06 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Simple Dictionary</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/dictionary" method="post">
  <label>Vietnamese Dictionary  </label>
  <input type="text" name="search" placeholder="Enter your word:" />
  <input type = "submit" id = "submit" value = "search"/>
</form>
<c:if test="${not empty msg}">
  <h1><%=request.getAttribute("msg")%></h1>
</c:if>

</body>
</html>