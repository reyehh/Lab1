<%-- 
    Document   : Sales
    Created on : 29 Mar 2024, 10:27:45 pm
    Author     : rynaa
--%>

<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sales Data with Discounts</title>
</head>
<body>
    <h1>Sales Data with Discounts</h1>
    
    <table border="1">
        <thead>
            <tr>
                <th>Customer</th>
                <th>Cust. Type</th>
                <th>Purchase</th>
                <th>Discount</th>
            </tr>
        </thead>
        <tbody>
            <% 
            String csvFile = "Sales.csv";
            String line = "";
            String cvsSplitBy = ",";
            double discountPercentage = 0.1; // 10% discount for Cash customers

            try (BufferedReader br = new BufferedReader(new FileReader(csvFile))) {
                while ((line = br.readLine()) != null) {
                    String[] data = line.split(cvsSplitBy);
                    String customer = data[0];
                    String customerType = data[1];
                    double purchase = Double.parseDouble(data[2]);
                    double discount = (customerType.equals("Cash")) ? purchase * discountPercentage : 0.0;
                    double discountedPurchase = purchase - discount;
            %>
            <tr>
                <td><%= customer %></td>
                <td><%= customerType %></td>
                <td><%= purchase %></td>
                <td><%= discount %></td>
            </tr>
            <% 
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
            %>
        </tbody>
    </table>
</body>
</html>
