<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="style.css">
<link rel="stylesheet" type="text/css" media="screen" href="img/core-img/favicon.ico">

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
         <script type="text/javascript">
            function sq(){
                var t='${userDto.pasuser}';
                if(t=="user"){
                    
                document.getElementById("Mylist").children[1].style.display="none";
                }
            }
        </script>
        <!-- Title  -->
        <title>Projek Uts Rini</title>
    </head>

    <body>
        <!-- Preloader -->
        <div id="preloader">
            <div class="medilife-load"></div>
        </div>

        <!-- ***** Header Area Start ***** -->
    <header class="header-area">
        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 h-100">

                        <div class="h-100 d-md-flex justify-content-between align-items-center" >
                            <p>Welcome to <span>Rini</span>BeHealthy</p>
                            
                        </div>
                        </center
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Header Area -->
        <div class="main-header-area" id="stickyHeader">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12 h-100">
                        <div class="main-menu h-100">
                            <nav class="navbar h-100 navbar-expand-lg">
                                <!-- Logo Area  -->
                                <a class="navbar-brand" href="index.html"><img src="img/core-img/download.png" width="80" height="80" alt="Logo"></a>

                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#medilifeMenu" aria-controls="medilifeMenu" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>

                                <div class="collapse navbar-collapse" id="medilifeMenu">
                                    <!-- Menu Area -->
                                    <ul class="navbar-nav ml-auto active">
                                        <li class="nav-item dropdown active">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">LOGIN</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <c:url var="logUrl" value="/loginAdmin.htm">        
                                                </c:url>
                                                <c:url var="logUr2" value="/loginUser.htm">        
                                                </c:url>
                                                <a href="${logUrl}" class="dropdown-item" >ADMIN</a> 
                                               
                                                <a class="dropdown-item" href="${logUr2}">USER</a>
                                            </div>
                                        </li>

                                    </ul>
                                    <!-- Appointment Button -->

                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Hero Area Start ***** -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/hero1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">BE HEALTHY<br>KARENA MENJAGA LEBIH BAIK DARIPADA MENGOBATI</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">Mengetahui status kesehatan di tinjau dari berat badan dan tinggi badan, Tanpa harus Konsultasi kedokter.</h6>

                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <  <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/0_H7MrXO2XS4Hu0aSx.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">BE HEALTHY<br>KARENA MENJAGA LEBIH BAIK DARIPADA MENGOBATI</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">Mengetahui status kesehatan di tinjau dari berat badan dan tinggi badan, Tanpa harus Konsultasi kedokter.</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/123432_makanan.JPG);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h2 data-animation="fadeInUp" data-delay="100ms">BE HEALTHY<br>KARENA MENJAGA LEBIH BAIK DARIPADA MENGOBATI</h2>
                                <h6 data-animation="fadeInUp" data-delay="400ms">Mengetahui status kesehatan di tinjau dari berat badan dan tinggi badan, Tanpa harus Konsultasi kedokter.</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Hero Area End ***** -->


    <!-- ***** Gallery Area Start ***** -->
    <div class="medilife-gallery-area owl-carousel">
        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="img/bg-img/g1.jpg" alt="">
            <div class="view-more-btn">
                <a href="img/bg-img/g1.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>
        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="img/bg-img/g2.jpg" alt="">
            <div class="view-more-btn">
                <a href="img/bg-img/g2.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>
        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="img/bg-img/g3.jpg" alt="">
            <div class="view-more-btn">
                <a href="img/bg-img/g3.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>

        <!-- Single Gallery Item -->
        <div class="single-gallery-item">
            <img src="img/bg-img/g4.jpg" alt="">
            <div class="view-more-btn">
                <a href="img/bg-img/g4.jpg" class="btn gallery-img">See More +</a>
            </div>
        </div>
    </div>
    <!-- ***** Gallery Area End ***** -->




    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

</body>

</html>