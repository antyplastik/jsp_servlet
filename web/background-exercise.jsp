<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Background random</title>
</head>
<%--dowolny kod java w bloku <% %>  --%>
<%
    String beige = Math.random() >0.5 ? "#ff0000" : "#00ff00";
    int R,G,B;
    R=(int)(Math.random()*255);
    G=(int)(Math.random()*255);
    B=(int)(Math.random()*255);

%>

<body style="bgcolor="<%=beige%>">
<b>
    <p><%=beige%></p>
</b>

</body>
</html>
