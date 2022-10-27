<%-- 
    Document   : CartPage
    Created on : Oct 10, 2022, 1:06:40 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloudy Coffee / Cart Page </title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.min.css" rel="stylesheet">
        <link href="css/cssForCart.css" rel="stylesheet"> 
    </head>
    <body>
        <div class="container-fluid p-0 nav-bar">
            <nav class="navbar navbar-expand-lg bg-none navbar-dark py-3">
                <a href="DataForIndexPage?PageNumber=1" class="navbar-brand px-lg-4 m-0">
                    <h1 class="m-0 display-4 text-uppercase text-white">Cloudy Coffee</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto p-4">
                        <a href="DataForIndexPage?PageNumber=1" class="nav-item nav-link">Home</a>
                        <a href="service.html" class="nav-item nav-link">Service</a>
                        <a href="GetMenuForEachPage?PageNumber=1" class="nav-item nav-link active">Menu</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Find Drink</a>
                            <div class="dropdown-menu text-capitalize">
                                <a href="reservation.html" class="dropdown-item">Reservation</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <c:if test="${empty Email}">
                            <a href="LoginPage.jsp" class="nav-item nav-link">Login</a>
                        </c:if>
                        <c:if test="${not empty Email}">
                            <a href="" class="nav-item nav-link">Your Order</a>
                            <a href="Logout" class="nav-item nav-link">Logout</a>
                        </c:if>
                    </div>
                </div>
            </nav>
        </div>

        <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
            <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
                <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Your Cart</h1>                
            </div>
        </div>

        <!-- Cart Start -->
        <form action="authorize_payment" method="POST">
            <div style="margin-bottom: 50px;" class="card">
                <div class="row">
                    <div class="col-md-8 cart">
                        <div class="title">
                            <div class="row">
                                <div class="col"><h4><b>SHOPPING CART</b></h4></div>
                                <div class="col align-self-center text-right text-muted"></div>
                            </div>
                        </div>
                        <c:set var="id" value="${sessionScope.userId}"/>
                        <jsp:useBean id="DAOCart" class="DAO.DAOCart"/>
                        <c:forEach var="i" items="${DAOCart.getCart(id)}">
                            <c:set var="drinkId" value="${i.getDrink_id()}"/>
                            <c:set var="drink" value="${DAOCart.getDrink(drinkId)}"/>
                            <div class="row border-top border-bottom">
                                <div class="row main align-items-center">
                                    <div class="col-2"><img class="img-fluid" src="${drink.getImage()}"></div>
                                    <div class="col">
                                        <div class="row text-muted">${drink.getDrink_name()}</div>
                                        <div class="row">${drink.getKind_of_Drink()}</div>
                                    </div>
                                    <div class="col">
                                        <!--<a href="#">-</a><a href="#">+</a>-->
                                        <a href="#" class="border">${i.getAmount()}</a>
                                    </div>
                                    <c:set var="cartId" value="${i.getCart_id()}"/>
                                    <div class="col">&dollar; ${drink.getPrice() * i.getAmount()} <a href="RemoveCart?cart_id=${cartId}"><span class="close">&#10005;</span></a></div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:if test="${empty DAOCart.getCart(id)}">
                            <p style="margin-left: 30px">YOU CART IS EMPTY</p>
                        </c:if>
                        <div class="back-to-shop">
                            <a href="DataForIndexPage?PageNumber=1">
                                &leftarrow;<span class="text-muted"> Back to shop</span>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-4 summary">
                        <div><h5><b>Summary</b></h5></div>
                        <hr>
                        <div style="margin-bottom: 10px;" class="row">
                            <div class="col" style="padding-left:0;">ITEMS PRICE</div>
                            <div class="col text-right">&dollar; ${DAOCart.getTotalPrice(id)}</div>
                        </div>
                        <p>PAYMENT</p>
                        <select><option class="text-muted">Pay by PayPal</option></select>
                        <p>YOUR ADDRESS</p>
                        <input id="code" name="address" placeholder="ENTER YOUR ADDRESS" required>
                        <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                            <div class="col">TOTAL PRICE</div>
                            <div class="col text-right">&dollar; ${DAOCart.getTotalPrice(id)}</div>
                        </div>
                        <button style="margin-top: 10px;" class="btn" type="submit">CHECKOUT</button>
                    </div>
                </div>
            </div>
        </form>
        <!-- Cart End -->

    </body>
</html>
