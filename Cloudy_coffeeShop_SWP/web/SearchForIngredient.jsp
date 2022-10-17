<%-- 
    Document   : SearchForIngredient
    Created on : Oct 11, 2022, 10:05:23 PM
    Author     : Ho Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloudy Coffee / Finding</title>
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
                        <a href="BookingPage.jsp" class="nav-item nav-link">Booking</a>
                        <a href="GetMenuForEachPage?PageNumber=1" class="nav-item nav-link active">Menu</a>
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
                            <a href="" class="nav-item nav-link">Your Order</a>
                            <a href="Logout" class="nav-item nav-link">Logout</a>
                        </c:if>
                    </div>
                </div>
            </nav>
        </div>
         <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
            <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
                <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">${ingredient}</h1>
                <div class="d-inline-flex mb-lg-5">
                    <h5 class="m-0 text-white"><a class="text-white" href="DataForIndexPage?PageNumber=1">Home</a></h5>
                    <p class="m-0 text-white px-2">/</p>
                    <p class="m-0 text-white">Search</p>
                </div>
            </div>
        </div>
        
        <div class="container-fluid pt-5">
            <div class="container">
                <div class="section-title">
                    <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Menu & Pricing</h4>
                    <h1 class="display-4">${ingredient} Menu</h1>
                </div>

                <div class="row">
                    <div class="col-lg-6">
                        <c:forEach var="i" begin="0" step="1" end="${maxItems/2 - 1}">
                            <div class="row align-items-center mb-5">
                                <div class="col-4 col-sm-3">
                                    <a href="GetDrinkForBuyPage?drinkid=${List.get(i).getDrink_id()}">
                                        <img class="w-100 rounded-circle mb-3 mb-sm-0" src="${List.get(i).getImage()}" alt="">
                                    </a> 
                                    <h5 class="menu-price">$${List.get(i).getPrice()}</h5>
                                </div>
                                <div class="col-8 col-sm-9">
                                    <a href="GetDrinkForBuyPage?drinkid=${List.get(i).getDrink_id()}">
                                        <h4>${List.get(i).getDrink_name()}</h4>
                                    </a>
                                    <p class="m-0">${List.get(i).getDescription()}</p>
                                </div>
                            </div>
                        </c:forEach>                                        
                    </div>

                    <div class="col-lg-6">
                        <c:forEach var="i" begin="${maxItems/2}" step="1" end="${maxItems-1}">
                            <div class="row align-items-center mb-5">
                                <div class="col-4 col-sm-3">
                                    <a href="GetDrinkForBuyPage?drinkid=${List.get(i).getDrink_id()}">
                                        <img class="w-100 rounded-circle mb-3 mb-sm-0" src="${List.get(i).getImage()}" alt="">
                                    </a> 
                                    <h5 class="menu-price">$${List.get(i).getPrice()}</h5>
                                </div>
                                <div class="col-8 col-sm-9">
                                    <a href="GetDrinkForBuyPage?drinkid=${List.get(i).getDrink_id()}">
                                        <h4>${List.get(i).getDrink_name()}</h4>
                                    </a>
                                    <p class="m-0">${List.get(i).getDescription()}</p>
                                </div>
                            </div>
                        </c:forEach>                                        
                    </div>
                </div>
            </div>

            <!<!-- Pagination start -->
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <p class="page-link">|</p>
                </li>
                <c:forEach var="i" begin="1" step="1" end="${TotalPage}">  
                    <li class="page-item"><a class="page-link" href="FindDrinkByIngredient?PageNumber=${i}&find=${ingredient}">${i}</a></li>             
                    </c:forEach>
                <li class="page-item disabled">
                    <p class="page-link">|</p>
                </li>
            </ul>
            <!<!-- Pagination end -->
        </div>
        
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
