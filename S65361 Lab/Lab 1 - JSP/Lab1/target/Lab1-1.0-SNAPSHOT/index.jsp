<%-- 
    Document   : index
    Created on : 29 Mar 2024, 10:58:07 pm
    Author     : rynaa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Circle Area Calculator</title>
</head>
<body>
    <h1>Circle Area Calculator</h1>
    <form action="CalculateArea" method="post">
        Enter Radius: <input type="text" name="radius" required pattern="[0-9]+"><br><br>
        <input type="submit" value="Calculate Area">
    </form>
</body>
</html>

