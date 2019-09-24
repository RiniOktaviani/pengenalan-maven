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
        <style type="text/css">
            .form-style-5{
                max-width: 500px;
                padding: 10px 20px;
                background: #f4f7f8;
                margin: 10px auto;
                padding: 20px;
                background: #f4f7f8;
                border-radius: 8px;
                font-family: Georgia, "Times New Roman", Times, serif;
            }
            .form-style-5 fieldset{
                border: none;
            }
            .form-style-5 legend {
                font-size: 1.4em;
                margin-bottom: 10px;
            }
            .form-style-5 label {
                display: block;
                margin-bottom: 8px;
            }
            .form-style-5 input[type="text"],
            .form-style-5 input[type="date"],
            .form-style-5 input[type="datetime"],
            .form-style-5 input[type="email"],
            .form-style-5 input[type="number"],
            .form-style-5 input[type="search"],
            .form-style-5 input[type="time"],
            .form-style-5 input[type="url"],
            .form-style-5 textarea,
            .form-style-5 select {
                font-family: Georgia, "Times New Roman", Times, serif;
                background: rgba(255,255,255,.1);
                border: none;
                border-radius: 4px;
                font-size: 15px;
                margin: 0;
                outline: 0;
                padding: 10px;
                width: 100%;
                box-sizing: border-box; 
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box; 
                background-color: #e8eeef;
                color:#8a97a0;
                -webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
                box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
                margin-bottom: 30px;
            }
            .form-style-5 input[type="text"]:focus,
            .form-style-5 input[type="date"]:focus,
            .form-style-5 input[type="datetime"]:focus,
            .form-style-5 input[type="email"]:focus,
            .form-style-5 input[type="number"]:focus,
            .form-style-5 input[type="search"]:focus,
            .form-style-5 input[type="time"]:focus,
            .form-style-5 input[type="url"]:focus,
            .form-style-5 textarea:focus,
            .form-style-5 select:focus{
                background: #d2d9dd;
            }
            .form-style-5 select{
                -webkit-appearance: menulist-button;
                height:35px;
            }
            .form-style-5 .number {
                background: #1abc9c;
                color: #fff;
                height: 30px;
                width: 30px;
                display: inline-block;
                font-size: 0.8em;
                margin-right: 4px;
                line-height: 30px;
                text-align: center;
                text-shadow: 0 1px 0 rgba(255,255,255,0.2);
                border-radius: 15px 15px 15px 0px;
            }

            .form-style-5 input[type="submit"],
            .form-style-5 input[type="button"]
            {
                position: relative;
                display: block;
                padding: 19px 39px 18px 39px;
                color: #FFF;
                margin: 0 auto;
                background: #1abc9c;
                font-size: 18px;
                text-align: center;
                font-style: normal;
                width: 100%;
                border: 1px solid #16a085;
                border-width: 1px 1px 3px;
                margin-bottom: 10px;
            }
            .form-style-5 input[type="submit"]:hover,
            .form-style-5 input[type="button"]:hover
            {
                background: #109177;
            }
            h6{
                font-family: italic;
            }
        </style>
    </head>
    <body>
        <!-- Single Hero Slide -->
        <div class="single-hero-slide bg-img bg-overlay-white" style="background-image: url(img/bg-img/desain-background-gambar-soft-keren-biru-muda.jpg);">
            <center><br><br>
                <div class="col-12 col-sm-6 col-xl-3">
                    <div class="footer-widget-area">
                        <div class="widget-title">
                            <h3>LOGIN ADMIN</h3><br><br><br>
                        </div>
                        <div class="footer-contact-form" >
                            <form action="doLogin.htm" modelAttribut="formDto" method="POST">
                                <center> 
                                    <table>
                                        <tr>
                                            <td>
                                                <input type="text"  path="usadmin" name="usadmin" class="form-control border-top-0 border-right-0 border-left-0"  placeholder="Masukan Username">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="password"  path="pasadmin" name="pasadmin" class="form-control border-top-0 border-right-0 border-left-0"  placeholder="Masukan Pasword">
                                            </td>
                                        </tr>
                                        <td>
                                            <button  type="submit" class="btn medilife-btn"  >LOGIN</button>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td><br><br>
                                                <c:url var="tambahDataAdmin" value="/doTambahDataAdmin.htm">        
                                                </c:url>
                                                <a href="${tambahDataAdmin}">Daftar Admin</a> 

                                            <td>
                                        </tr>
                                        <table>
                                            </center>
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
