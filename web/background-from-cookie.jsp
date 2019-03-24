<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BG from cookie</title>
</head>


<%
    String bcolor = "";
    for (Cookie c : request.getCookies()) {
        out.println(c.getName() + " : " + c.getMaxAge());
        if (c.getName().equals("bcolor")){
            bcolor = c.getValue();
        }

    }
%>

<%
    javax.servlet.http.Cookie ck = new javax.servlet.http.Cookie("bcolor", request.getParameter("bgcolor"));
    ck.setMaxAge(60 * 60 * 24);
    response.addCookie(ck);
%>


<body style="background: <%=bcolor%>">

<form id="form_set_color" action="background-from-cookie.jsp" method="post">
    <select name="bgcolor">
        <option value="red">red</option>
        <option value="white">white</option>
        <option value="black">black</option>
    </select>
    <button type="submit">Set color</button>
</form>


</body>
</html>