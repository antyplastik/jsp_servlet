<%--
  Created by IntelliJ IDEA.
  User: kamil
  Date: 10.03.19
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<% int n = 10; %>

<table>

    <%
        for (int i = 1; i <= n; i++) {
    %>
    <tr>
        <td>kol 1</td>
        <td>kol 2</td>
    </tr>
    <%
        }
    %>

</table>

</body>
</html>
