<%-- 
    Document   : MathematicsOperation
    Created on : 29 Mar 2024, 9:04:47 pm
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.math.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mathematics Operations</title>
    </head>
    <body>
        
        <%
            int num1 = 25;
            int num2 = 10;
            int addition_output;
            int multiply_output;
            double squareroot = 0.00;
            
            java.util.Formatter myFormat = new java.util.Formatter();
            
            //perform basic arithmatiecs operations...
            addition_output = num1 + num2;
            multiply_output = num1 * num2;
            
            //Find square root for variable num1...
            squareroot = (double)(Math.sqrt(num1));
            
            out.print("<p>Addition num1 and num2 is " + addition_output + "</p>");
            out.print("<p>Multiplication num1 and num2 is " + multiply_output + "</p>");
            
            out.print("<p></p>");
            out.print("<p>Square root of " + num1 + " is " + myFormat.format("%.2f", squareroot) + "</p>");
            
        %>
    </body>
</html>
