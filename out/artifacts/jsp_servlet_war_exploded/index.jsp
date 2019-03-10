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

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<%--<jsp:forward page="page2.jsp"/> &lt;%&ndash; action server side redirect &ndash;%&gt;--%>
Wartość i po operacji ++i wynosi <% out.print(++i);%><br>

<%!
    public int test(int x) {
        return 2 * x;
    }
%>

Wartość funkcji fla argumentu x = 3 wynosi <%=test(3)%>

<!-- Komentarz HTML -->
<%-- Komentarz JSP nie jest widoczny na stronie --%>

<div>
    <jsp:include page="page2.jsp">
        <jsp:param name="parametr_xyz" value="987"/>
    </jsp:include>
</div>

<c:set var="var_scope_page" scope="page" value="Nasza wartość page"/>
<c:set var="var_scope_session" scope="session" value="Nasza wartość session"/>
<c:set var="var_scope_request" scope="request" value="Nasza wartość request"/>
<c:set var="var_scope_application" scope="application" value="Nasza wartość application"/>


<h1>Wartość scope page:</h1>
<h1>${var_scope_page}</h1> <!-- wartosc z $ jest wczytywana tylko raz -->

<h1>Wartość scope session:</h1>
<h1>${var_scope_session}</h1>

<h1>Wartość scope request:</h1>
<h1>${var_scope_request}</h1>

<h1>Wartość scope application:</h1>
<h1>${var_scope_application}</h1>

<jsp:include page="scope_test.jsp"/>
<jsp:include page="multiplication_table.jsp"/>
<jsp:forward page="multiplication_table.jsp"/>

</body>
</html>
