<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019-03-23
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<c:if test="${username == null}">
    <c:redirect url="../upsik.jsp"></c:redirect>
</c:if>
<p>
    <span>Hello</span>
    <c:out value="${username}"></c:out>
</p>
<a href="logout.jsp">Log out</a>
</body>
</html>
