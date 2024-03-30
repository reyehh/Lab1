<%-- 
    Document   : AttributeIsSet
    Created on : 28 Mar 2024, 8:55:34 pm
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        
        <% session.setAttribute("user", "Fouad Abdulameer");%>
        <a href="GetAttribute.jsp">Click here to get user name</a>
        <br>
        <a href="MathematicsOperation.jsp">Results of mathematics operations</a>
        
    </body>
</html>
