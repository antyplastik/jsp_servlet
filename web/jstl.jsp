<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>JSTL playground</title>
</head>

<body>
<c:out value="Hello world"></c:out>

<c:set scope="page" var="x" value="0"></c:set>

${x+1}

<c:if test="${x > 1}">
    <p>X jest większy od 1</p>
</c:if>
<c:if test="${x <= 1}">
    <p>X jest mniejszy od 1</p>
</c:if>

<c:choose> <%-- switch --%>
    <c:when test="${x > 1}"> <%-- case --%>
        <c:redirect url="pascal.jsp">
            <c:param name="level" value="10"></c:param>
        </c:redirect>
    </c:when>
    <c:otherwise> <%-- default --%>
        <p>X nie jest większy od 1</p>
    </c:otherwise>
</c:choose>



</body>
</html>