<%-- 
    Document   : Receipt
    Created on : Oct 19, 2022, 10:23:04 PM
    Author     : Asus
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Payment Receipt</title>
        <style type="text/css">
            table {
                border: 0;
            }
            table td {
                padding: 5px;
            }
        </style>
    </head>
    <body>
        <div align="center">
            <h1>Payment Done. Thank you for purchasing our products</h1>
            <br/>
            <h2>Receipt Details:</h2>
            <table>
                <tr>
                    <td><b>Merchant:</b></td>
                    <td>Cloudy Coffee Shop</td>
                </tr>
                <tr>
                    <td><b>Payer:</b></td>
                    <jsp:useBean id="DAOUser" class="DAO.DAOUser"/>
                    <c:set var="id" value="${sessionScope.userId}"/>
                    <c:set var="user" value="${DAOUser.getUserByID(id)}"/>
                <td>${user.getName()}</td>      
                </tr>
                <tr>
                    <td><b>Description:</b></td>
                    <td>${transaction.description}</td>
                </tr>
                <tr>
                    <td><b>Item Total:</b></td>
                    <td>${transaction.amount.details.subtotal} USD</td>
                </tr>
                <tr>
                    <td><b>Shipping:</b></td>
                    <td>${transaction.amount.details.shipping} USD</td>
                </tr>
                <tr>
                    <td><b>Total:</b></td>
                    <td>${transaction.amount.total} USD</td>
                </tr>   
                <tr>
                    <td colspan="2" align="center">
                        <a href="index.jsp">Back Home</a>
                    </td>
                </tr>  
            </table>
        </div>
    </body>
</html>
