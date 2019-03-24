<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bg2</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<%
    javax.servlet.http.Cookie c = new javax.servlet.http.Cookie("bcolor", request.getParameter("bgcolor"));
    c.setMaxAge(60 * 60 * 24);
    response.addCookie(c);
%>

</body>
</html>
