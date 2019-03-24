<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24-Mar-19
  Time: 07:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
<h1><% out.print("Hello World!!!");%></h1>
<h2>Today is <%=LocalDate.now().toString()%> atual time: <%=LocalTime.now().toString()%></h2>
<%
    out.println("Your IP address is " + request.getRemoteAddr());
%>
</body>
</html>
