<%--
  Created by IntelliJ IDEA.
  User: Hoang Tu
  Date: 03/11/2020
  Time: 10:42 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>converter</title>
</head>
<body>
<h1>Rate: <%=request.getAttribute("rate")%></h1>
<h1>USD: <%=request.getAttribute("usd")%></h1>
<h1>VND: <%=request.getAttribute("result")%></h1>
</body>
</html>
