<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23-Mar-19
  Time: 02:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Veryfy</title>
</head>
<body>
<%
    Map<String, String> users = new HashMap<>();
    users.put("admin", "1234");
    users.put("user", "5678");
%>
</body>

</html>
