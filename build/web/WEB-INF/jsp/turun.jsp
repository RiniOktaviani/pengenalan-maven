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

        <!-- Title  -->
        <title>Medilife - Health &amp; Medical Template | News</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Style CSS -->
        <link rel="stylesheet" href="style.css">
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
                                        <li  class="nav-item active">
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
                        <p>Pelajarilah Tips-Tips  Menurunkan Berat Badan Berikut Ini </p>
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
                            <img src="img/blog-img/menurunkan-berat-badan.png" alt="">
                            <!-- Post Date -->
                            <div class="post-date">

                            </div>
                        </div>
                        <!-- Post Content -->
                        <div class="post-content">
                            <div class="post-author">

                            </div>
                            <a href="#" class="headline mb-0">TIPS-TIPS MENURUNKAN BERAT BADAN </a>
                            <div class="post-meta">
                                <a href="#" class="post-author-name">by Dr.Rini Oktaviani</a> | 

                            </div>
                            <p>1. Makan pakai piring kecil
                                Makan dengan piring kecil bisa membuat Anda tetap bisa makan makanan yang Anda suka, tapi dengan porsi yang lebih sedikit. Para peneliti di University of Groningen menemukan bahwa piring yang 70% terlihat penuh, memang lebih digemari saat makan.

                                Jadi, menggunakan piring kecil bisa membuat seakan-akan piring Anda telah penuh. Padahal jika diletakkan ke piring normal, porsinya lebih sedikit. Ini juga sekaligus bisa memangkas asupan kalori berlebih. Anda pun bisa makan dengan jumlah yang banyak tanpa harus bikin jarum timbangan bergerak ke arah kanan.</p>
                            <p>2. Pilih karbohidrat yang mengandung banyak serat, seperti gandum utuh
                                Sembari memenuhi hasrat diri yang selalu ingin makan, ada baiknya Anda perlahan mengganti karbohidrat Anda dengan makanan yang berbahan dasar gandum utuh (whole wheat). Cobalah ganti makanan pokok sehari-hari seperti nasi putih atau roti tawar, dengan roti gandum dan nasi merah.

                                Makanan yang berbahan dari gandum dan biji-bijian tersebut aman jika dimakan dalam jumlah yang banyak. Selain itu, kandungan serat dalam gandum bisa membuat tubuh Anda kenyang tahan lama, sehingga bisa menjadi cara ampuh untuk menurunkan berat badan.  </p>
                        </div>
                        <img src="img/blog-img/images (1).jpg" alt="" width="300" height="300">
                        <!-- Post Content -->
                        <div class="post-content">
                            <p>3. Ganti makanan manis dengan bahan alternatif yang lebih sehat lainnya


                                Mengurangi gula adalah salah satu aturan yang wajib diterapkan sebagai cara menurunkan berat badan. Bagi Anda yang suka dan hobi makan, hal ini mungkin dirasa dan sulit.

                                Tapi tidak usah khawatir, Anda masih bisa makan makanan manis dengan mengganti gula dengan bahan pemanis alami, contohnya pemanis dari daun stevia.

                                Tanaman stevia ini merupakan pemanis alami yang bebas gula serta mengandung nol kalori, cocok untuk penderita diabetes dan bagi Anda yang sedang diet. Selain itu, daun stevia punya kandungan rasa lebih manis daripada gula, sehingga cocok, sehat dan aman untuk Anda yang suka makan makanan manis.</p>
                            <P>4. Minum dua gelas air sebelum makan
                                Minum air sebanyak 2 gelas sebelum makan dapat membantu Anda merasa lebih kenyang saat makan. Minum air adalah cara lain untuk makan lebih sedikit dan menurunkan berat badan. Menurut beberapa penelitian, kebiasaan minum air cukup sebelum makan ini berhasil untuk mengurangi bobot tubuh pada orang gemuk.</P>
                            <P>5. Perbanyak makanan mengandung protein di dalam menu sehari-hari


                                Salah satu cara yang satu ini terbilang cukup ampuh untuk menurunkan berat badan dan membangun massa otot tubuh. Makanan yang mengandung protein seperti daging merah, ayam, susu, dan whey protein, adalah nutrisi penting dalam mempertahankan otot saat Anda sedang mencoba menurunkan lemak, sehingga tidak menyebabkan tubuh kurus dengan lemak berlebih.  

                                Para ahli juga merekomendasikan untuk mengatur waktu makan yaitu setiap 3-4 jam. Hal ini bertujuan untuk menjaga tingkat gula darah Anda tetap stabil dan tubuh tetap sehat.</P>
                            <P>6. Gerakkan tubuh Anda seaktif mungkin
                                Biarpun Anda makan sebanyak apapun, tapi kalau Anda tidak bergerak dan beraktivitas cukup, menurunnya bobot tubuh sepertinya mustahil. Maka dari itu, biarkan tubuh Anda bergerak perlahan demi perlahan.

                                Anda bisa mencoba dengan langkah kecil seperti berjalan ke warung di depan komplek, atau memilih naik tangga ke dibanding naik lift ke lantai tempat kantor Anda berada. Jika Anda lebih banyak bergerak, hal itu juga dapat membuat tubuh membakar kalori secara stabil.</P>
                            <P>7.  Jangan lupa untuk tidur cukup
                                Menurut penelitian dari Columbia University, kalau Anda kurang tidur dari 7 jam dalam sehari, hal itu bisa menyulitkan proses diet Anda, lho. Pasalnya, ketika Anda begadang dan tidak tidur, tubuh bisa memunculkan hasrat lapar dan keinginan untuk ngemil.

                                Selain itu ada banyak studi juga yang menunjukkan saat tubuh merasa lelah, Anda juga akan jadi banyak makan. Maka, coba atur dan cukupi kebutuhan istirahat tubuh, agar proses menurunkan berat badan Anda lancar tanpa harus menahan rasa lapar berlebihan.</P>
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
