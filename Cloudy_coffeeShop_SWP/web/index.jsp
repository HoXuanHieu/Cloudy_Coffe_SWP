<%-- 
    Document   : index
    Created on : Sep 12, 2022, 8:10:49 PM
    Author     : Ho Hieu
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
                <a href="index.jsp" class="navbar-brand px-lg-4 m-0">
                    <h1 class="m-1 display-5 text-uppercase text-white">Cloudy Coffee</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto p-4">
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        <a href="service.html" class="nav-item nav-link">Service</a>
                        <a href="Menu.jsp" class="nav-item nav-link">Menu</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                            <div class="dropdown-menu text-capitalize">
                                <a href="reservation.html" class="dropdown-item">Reservation</a>
                                <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            </div>
                        </div>
                        <a href="contact.html" class="nav-item nav-link">Contact</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Navbar End -->

        <!-- Carousel Start -->
        <div class="container-fluid p-0 mb-5">
            <div id="blog-carousel" class="carousel slide overlay-bottom" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="w-100" src="images/carousel-1.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <h1 class="display-1 text-white m-0">CLOUDY COFFEE</h1>
                            <BR>
                            <h2 class="text-primary font-weight-medium m-0">NOW OPENING</h2>

                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="w-100" src="images/carousel-2.jpg" alt="Image">
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <h1 class="display-1 text-white m-0">CLOUDY COFFEE</h1>
                            <BR>
                            <h2 class="text-primary font-weight-medium m-0">NOW OPENING</h2>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#blog-carousel" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#blog-carousel" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- Best Seller -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="section-title">
                    <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">BEST CHOICES</h4>
                    <h1 class="display-4">Best Seller</h1>
                </div>
                <div class="owl-carousel testimonial-carousel">
                    <div class="testimonial-item">
                        <div class="d-flex align-items-center mb-3">
                            <img class="img-fluid" src="images/testimonial-1.jpg" alt="">
                            <div class="ml-3">
                                <h4>Drink1</h4>
                                <i>Coffee</i>
                            </div>
                        </div>
                        <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                    </div>
                    <div class="testimonial-item">
                        <div class="d-flex align-items-center mb-3">
                            <img class="img-fluid" src="images/testimonial-2.jpg" alt="">
                            <div class="ml-3">
                                <h4>Client Name</h4>
                                <i>Profession</i>
                            </div>
                        </div>
                        <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                    </div>
                    <div class="testimonial-item">
                        <div class="d-flex align-items-center mb-3">
                            <img class="img-fluid" src="images/testimonial-3.jpg" alt="">
                            <div class="ml-3">
                                <h4>Client Name</h4>
                                <i>Profession</i>
                            </div>
                        </div>
                        <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                    </div>
                    <div class="testimonial-item">
                        <div class="d-flex align-items-center mb-3">
                            <img class="img-fluid" src="images/testimonial-4.jpg" alt="">
                            <div class="ml-3">
                                <h4>Client Name</h4>
                                <i>Profession</i>
                            </div>
                        </div>
                        <p class="m-0">Sed ea amet kasd elitr stet, stet rebum et ipsum est duo elitr eirmod clita lorem. Dolor tempor ipsum sanct clita</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->

        <!-- Service Start -->
        <div class="container-fluid pt-5">
            <div class="container">
                <div class="section-title">
                    <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Our Services</h4>
                    <h1 class="display-4">Fresh & Organic Beans</h1>
                </div>
                <div class="row">
                    <div class="col-lg-6 mb-5">
                        <div class="row align-items-center">
                            <div class="col-sm-5">
                                <img class="img-fluid mb-3 mb-sm-0" src="images/service-1.jpg" alt="">
                            </div>
                            <div class="col-sm-7">
                                <h4><i class="fa fa-truck service-icon"></i>Fastest Door Delivery</h4>
                                <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo. Guberg sea et et lorem dolor sed est sit
                                    invidunt, dolore tempor diam ipsum takima erat tempor</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-5">
                        <div class="row align-items-center">
                            <div class="col-sm-5">
                                <img class="img-fluid mb-3 mb-sm-0" src="images/service-2.jpg" alt="">
                            </div>
                            <div class="col-sm-7">
                                <h4><i class="fa fa-coffee service-icon"></i>Fresh Coffee Beans</h4>
                                <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo. Guberg sea et et lorem dolor sed est sit
                                    invidunt, dolore tempor diam ipsum takima erat tempor</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-5">
                        <div class="row align-items-center">
                            <div class="col-sm-5">
                                <img class="img-fluid mb-3 mb-sm-0" src="images/service-3.jpg" alt="">
                            </div>
                            <div class="col-sm-7">
                                <h4><i class="fa fa-award service-icon"></i>Best Quality Coffee</h4>
                                <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo. Guberg sea et et lorem dolor sed est sit
                                    invidunt, dolore tempor diam ipsum takima erat tempor</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-5">
                        <div class="row align-items-center">
                            <div class="col-sm-5">
                                <img class="img-fluid mb-3 mb-sm-0" src="images/service-4.jpg" alt="">
                            </div>
                            <div class="col-sm-7">
                                <h4><i class="fa fa-table service-icon"></i>Online Table Booking</h4>
                                <p class="m-0">Sit lorem ipsum et diam elitr est dolor sed duo. Guberg sea et et lorem dolor sed est sit
                                    invidunt, dolore tempor diam ipsum takima erat tempor</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->

        <!-- Menu Start -->
        <div class="container-fluid pt-5">
            <div class="container">
                <div class="section-title">
                    <h4 class="text-primary text-uppercase" style="letter-spacing: 5px;">Menu & Pricing</h4>
                    <h1 class="display-4">Competitive Pricing</h1>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <c:forEach var="i" begin="0" step="1" end="2">
                            <div class="row align-items-center mb-5">
                                <div class="col-4 col-sm-3">
                                    <img class="w-100 rounded-circle mb-3 mb-sm-0" src="${List.get(i).getImage()}" alt="">
                                    <h5 class="menu-price">$${List.get(i).getPrice()}</h5>
                                </div>
                                <div class="col-8 col-sm-9">
                                    <h4>${List.get(i).getDrink_name()}</h4>
                                    <p class="m-0">${List.get(i).getDescription()}</p>
                                </div>
                            </div>
                        </c:forEach>                                        
                    </div>
                    
                    
                     <div class="col-lg-6">
                        <c:forEach var="i" begin="3" step="1" end="5">
                            <div class="row align-items-center mb-5">
                                <div class="col-4 col-sm-3">
                                    <img class="w-100 rounded-circle mb-3 mb-sm-0" src="${List.get(i).getImage()}" alt="">
                                    <h5 class="menu-price">$${List.get(i).getPrice()}</h5>
                                </div>
                                <div class="col-8 col-sm-9">
                                    <h4>${List.get(i).getDrink_name()}</h4>
                                    <p class="m-0">${List.get(i).getDescription()}</p>
                                </div>
                            </div>
                        </c:forEach>                                        
                    </div>
                </div>
            </div>
        </div>
        <!-- Menu End -->


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
                                <p class="text-white">Lorem justo clita erat lorem labore ea, justo dolor lorem ipsum ut sed eos,
                                    ipsum et dolor kasd sit ea justo. Erat justo sed sed diam. Ea et erat ut sed diam sea</p>
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
                                <form class="mb-5">
                                    <div class="form-group">
                                        <input type="text" class="form-control bg-transparent border-primary p-4" placeholder="Name"
                                               required="required" />
                                    </div>
                                    <div class="form-group">
                                        <input type="email" class="form-control bg-transparent border-primary p-4" placeholder="Email"
                                               required="required" />
                                    </div>
                                    <div class="form-group">
                                        <div class="date" id="date" data-target-input="nearest">
                                            <input type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input" placeholder="Date" data-target="#date" data-toggle="datetimepicker"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="time" id="time" data-target-input="nearest">
                                            <input type="text" class="form-control bg-transparent border-primary p-4 datetimepicker-input" placeholder="Time" data-target="#time" data-toggle="datetimepicker"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <select class="custom-select bg-transparent border-primary px-4" style="height: 49px;">
                                            <option selected>Person</option>
                                            <option value="1">Person 1</option>
                                            <option value="2">Person 2</option>
                                            <option value="3">Person 3</option>
                                            <option value="3">Person 4</option>
                                        </select>
                                    </div>

                                    <div>
                                        <button class="btn btn-primary btn-block font-weight-bold py-3" type="submit">Book Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Reservation End -->



        <!-- Footer Start -->
        <div class="container-fluid footer text-white mt-5 pt-5 px-0 position-relative overlay-top">
            <div class="row mx-0 pt-5 px-sm-3 px-lg-5 mt-4">
                <div class="col-lg-3 col-md-6 mb-5">
                    <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Get In Touch</h4>
                    <p><i class="fa fa-map-marker-alt mr-2"></i>123 Street, New York, USA</p>
                    <p><i class="fa fa-phone-alt mr-2"></i>+012 345 67890</p>
                    <p class="m-0"><i class="fa fa-envelope mr-2"></i>info@example.com</p>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Follow Us</h4>
                    <p>Amet elitr vero magna sed ipsum sit kasd sea elitr lorem rebum</p>
                    <div class="d-flex justify-content-start">
                        <a class="btn btn-lg btn-outline-light btn-lg-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-lg btn-outline-light btn-lg-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-lg btn-outline-light btn-lg-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-lg btn-outline-light btn-lg-square" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Open Hours</h4>
                    <div>
                        <h6 class="text-white text-uppercase">Monday - Friday</h6>
                        <p>8.00 AM - 8.00 PM</p>
                        <h6 class="text-white text-uppercase">Saturday - Sunday</h6>
                        <p>2.00 PM - 8.00 PM</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h4 class="text-white text-uppercase mb-4" style="letter-spacing: 3px;">Newsletter</h4>
                    <p>Amet elitr vero magna sed ipsum sit kasd sea elitr lorem rebum</p>
                    <div class="w-100">
                        <div class="input-group">
                            <input type="text" class="form-control border-light" style="padding: 25px;" placeholder="Your Email">
                            <div class="input-group-append">
                                <button class="btn btn-primary font-weight-bold px-3">Sign Up</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid text-center text-white border-top mt-4 py-4 px-sm-3 px-md-5" style="border-color: rgba(256, 256, 256, .1) !important;">
                <p class="mb-2 text-white">Copyright &copy; <a class="font-weight-bold" href="#">Domain</a>. All Rights Reserved.</a></p>
                <p class="m-0 text-white">Designed by <a class="font-weight-bold" href="https://htmlcodex.com">HTML Codex</a></p>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


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