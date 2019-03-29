<%--
  Created by IntelliJ IDEA.
  User: kamil
  Date: 24.03.19
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<form>
    <label>
        Username:
        <input name="username"/>
    </label>
    <br>
    <label>
        Password:
        <input name="password" type="password"/>
    </label>
    <br>
    <label>
        Repeat password:
        <input name="password2" type="password"/>
    </label>
    <br>
    <label>
        Email:
        <input name="email" type="email"/>
    </label>
    <br>
    <button type="submit">Register</button>
</form>

</body>
</html>
