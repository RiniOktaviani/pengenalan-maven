<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="style.css">
<link rel="stylesheet" type="text/css" media="screen" href="img/core-img/favicon.ico">


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                             <c:url var="exitUrl" value="/exit.htm"></c:url>
                            <a  href="${exitUrl}"><i class="fa fa-sign-out fa-3x"></i> LOGOUT </a>
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
                                    <ul class="navbar-nav ml-auto" id="Mylist">
                                        <li class="nav-item">
                                            <c:url var="menuUrl" value="/menu.htm">        
                                            </c:url>
                                            <a href="${menuUrl}" class="nav-link" >Home<span class="sr-only">(current)</span></a>  
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Kelola Data</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                               <c:url var="tabelAdminUrl" value="/tabelAdmin.htm">        
                                                </c:url>
                                                <a class="dropdown-item" href="${tabelAdminUrl}">Admin</a>
                                                <c:url var="tabelUserUrl" value="/tabelUser.htm">        
                                                </c:url>
                                                <a class="dropdown-item" href="${tabelUserUrl}">User</a>
                                            </div>
                                        </li>
                                        <li class="nav-item active">
                                            <c:url var="tentangUrl" value="/tentang.htm">        
                                            </c:url>
                                            <a href="${tentangUrl}" class="nav-link" >Tentang Aplikasi</a>  
                                        </li>
                                        <li class="nav-item">
                                            <c:url var="bmiUrl" value="/bmi.htm">        
                                            </c:url>
                                            <a href="${bmiUrl}" class="nav-link" >Hitung BMI</a>  
                                        </li>
                                        <li class="nav-item">
                                            <c:url var="idealUrl" value="/ideal.htm">        
                                            </c:url>
                                            <a href="${idealUrl}" class="nav-link" >Hitung Berat Ideal</a>  
                                        </li>
                                        <li class="nav-item">
                                            <c:url var="naikUrl" value="/naik.htm">        
                                            </c:url>
                                            <a href="${naikUrl}" class="nav-link" >Tips Menaikan Berat Badan</a>  
                                        </li>
                                        <li  class="nav-item ">
                                            <c:url var="turunUrl" value="/turun.htm">        
                                            </c:url>
                                            <a href="${turunUrl}" class="nav-link" >Tips Menurunkan Berat Badan</a>  
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

    <!-- ***** Breadcumb Area Start ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/64833.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">BE HEALTHY</h3>
                        <p><h3>Tentang Aplikasi</h3> </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Breadcumb Area End ***** -->
      <!-- ***** Features Area Start ***** -->
    <div class="medilife-features-area section-padding-100">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-lg-6">
                    <div class="features-content">
                        <h2>Projek UTS Aplikasi mengetahui kesehatan ditinjau dari tinggi dan berat badan.</h2>
                        <p>Aplikasi ini dibuat untuk syarat penilaian UTS Pelatihan Java lanjutan. Dalam Aplikasi ini terdapat dua jenis hak akses yakni User dan Admin, bedanya Admin dapat mengelola data user. Terdapat beberapa fitur yang bisa dijalankan Utamanya fitur perhitungan berat badan. Selamat mencoba aplikasi ini :):):)</p>
                       
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="features-thumbnail">
                        <img src="img/bg-img/IMG-20181202-WA0005.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Features Area End ***** -->
    
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
