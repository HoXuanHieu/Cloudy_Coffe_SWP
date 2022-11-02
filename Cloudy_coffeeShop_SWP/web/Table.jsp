<%-- 
    Document   : Table
    Created on : Oct 24, 2022, 1:44:48 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Cloudy Coffee / Table booking</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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

        <link rel=stylesheet" href="css/cssForTable.css" />
        <link href="css/style.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navbar Start -->

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
                        <a href="BookingPage.jsp" class="nav-item nav-link active">Booking</a>
                        <a href="GetMenuForEachPage?PageNumber=1" class="nav-item nav-link ">Menu</a>
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


        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
            <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
                <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Choose Table</h1>
                <div class="d-inline-flex mb-lg-5">
                    <h5 class="m-0 text-white"><a class="text-white" href="DataForIndexPage?PageNumber=1">Home</a></h5>
                    <p class="m-0 text-white px-2">/</p>
                    <p class="m-0 text-white">Choose Table</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Booking table Start -->
        <div class="container-fluid my-5 ChooseTable">
            <div class="container">
                <div class="section-title">
                    <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">BOOKING</h4>
                    <h1 class="display-4">Choose Your Table</h1>
                </div>
                <ul class="showcase">
                    <li>
                        <div class="table"></div>
                        <small>N/A</small>
                    </li>
                    <li>
                        <div class="table selected"></div>
                        <small>Selected</small>
                    </li>
                    <li>
                        <div class="table occupied"></div>
                        <small>Ocuppied</small>
                    </li>
                </ul>
                <form action="BookingServlet" method="POST" onsubmit="return check()" >
                    <input id="date" type="hidden" name="date" value='${requestScope.date}'/>
                    <input id="time" type="hidden" name="time" value='${requestScope.time}'/>
                    <input id="people" type="hidden" name="people" value='${requestScope.people}'/>
                    <input id="information" type="hidden" name="information" value='' />
                    <div class="tableChosse ">
                        <c:set var="tables" value="${requestScope.tables}"/>
                        <c:forEach var="i" items="${tables}" varStatus="count">
                            <c:choose>
                                <c:when test="${i.getCheck_Available() == 0}">
                                    <button style="background-color: white;" id="${i.getTable_id()}" type="button" onclick="chooseTable(this.id)" name="${i.getCheck_Available()}" value="${i.getTable_id()}" disabled>${count.count}</button>
                                </c:when>
                                <c:otherwise>
                                    <button id="${i.getTable_id()}" type="button" onclick="chooseTable(this.id)" name="${i.getCheck_Available()}" value="${i.getTable_id()}">${count.count}</button>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <button id="action" style="margin-left: 450px; padding: 0;" name="action" value="ChooseTable">Choose Table</button>
                    </div>
                </form>
            </div>         
        </div>

        <style>
            @import url('https://fonts.googleapis.com/css?family=Lato&display=swap');
            *{
                box-sizing: border-box;
            }
            .ChooseTable
            {
                background-color: #FFFBF2;
                display: flex;
                flex-direction: column;
                color: white;
                align-items: center;
                justify-content: center;
                height: 100vh;
                font-family: 'Lato', 'sans-serif';
            }
            .table
            {
                background-color: #614504;
                height: 40px;
                width: 120px;
                margin: 15px;
                font-family: 'Lato', 'sans-serif';
                color: white;
                font-size: 14px;
                margin-left: 10px;
                padding: 10px 50px 10px 50px;               
            }
            .row
            {
                display: flex;
            }
            .menu-container select {
                background-color: rgba(0, 0, 0, 0.1);
                border: 0;
                border-radius: 5px;
                font-size: 14px;
                margin-left: 10px;
                padding: 5px 15px 5px 15px;
                -moz-appearance: none;
                -webkit-appearance: none;
                appearance: none;
            }
            .table.selected
            {
                background-color: #765852;
            }
            .table.occupied
            {
                background-color: #fff;
            }
        
            .table:not(.occupied):hover
            {
                cursor: pointer;
                transform: scale(1.2);
            }
            .showcase .table.table:not(.occupied):hover
            {
                cursor: default;
                transform: scale(1);
            }
            .showcase {
                background-color: rgba(0, 0, 0, 0.1);
                padding: 5px 10px;
                border-radius: 5px;
                font-size: 20px;
                color: #111;
                list-style-type: none;
                display: flex;
                justify-content: space-between;
                font-style: bold;
            }
            .showcase li {
                display: flex;
                align-items: center;
                justify-content: center;
                margin: 0 10px;
            }
            .showcase li small {
                margin-left: 10px;
            }
            .tableChosse
            {
                margin: auto;
                width: 55%;
                margin-bottom: 30px;
            }
            p.text {
                margin: 5px 0;
                font-size: 80px;
                color: #111;
                font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            }
            button {
                background-color: #614504;
                height: 40px;
                width: 120px;
                margin: 15px;
                font-family: 'Lato', 'sans-serif';
                color: white;
                font-size: 14px;
                margin-left: 10px;
                padding: 10px 50px 10px 50px;
            }
            button:hover {
                cursor: default;
                transform: scale(1.2);
            }
            input {
                background-color: #614504;
                height: 40px;
                width: 120px;
                margin: 15px;
                font-family: 'Lato', 'sans-serif';
                color: white;
                font-size: 14px;
                margin-left: 10px;
                padding: 10px 50px 10px 50px;
                text-decoration: none;
            }
            input:hover {
                cursor: default;
                transform: scale(1.2);
            }
        </style>

        <script src="js/TableJS.js"></script>
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
