<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="js/validation/css/validationEngine.jquery.css">
<script type="text/javascript" src="js/validation/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="js/validation/jquery.validationEngine.js"></script>



<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" media="screen" href="style.css">
        <link rel="stylesheet" type="text/css" media="screen" href="img/core-img/favicon.ico">

        <title>JSP Page</title>
        <style>
            body {
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: green;
                color: white;
                font-family: sans-serif;
            }
        </style>
        <script>
            function sq() {
                var t = '${userDto.pasuser}';
                if (t == "user") {

                    document.getElementById("Mylist").children[1].style.display = "none";
                }
            }
            function hitung() {
                var tinggi, hasil, ideal;
                var combo = document.getElementById("form").kategori.value;
                tinggi = parseFloat(document.getElementById("tinggi").value);
                tinggi -= 100;


                if (combo == "p") {
                    ideal = tinggi - (tinggi * 0.1);

                } else if (combo == "l") {
                    ideal = tinggi - (tinggi * 0.15);


                }
                document.getElementById('hasil').innerHTML = "Berat Ideal : " + ideal.toFixed(1) + " " + "kg";

            }
             $(document).ready(
                    function () {
                        $("#save").click(
                                function (evt) { //id tombol submit
                                    evt.preventDefault();
                                    var validate = $('#form').validationEngine('validate'); // id form
                                    if (validate) {
                                        $("#form").submit();
                                    } else {
                                        return false;
                                    }
                                }
                        );
                    }
            );



        </script>
    </head>
    <body onload="sq();">
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
                                        <li class="nav-item">
                                            <c:url var="tentangUrl" value="/tentang.htm">        
                                            </c:url>
                                            <a href="${tentangUrl}" class="nav-link" >Tentang Aplikasi</a>  
                                        </li>
                                        <li class="nav-item">
                                            <c:url var="bmiUrl" value="/bmi.htm">        
                                            </c:url>
                                            <a href="${bmiUrl}" class="nav-link " >Hitung BMI</a>  
                                        </li>
                                        <li class="nav-item active">
                                            <c:url var="idealUrl" value="/ideal.htm">        
                                            </c:url>
                                            <a href="${idealUrl}" class="nav-link " >Hitung Berat Ideal</a>  
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
    </header><br><br><br><br>
    <!-- Single Hero Slide -->
    <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/images.jpg);">
        <center><br><br><br><br>
            <div class="col-12 col-sm-6 col-xl-3">
                <div class="footer-widget-area">
                    <div class="widget-title">
                        <h3 class="breadcumb-title">Hitung Berat Ideal</h3>
                    </div>
                    <div class="footer-contact-form">
                        <form id="form" name="form">
                            <select class="form-control border-top-0 border-right-0 border-left-0" id="kategori">
                                <option>Pilih Jenis Kelamin</option>
                                <option value="p" >Perempuan</option>
                                <option value="l">Laki-Laki</option>
                            </select>
                            <input type="text" class=" form-control border-top-0 border-right-0 border-left-0  " id="tinggi" placeholder="Tinggi Badan (cm)">
                            <input type="submit"  class="btn medilife-btn" onclick="hitung()" id="save" value="Hitung"/>
                            <br><br><label id="hasil"></label>
                        </form>
                    </div>
                </div>
            </div>
        </center>
    </div>
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="hero-slides-content">   
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
<!--     Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

</body>
</html>
