<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23-Mar-19
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pascal tree</title>
</head>
<% int n = Integer.parseInt(request.getParameter("n"));%>

<body>

    <%
        for (int i = 1; i <= n; i++) {
            out.println(i);
        }
    %>


</body>
</html>
