<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            var tinggi, berat, keterangan, bmi;
            function hitung() {
                tinggi = parseFloat(document.getElementById("ipt_t").value);
                tinggi /= 100;
                berat = parseFloat(document.getElementById("ipt_b").value);
                bmi = berat / (tinggi * tinggi);

                if (bmi > 27) {
                    keterangan = "Gemuk, Kelebihan berat badan tingkat berat";
                } else if ((bmi >= 25.1) & (bmi <= 27)) {
                    keterangan = "Gemuk, Kelebihan berat badan tingkat ringan";
                } else if ((bmi >= 18.5) & (bmi <= 25)) {
                    keterangan = "Normal";
                } else if ((bmi >= 17) & (bmi <= 18.4)) {
                    keterangan = "Kurus, Kekurangan berat badan tingkat ringan";
                } else {
                    keterangan = "Kurus, Kekurangan berat badan tingkat berat";
                }
                document.getElementById('bmi').innerHTML = "Hasil perhitungan BMI : " + bmi.toFixed(1);
                document.getElementById('keterangan').innerHTML = keterangan;
            }
            function sq() {
                var t = '${userDto.pasuser}';
                if (t == "user") {

                    document.getElementById("Mylist").children[1].style.display = "none";
                }
            }

            $(document).ready(
                    function () {
                        $("#save").click(
                                function (evt) { //id tombol submit
                                    evt.preventDefault();
                                    var validate = $('#bmi').validationEngine('validate'); // id form
                                    if (validate) {
                                        $("#bmi").submit();
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
                                        <li class="nav-item active">
                                            <c:url var="bmiUrl" value="/bmi.htm">        
                                            </c:url>
                                            <a href="${bmiUrl}" class="nav-link " >Hitung BMI</a>  
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
    </header><br><br><br><br>
    <!-- ***** Header Area End ***** -->
    <!-- ***** Breadcumb Area Start ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/64833.jpg);">
        <div class="container h-50">
            <div class="row h-50 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <center><br><br><br><br><br><br>
                            <div class="footer-widget-area">
                                <div class="widget-title">
                                    <h3 class="breadcumb-title">Hitung BMI</h3>

                                    <div class="footer-contact-form">
                                      
                                        <table>
                                            <tbody>

                                                <tr>
                                                    <td><input type="text" id="ipt_t" class="form-control border-top-0 border-right-0 border-left-0 " placeholder="Tinggi Badan(cm)" align="center"></td>
                                                </tr>

                                                <tr>
                                                    <td><input type="text" id="ipt_b" class="form-control border-top-0 border-right-0 border-left-0" placeholder="Berat Badan(kg)"></td>
                                                </tr>
                                                <tr>
                                                    <td><button onclick="hitung()" class="btn medilife-btn" id="save">Hitung</button></td>
                                                </tr>
                                            </tbody><br>
                                            <tfoot id="clr" >
                                                <tr>
                                                    <td id="bmi" style="font-color:white" >Hasil perhitungan BMI :</td>
                                                </tr>
                                                <tr>
                                                    <td style="font-color:white">Keterangan :</td>
                                                </tr>
                                                <tr>
                                                    <td id="keterangan" style="font-color:white"></td>
                                                </tr>		
                                            </tfoot>
                                        </table>
                                       
                                    </div>
                                </div> 
                            </div> 
                    </div> 

                    </center>

                </div>
            </div>
        </div>
    </div>
</section>


<!-- jQuery (Necessary for All JavaScript Plugins) -->
<!--<script src="js/jquery/jquery-2.2.4.min.js"></script>-->
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
