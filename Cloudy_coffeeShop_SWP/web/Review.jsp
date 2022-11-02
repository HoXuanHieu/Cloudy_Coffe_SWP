<%-- 
    Document   : Review.jsp
    Created on : Oct 19, 2022, 9:12:33 PM
    Author     : Asus
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Review</title>
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
                    <p class="my-5 mx-5" style="font-size: 30px;">Please Review Before Paying</p>
                    <div class="row">
                        <ul class="list-unstyled">
                            <li class="text-black mt-1">Email: ${payer.email}</li>
                            <!--<li class="text-muted mt-1"><span class="text-black">Invoice</span> #12345</li>-->
                            <li class="text-black mt-1">Description: ${transaction.description}</li>
                            <li class="text-black mt-1">Name: ${payer.lastName}</li>
                            <li class="text-black mt-1">Shipping Address: ${sessionScope.address}</li>
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
                            <p>Shipping</p>
                        </div>
                        <div class="col-xl-2">
                            <p class="float-end">$${transaction.amount.details.shipping}
                            </p>
                        </div>
                        <hr style="border: 2px solid black;">
                    </div>
                    <div class="row text-black">

                        <div class="col-xl-12">
                            <p class="float-end fw-bold">Total: $${transaction.amount.total}
                            </p>
                        </div>
                        <hr style="border: 2px solid black;">
                    </div>
                    <form action="execute_payment" method="POST">
                        <div class="text-center">
                            <input type="hidden" name="paymentId" value="${param.paymentId}" />
                            <input type="hidden" name="PayerID" value="${param.PayerID}" />
                            <input type="submit" value="Pay Now" />
                        </div>
                    </form>
                    <div class="text-center" style="margin-top: 90px;">
                        <a href="CartPage.jsp"><u class="text-info">Back to Carts</u></a>
                        <p>Please check carefully before payment. </p>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
