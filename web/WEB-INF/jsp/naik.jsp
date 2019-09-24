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
         <script type="text/javascript">
            function sq(){
                var t='${userDto.pasuser}';
                if(t=="user"){
                    
                document.getElementById("Mylist").children[1].style.display="none";
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
                                            <a href="${bmiUrl}" class="nav-link" >Hitung BMI</a>  
                                        </li>
                                        <li class="nav-item">
                                             <c:url var="idealUrl" value="/ideal.htm">        
                                            </c:url>
                                            <a href="${idealUrl}" class="nav-link" >Hitung Berat Ideal</a>  
                                        <li class="nav-item active">
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
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <section class="breadcumb-area bg-img gradient-background-overlay" style="background-image: url(img/bg-img/turun.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <h3 class="breadcumb-title">BE HEALTHY</h3>
                        <p>Pelajarilah Tips-Tips  Menaikan Berat Badan Berikut Ini </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Blog Area Start ***** -->

    <section class="medilife-blog-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">

                    <div class="single-blog-area">
                        <!-- Post Thumbnail -->
                        <div class="blog-post-thumbnail">
                            <img src="img/blog-img/shutterstock_102828485.jpg" alt="" width="300" height="300" align="center">
                            <!-- Post Date -->
                            <div class="post-date">
  
                            </div>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-author">
                                <a href="#"><img src="img/blog-img/images.jpg" alt=""></a>
                            </div>
                            <a href="#" class="headline mb-0">TIPS-TIPS MENAIKAN BERAT BADAN </a>
                            <div class="post-meta">
                                <a href="#" class="post-author-name">by Dr.Rini Oktaviani</a> | 

                            </div>
                            <div>
                                <p>1. Makan lebih sering
                                    Jika Anda kurus atau memiliki berat badan yang kurang, maka biasanya Anda lebih mudah kenyang jika dibandingkan dengan mereka yang berat badannya normal. Dibandingkan dengan makan tiga kali sehari, cobalah untuk makan lebih sering misalnya lima sampai enam kali per hari. Dengan begini lebih mudah bagi Anda untuk menambah jumlah kalori tanpa perlu terlalu merasa kekenyangan.</p>
                                <p>2. Pilih jenis makanan yang kaya akan nutrisi
                                    Mengonsumsi junk food dan makanan instan dengan tujuan meningkatkan berat badan bukanlah cara yang baik. Karena meskipun Anda kurus, ada suatu kondisi yang disebut skinny fat. Ini merupakan keadaan di mana seseorang terlihat kurus tetapi sebenarnya kadar lemak dalam tubuhnya lebih tinggi dari normal. Kadar lemak dalam darah seperti misalnya kolesterol total dan LDL nya juga cenderung tinggi. Maka dari itu memilih mengonsumsi makanan yang kaya akan zat gizi dapat membantu menaikkan berat badan Anda sekaligus menjaga kesehatan Anda. Misalnya pilihlah jenis kabrohidrat yang berasal dari whole grain, sayur dan buah, susu dan produk olahannya, daging, serta biji-bijian dan kacang-kacangan.  </p>
                            </div>


                            <img src="img/blog-img/buah.png" alt="" width="300" height="300" align="center">
                            <!-- Post Content -->
                            <div class="post-content">
                                <p>3. Cobalah mengonsumsi smoothies atau shake
                                    Dibandingkan mengonsumsi soda, kopi, atau minuman lain yang tinggi kalori tetapi rendah kualitas zat gizinya, Anda dapat mencoba mengonsumsi smoothies atau milk shake. Anda bisa menggunakan susu atau jus buah yang dibekukan sebagai bahan dasar smoothies Anda. Menaburkan potongan kacang almond atau flaxseed juga dapat menjadi pilihan untuk menambahkan kalori terutama protein.</p>
                                <P>4. Pilih jenis makanan yang padat kalori
                                    Makanan seperti kacang-kacangan baik masih dalam bentuk kacang maupun dalam bentuk selai, serta buah yang dikeringkan merupakan jenis makanan yang pada nutrisi. Ini berarti Anda tidak perlu mengonsumsi terlalu banyak untuk mendapatkan kalori yang banyak. Selain itu buah-buahan seperti mangga dan alpukat juga dapat menjadi pilihan Anda karena termasuk tinggi kalori.</P>
                                <P>5. Cermati kapan waktu terbaik untuk minum
                                    Pada sebagian orang, minum pada saat makan dapat mengurangi nafsu makan dan membuat lebih cepat kenyang. Untuk mensiasati hal ini, Anda dapat mencari tahu kapan waktu yang tepat untuk minum. Mungkin sebelum makan atau mungkin sesudah makan. Anda juga bisa memesan minuman yang tinggi kalori (seperti jus buah misalnya) dibandingkan air putih agar Anda bisa tetap mendapat asupan kalori lebih.</P>
                                <P>6. Anda bisa perbanyak camilan
                                    Tentunya camilan yang baik gizinya. Seperti misalnya buah-buahan, sandwich, roti, susu, kacang-kacangan, dan keju. Hindari camilan yang tinggi kalori dan tinggi lemak tetapi kurang kualitas zat gizinya seperti misalnya keripik kentang, permen, cokelat, dan lainnya. Anda dapat mengonsumsi camilan disela-sela waktu makan dan sebelum tidur. Makanan pencuci mulut juga bisa Anda tambahkan dalam menu harian Anda. Pilihlah jenis makanan pencuci mulut seperti misalnya yoghurt atau kukis oatmeal.</P>
                                <P>7. Rutin berolahraga
                                    Terutama jenis olahraga yang meningkatkan massa otot Anda. Meningkatkan massa otot merupakan salah satu cara menaikkan berat badan yang sehat. Selain itu, olahraga secara rutin juga dapat meningkatkan nafsu makan Anda.</P>
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
