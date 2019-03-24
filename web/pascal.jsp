<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pascal</title>
</head>
<body>

<%!
    public String pascal(int rows){
        String result = "";
        int cols = rows;
        for(int i=0;i<rows;i++){
            int number = 1;
            for(int j=1;j<=i+1;j++){
                result += number + " ";
                number = (number * (i-j+1)) / j;
            }
            result += "<br>";
        }
        return result;
    }
%>

<p style="text-align: center"><%=pascal(Integer.parseInt(request.getParameter("level")))%></p>

<p style="text-align: center"><%out.println(pascal(Integer.parseInt(request.getParameter("level"))));%></p>
</body>
</html>