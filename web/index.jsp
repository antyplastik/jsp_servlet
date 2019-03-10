<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalTime" %><%--
  Created by IntelliJ IDEA.
  User: kamil
  Date: 10.03.19
  Time: 09:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--directive-->
<%--<%@ page pageEncoding="us-ascii" %>--%>
<%@ page errorPage="upsik.jsp" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>First JSP project</h1>
<h2><%="123"%>
</h2>
Today is: <%LocalDate.now();%>><br> <!--skryplet-->
<%=LocalTime.now()%><br> <!--expression-->

<%=request.getRequestURI()%><br>
<%=request.getHeaders("Accept")%><br>
<%=request.getProtocol()%><br>
<%=out.getBufferSize()%><br>
<h1>Żółć</h1>

<%= 3 / 5 %>

<%@include file="fragment.jspf" %>

<%! int i = 5;%>
Tekst tekst tekst tekst <br>
Wartość i wynosi <%=i%> <br>
Wartość i po operacji i++ wynosi <% out.print(i++);%><br>
<jsp:forward page="page2.jsp"/> <%-- action server side redirect --%>
Wartość i po operacji ++i wynosi <% out.print(++i);%><br>

<%!
    public int test (int x){
        return 2*x;
    }
%>

Wartość funkcji fla argumentu x = 3 wynosi <%=test(3)%>

<!-- Komentarz HTML -->
<%-- Komentarz JSP nie jest widoczny na stronie --%>


</body>
</html>
