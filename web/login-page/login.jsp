<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019-03-23
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div align="center">
    <form id="form_login" action="verify.jsp" method="post">
        <label> User:
            <input type="text" name="username"/>
        </label>
        <br>
        <label> Password:
            <input type="password" name="password"/>
        </label>
        <br>
        <button class="button secondary" type="submit">Log in</button>
    </form>

    <div align="center">
            <button onclick="location.href='../registration/index.jsp'" type="button">Registration</button>
    </div>

</div>
</body>
</html>
