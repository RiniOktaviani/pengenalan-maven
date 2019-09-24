<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
        <script type="text/javascript">
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
                                    var validate = $('#user').validationEngine('validate'); // id form
                                    if (validate) {
                                        $("#user").submit();
                                    } else {
                                        return false;
                                    }
                                }
                        );
                    }
            );





        </script>
    </head>
    <body onload="sq()">
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
                                        <li class="nav-item ">
                                            <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
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


        <div class="medilife-cta-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="cta-content">
                            <center><h5>INSERT DATA USER</h5></center>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <center>


            <div class="col-12 col-lg-8">
                <div class="contact-form">

                    <form:form id="user" action="saveUser.htm" modelAttribute="userDto" method="POST">
                        <center><table align="center">
                                <tr>
                                <div class="form-group">
                                    <td>Id User </td>
                                    <td>:</td>
                                    <td><form:input path="iduser"  class="validate validate[required, minSize[3], custom[onlyLetter], custom[noSpace]] form-control"/></td>
                                </div>

                                </tr>        
                                <tr>
                                    <td>Nama User </td>
                                    <td>:</td>
                                    <td><form:input path="nmuser" id="nm" class="validate validate[required, maxSize[100]] form-control"/></td>
                                </tr>
                                <tr>
                                    <td>Username</td>
                                    <td>:</td>
                                    <td><form:input path="ususer" class="validate validate[required, maxSize[100]] form-control"/></td>            
                                </tr>
                                <tr>
                                    <td>Password</td>
                                    <td>:</td>
                                    <td><form:input path="pasuser" class="validate validate[required, maxSize[100]] form-control"/></td>            
                                </tr>
                                <tr>
                                    <td>Alamat</td>
                                    <td>:</td>
                                    <td><form:input path="almtuser" class="validate validate[required, maxSize[100]] form-control"/></td>            
                                </tr>
                                <tr>
                                    <td>No Telepon</td>
                                    <td>:</td>
                                    <td><form:input path="notelp" class="validate validate[required, maxSize[100]] form-control"/></td>            
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <form:button type="submit" id="save" class="btn medilife-btn">Save</form:button>
                                        </td>
                                    </tr>
                                </table>
                            </center>
                    </form:form>
                </div>
            </div>
        </center>



        <!-- jQuery (Necessary for All JavaScript Plugins) 
        <script src="js/jquery/jquery-2.2.4.min.js"></script>-->
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
