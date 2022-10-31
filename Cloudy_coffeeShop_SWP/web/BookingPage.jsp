<%-- 
    Document   : BookingPage
    Created on : Oct 17, 2022, 2:24:15 PM
    Author     : Ho Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloudy Coffee / Menu</title>
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
                            <a href="" class="nav-item nav-link">Your Order</a>
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
                <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Menu</h1>
                <div class="d-inline-flex mb-lg-5">
                    <h5 class="m-0 text-white"><a class="text-white" href="DataForIndexPage?PageNumber=1">Home</a></h5>
                    <p class="m-0 text-white px-2">/</p>
                    <p class="m-0 text-white">Menu</p>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <!-- Reservation Start -->
        <div class="container-fluid my-5">
            <div class="container">
                <div class="section-title">
                    <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">BOOKING</h4>
                    <h1 class="display-4">Booking Your Table</h1>
                </div>
                <div class="reservation position-relative overlay-top overlay-bottom">
                    <div class="row align-items-center">
                        <div class="col-lg-6 my-5 my-lg-0">
                            <div class="p-5">
                                <div class="mb-4">
                                    <h1 class="display-3 text-primary">30% OFF</h1>
                                    <h1 class="text-white">For Online Reservation</h1>
                                </div>
                                <p class="text-white">Lorem justo clita erat lorem labore ea, justo dolor lorem ipsum ut sed eos, ipsum et dolor kasd sit ea justo. Erat justo sed sed diam. Ea et erat ut sed diam sea</p>
                                <ul class="list-inline text-white m-0">
                                    <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                                    <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                                    <li class="py-2"><i class="fa fa-check text-primary mr-3"></i>Lorem ipsum dolor sit amet</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="text-center p-5" style="background: rgba(51, 33, 29, .8);">
                                <h1 class="text-white mb-4 mt-5">Book Your Table</h1>
                                <form action="BookingServlet" method="POST" class="mb-5">
                                    <c:if test="${empty Email}">
                                        <div class="form-group">
                                            <input type="text" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Name" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Email" required="required" />
                                        </div>
                                    </c:if>
                                    <c:if test="${not empty Email}">
                                        <div class="form-group">
                                            <input type="text" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Name" value="${Name}" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Email" value="${Email}" required="required" />
                                        </div>
                                    </c:if>
                                    <div class="form-group">
                                        <div class="date" id="date" data-target-input="nearest">
                                            <input name="date" type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input text-white" placeholder="Date" data-target="#date" data-toggle="datetimepicker"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <select name="time" class="custom-select bg-transparent border-primary px-4" style="height: 49px;" required>                                    
                                            <option value="06:00:00">06:00 AM</option>
                                            <option value="06:30:00">06:30 AM</option>
                                            <option value="07:00:00">07:00 AM</option>
                                            <option value="07:30:00">07:30 AM</option>
                                            <option value="08:00:00">08:00 AM</option>
                                            <option value="08:30:00">08:30 AM</option>
                                            <option value="09:00:00">09:00 AM</option>
                                            <option value="09:30:00">09:30 AM</option>
                                            <option value="10:00:00">10:00 AM</option>
                                            <option value="10:30:00">10:30 AM</option>
                                            <option value="11:00:00">11:00 AM</option>
                                            <option value="11:30:00">11:30 AM</option>
                                            <option value="12:00:00">00:00 AM</option>
                                            <option value="12:30:00">00:30 PM</option>
                                            <option value="13:00:00">01:00 PM</option>
                                            <option value="13:30:00">01:30 PM</option>
                                            <option value="14:00:00">02:00 PM</option>
                                            <option value="14:30:00">02:30 PM</option>
                                            <option value="15:00:00">03:00 PM</option>
                                            <option value="15:30:00">03:30 PM</option>
                                            <option value="16:00:00">04:00 PM</option>
                                            <option value="16:30:00">04:30 PM</option>
                                            <option value="17:00:00">05:00 PM</option>
                                            <option value="17:30:00">05:30 PM</option>
                                            <option value="18:00:00">06:00 PM</option>
                                            <option value="18:30:00">06:30 PM</option>
                                            <option value="19:00:00">07:00 PM</option>
                                            <option value="19:30:00">07:30 PM</option>
                                            <option value="20:00:00">08:00 PM</option>
                                            <option value="20:30:00">08:30 PM</option>
                                            <option value="21:00:00">09:00 PM</option>
                                            <option value="21:30:00">09:30 PM</option>
                                        </select>
                                    </div>
                                    <!--                            <div class="form-group">
                                                                    <div class="time" id="time" data-target-input="nearest">
                                                                        <input type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input text-white" placeholder="Time" data-target="#time" data-toggle="datetimepicker"/> 
                                                                    </div>
                                                                </div>-->
                                    <div class="form-group">
                                        <input name="people" type="number" class="form-control bg-transparent border-primary p-4 text-white" placeholder="Number Of Person" required="required" min="1" max ="20">                         
                                    </div>
                                    <div>
                                        <button class="btn btn-primary btn-block font-weight-bold py-3" type="submit" name="action" value="Booking">Book Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Reservation End -->
        
         <!-- JavaScript Libraries -->
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
