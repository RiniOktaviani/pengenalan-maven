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
        <style>
            body {
                padding-top: 40px;
                padding-bottom: 40px;
                background-color: green;
                color: white;
                font-family: sans-serif;
            }
            #index{
                height: 50px;
                width: 150px;
                font-size: 15px;
                font-style: bold;
                border-radius: 15px;
                background-color: yellow;
                position: center;
                vertical-align: bottom;
            }
            #index:hover{
                border-color: yellow;
                background-color: blueviolet;
            } 
            #cari{
                height: 30px;
                width: 100px;
                font-size: 15px;
                font-style: bold;
                border-radius: 15px;
                background-color: yellow;
                position: center;
                vertical-align: bottom;
            }
            #cari:hover{
                border-color: yellow;
                background-color: blueviolet; 
            }
            table {
                font-family: Arial, Helvetica, sans-serif;
                color: #666;
                text-shadow: 1px 1px 0px #fff;
                background: #eaebec;
                border: #ccc 1px solid;
            }

            table th {
                padding: 10px 30px;
                border-left:1px solid #e0e0e0;
                border-bottom: 1px solid #e0e0e0;
                background: #ededed;
            }

            table th:first-child{  
                border-left:none;  
            }

            table tr {
                text-align: center;
                padding-left: 20px;
            }

            table td:first-child {
                text-align: left;
                padding-left: 20px;
                border-left: 0;
            }

            table td {
                padding: 10px 30px;
                border-top: 1px solid #ffffff;
                border-bottom: 1px solid #e0e0e0;
                border-left: 1px solid #e0e0e0;
                background: #fafafa;
                background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
                background: -moz-linear-gradient(top, #fbfbfb, #fafafa);
            }

            table tr:last-child td {
                border-bottom: 0;
            }

            table tr:last-child td:first-child {
                -moz-border-radius-bottomleft: 3px;
                -webkit-border-bottom-left-radius: 3px;
                border-bottom-left-radius: 3px;
            }

            table tr:last-child td:last-child {
                -moz-border-radius-bottomright: 3px;
                -webkit-border-bottom-right-radius: 3px;
                border-bottom-right-radius: 3px;
            }

            table tr:hover td {
                background: #f2f2f2;
                background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
                background: -moz-linear-gradient(top, #f2f2f2, #f0f0f0);
            }
            #head{
                background-color: yellow;
            }
            h1{
                color: green;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                // Activate tooltips
                $('[data-toggle="tooltip"]').tooltip();

                // Filter table rows based on searched term
                $("#search").on("keyup", function () {
                    var term = $(this).val().toLowerCase();
                    $("table tbody tr").each(function () {
                        $row = $(this);
                        var name = $row.find("td:nth-child(3)").text().toLowerCase();
                        console.log(name);
                        if (name.search(term) < 0) {
                            $row.hide();
                        } else {
                            $row.show();
                        }
                    });
                });
            });
            function sq() {
                     var t = '${userDto.pasuser}';
                if (t == "user") {

                    document.getElementById("Mylist").children[1].style.display = "none";
                }
            }
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
                                    <!-- Menu Area -->
                                    <ul class="navbar-nav ml-auto" id="Mylist">
                                        <li class="nav-link">
                                            <c:url var="menuUrl" value="/menu.htm">        
                                            </c:url>
                                            <a href="${menuUrl}" class="nav-link" >Home<span class="sr-only">(current)</span></a>  
                                        </li>
                                        <li class="nav-item dropdown active">
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
                                            <a href="${bmiUrl}" class="nav-link" >Hitung BMI</a>  
                                        </li>
                                        <li class="nav-item">
                                            <c:url var="idealUrl" value="/ideal.htm">        
                                            </c:url>
                                            <a href="${idealUrl}" class="nav-link" >Hitung Berat Badan Ideal</a>  
                                        </li>
                                        <li class="nav-item">
                                            <c:url var="naikUrl" value="/naik.htm">        
                                            </c:url>
                                            <a href="${naikUrl}" class="nav-link" >Tips Menaikan Berat Badan</a>  
                                        </li>
                                        <li class="nav-item">
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
    </header><br><br><br><br><b<br><br><br>
        <!-- ***** Header Area End ***** -->
        <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/ok.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <div class="breadcumb-content">
                            <br><br>
                            <div class="medilife-cta-area">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="cta-content">

                                                <center><h5>DATA USER</h5></center>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- ***** Footer Area Start ***** -->
                            <footer class="footer-area section-padding-100">
                                <!-- Main Footer Area -->
                                <div class="main-footer-area">
                                    <div class="container-fluid">
                                        <div class="row">

                                            <input type="text" id="search" class="form-control" placeholder="Cari berdasarkan nama">
                                            <center>
                                                <c:url var="tambahDataUser" value="/doTambahDataUser.htm">        
                                                </c:url>
                                                <a href="${tambahDataUser}">Tambah</a>    
                                                <table border="1" width="600">
                                                    <thead>
                                                        <tr>
                                                            <th>No</th> 
                                                            <th>Kode User</th>            
                                                            <th>Nama User</th>            
                                                            <th>Username</th>
                                                            <th>Password</th>  
                                                            <th>Alamat</th>  
                                                            <th>No Telp</th>  
                                                            <th colspan="2">action</th>
                                                        </tr> 
                                                    </thead>
                                                    <c:set var="index" value="1"/>
                                                    <c:forEach var="listUser" items="${listUserDto}">
                                                        <tbody>
                                                            <tr>  
                                                                <td>${index}</td>
                                                                <td>${listUser.iduser}</td>
                                                                <td>${listUser.nmuser}</td>
                                                                <td>${listUser.ususer}</td>
                                                                <td>${listUser.pasuser}</td>
                                                                <td>${listUser.almtuser}</td>
                                                                <td>${listUser.notelp}</td>

                                                                <c:url var="deleteUser" value="/deleteDataUser.htm">
                                                                    <c:param name="iduser" value="${listUser.iduser}"/>
                                                                </c:url>
                                                                <c:url var="updateUser" value="/getDataUpdateUser.htm">
                                                                    <c:param name="iduser" value="${listUser.iduser}"/>
                                                                </c:url>
                                                                <td><a href="${deleteUser}">delete</a></td>
                                                                <td><a href="${updateUser}">update</a></td>
                                                            </tr>  
                                                        <tbody>
                                                            <c:set var="index" value="${index+1}"/>
                                                        </c:forEach>
                                                </table>

                                            </center>

                                        </div>
                                    </div>
                                </div>
                            </footer>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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
