<%-- 
    Document   : header
    Created on : Sep 29, 2022, 10:09:01 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="images/favicon.ico" rel="icon">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

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
        <title>Cloudy Coffee</title>
    </head>
    <body>
        <div class="container-fluid p-0 nav-bar">
            <nav class="navbar navbar-expand-lg bg-none navbar-dark py-3">
                <a href="DataForIndexPage?PageNumber=1" class="navbar-brand px-lg-4 m-0">
                    <h1 class="m-1 display-5 text-uppercase text-white">Cloudy Coffee</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto p-4">
                        <a href="DataForIndexPage?PageNumber=1" class="nav-item nav-link active">Home</a>
                        <a href="BookingPage.jsp" class="nav-item nav-link">Booking </a>
                        <a href="GetMenuForEachPage?PageNumber=1" class="nav-item nav-link">Menu</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Find Drink</a>
                           <div class="dropdown-menu text-capitalize">
                                <a href="FindDrinkByKindOfDrink?PageNumber=1&find=Coffee" class="dropdown-item">Coffee</a>                         
                                <a href="FindDrinkByKindOfDrink?PageNumber=1&find=Tea" class="dropdown-item">Tea</a>
                                <a href="FindDrinkByKindOfDrink?PageNumber=1&find=Smoothie" class="dropdown-item">Smoothie</a>
                            </div>
                        </div>
                        <c:if test="${empty Email}">
                            <a href="LoginPage.jsp" class="nav-item nav-link">Login</a>
                        </c:if>
                        <c:if test="${not empty Email}">
                            <a href="CartPage.jsp" class="nav-item nav-link">Your Order</a>
                            <a href="Logout" class="nav-item nav-link">Logout</a>
                        </c:if>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->
