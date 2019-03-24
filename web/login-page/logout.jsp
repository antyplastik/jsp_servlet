<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019-03-23
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:remove var="username" scope="session"></c:remove>
<c:redirect url="login.jsp"></c:redirect>
</body>
</html>
