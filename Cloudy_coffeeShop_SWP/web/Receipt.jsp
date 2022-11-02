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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>
        <div class="card">
            <div class="card-body mx-4">
                <div class="container">
                    <p class="my-5 mx-5" style="font-size: 30px; font: bold">Cloudy Coffee </p>
                    <p class="my-5 mx-5" style="font-size: 25px;">Payment Done. Thank you for purchasing our products</p>
                    <div class="row">
                        <jsp:useBean id="DAOUser" class="DAO.DAOUser"/>
                        <c:set var="id" value="${sessionScope.userId}"/>
                        <c:set var="user" value="${DAOUser.getUserByID(id)}"/>
                        <ul class="list-unstyled">
                            <li class="text-black mt-1">Description: </li>
                            <li class="text-black mt-1">Merchant: Cloudy Coffee Shop</li>
                            <li class="text-black mt-1">Email:　${user.getEmail()}</li>
                            <li class="text-black mt-1">Name: ${user.getName()}</li>
                            <li class="text-black mt-1"></li>

                        </ul>
                        <hr>
                        <div class="col-xl-10">
                            <p>Item Total:</p>
                        </div>
                        <div class="col-xl-2">
                            <p class="float-end">$ ${transaction.amount.details.subtotal}
                            </p>
                        </div>
                        <hr>
                    </div>
                    <div class="row">
                        <div class="col-xl-10">
                            <p>Shipping:</p>　
                        </div>
                        <div class="col-xl-2">
                            <p class="float-end">$ ${transaction.amount.details.shipping}
                            </p>
                        </div>
                        <hr style="border: 2px solid black;">
                    </div>
                    <div class="row text-black">

                        <div class="col-xl-12">
                            <p class="float-end fw-bold">Total: $ ${transaction.amount.total}
                            </p>
                        </div>
                        <hr style="border: 2px solid black;">
                    </div>
                    <div class="text-center" style="margin-top: 90px;">
                        <a href="DataForIndexPage?PageNumber=1"><u class="text-info">Back Home Page</u></a>
                        <p>Thank you for using my service. </p>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
