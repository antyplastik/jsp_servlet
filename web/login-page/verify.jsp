<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019-03-23
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String, String> users = new HashMap<>();
    users.put("admin", "1234");
    users.put("user", "5678");
%>

<%
    boolean isAuthenticated = false;
    String expectPassword = users.get(request.getParameter("username"));
    isAuthenticated = expectPassword.equals(request.getParameter("password"));
%>

<c:choose>
    <c:when test="<%=isAuthenticated%>">
        <c:set scope="session" var="username" value="<%=request.getParameter(\"username\")%>"/>
        <c:redirect url="main.jsp"></c:redirect>
    </c:when>
    <c:otherwise>
        <c:redirect url="../upsik.jsp"></c:redirect>
    </c:otherwise>
</c:choose>
</body>
</html>
