<%-- 
    Document   : RegisterPage
    Created on : Sep 28, 2022, 10:02:17 PM
    Author     : Ho Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloudy Coffee / Register</title>
        <!--css Main -->
        <link rel="stylesheet" href="css/cssForRegister.css">
        <!-- font -->
        <link rel="stylesheet" href="fonts/fontsForRegister/material-icon/css/material-design-iconic-font.min.css"/>
    </head>
    <body>
        <div class="main">
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <form method="POST" action="" class="signup-form">
                            <h2 class="form-title">Create account</h2>

                            <div class="form-group">
                                <input type="text" class="form-input" name="name" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="name" id="name" placeholder="Your Phone"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="name" id="name" placeholder="Your Identity Number"/>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-input" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-input" name="password" id="password" placeholder="Password"/>
                                <span toggle="#password" class="zmdi zmdi-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-input" name="re_password" id="re_password" placeholder="Repeat your password"/>
                            </div>
                            <br>
                            <div class="form-group">
                                <input type="submit" name="submit" id="submit" class="form-submit" value="Sign up"/>
                            </div>
                        </form>
                        <p class="loginhere">
                            Have already an account ? <a href="LoginPage.jsp" class="loginhere-link">Login here</a>
                        </p>
                    </div>
                </div>
            </section>
        </div>
        <script src="js/jquery/jquery.min.js"></script>
        <script src="js/RegisterPageJS.js"></script>
    </body>
</html>
