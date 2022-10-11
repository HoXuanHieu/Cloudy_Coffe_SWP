<%-- 
    Document   : DrinkPage
    Created on : Oct 6, 2022, 9:16:37 PM
    Author     : Ho Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloudy Coffee / Drink Page </title>
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
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu text-capitalize">
                                <a href="reservation.html" class="dropdown-item">Reservation</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <c:if test="${empty Name}">
                            <a href="LoginPage.jsp" class="nav-item nav-link">Login</a>
                        </c:if>
                        <c:if test="${not empty Name}">
                            <a href="" class="nav-item nav-link">Your Order</a>
                            <a href="Logout" class="nav-item nav-link">Logout</a>
                        </c:if>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
            <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
                <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Drink Name</h1>                
            </div>
        </div>
        <div>
            <section class="py-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="row gx-4 gx-lg-5 align-items-center">
                        <div class="col-md-4 "><img class="card-img-top img-fluid mb-5 mb-md-0" src="${Drink.getImage()}" alt="..." /></div>
                        <div class="col-md-6">                            
                            <h1 class="display-5 fw-bolder">${Drink.getDrink_name()}</h1>
                            <div class="fs-5 mb-5">                           
                                <span>${Drink.getPrice()} $</span>
                            </div>
                            <p class="lead">${Drink.getDescription()}</p>
                            <p>Tác giả: ${Book.getAuthorID()}</p>
                            <p>Danh Mục: <a class="" href="SearchForGenre?genre=${Drink.getKind_of_Drink()}">${Drink.getKind_of_Drink()}</a> </p>
                            thể loại:
                            <c:forEach var="i" items="${Drink.getIngredient()}">
                                <a class="" href="SearchForCategory?category=${i}">${i}</a>,
                            </c:forEach>
                            <br>
                            <hr>            
                            <c:if test="${not empty Name}">
                                <div class="d-flex">
                                    <form action="AddCart" method="POST">
                                        <input type="hidden" name="drinkId" value="${Drink.getDrink_id()}">
                                        <input class="form-control text-center me-3" id="inputQuantity" type="num" name="amount" value="1" style="max-width: 3rem" />
                                        <input type="submit" class="btn btn-outline-dark flex-shrink-0" value="Add to cart">                                      
                                    </form>
                                </div>
                            </c:if>
                            <c:if test="${empty Name}">
                                <div class="d-flex">
                                    <form action="LoginPage.jsp">
                                        <input type="hidden" name="drinkId" value="${Drink.getDrink_id()}">
                                        <input class="form-control text-center me-3" id="inputQuantity" type="num" name="amount" value="1" style="max-width: 3rem" />
                                        <input type="submit" class="btn btn-outline-dark flex-shrink-0" value="Add to cart">                                      
                                    </form>
                                </div>
                            </c:if>                           
                        </div>
                    </div>
                </div>
            </section> 
        </div>
    </body>
</html>
