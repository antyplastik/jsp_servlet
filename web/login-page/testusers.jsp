<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Test users</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<sql:query dataSource="jdbc/servlet1" var="rs">
    SELECT * FROM Users;
</sql:query>

<table>
    <tr>
        <th>UserID</th>
        <th>Username</th>
        <th>Password</th>
    </tr>
    <c:forEach var="user" items="${rs.rows}">
        <tr>
            <td><c:out value="${user.UserID}"></c:out></td>
            <td><c:out value="${user.Username}"></c:out></td>
            <td><c:out value="${user.Password}"></c:out></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
