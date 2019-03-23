<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<form action = "verify.jsp" method = "GET">
    <label>
        <input type = "text" name = "username"> Login
    </label>
    <br>
    <label>
        <input type = "password" name = "password"> Password
    </label>
    <br>
    <label>
        <button type = "submit"> Log in </button> <br>
    </label>

</form>
</body>
</html>
