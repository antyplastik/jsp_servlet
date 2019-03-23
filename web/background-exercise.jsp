<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Background random</title>
</head>
<%--dowolny kod java w bloku <% %>  --%>
<%
    String R, G, B;
    R = Integer.toHexString((int)(Math.random() * 255));
    G = Integer.toHexString((int)(Math.random() * 255));
    B = Integer.toHexString((int)(Math.random() * 255));
%>

<body style="background: #<%=R+G+B%>">

</body>
</html>
