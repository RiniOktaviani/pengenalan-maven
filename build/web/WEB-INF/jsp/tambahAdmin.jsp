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
            h3{
                font-family: italic;
            }
        </style>
        <script>
             $(document).ready(
                    function () {
                        $("#save").click(
                                function (evt) { //id tombol submit
                                    evt.preventDefault();
                                    var validate = $('#admin').validationEngine('validate'); // id form
                                    if (validate) {
                                        $("#admin").submit();
                                    } else {
                                        return false;
                                    }
                                }
                        );
                    }
            );
        </script>

    </head>
    <body style="background-image: url(img/bg-img/istockphoto-865738696-612x612.jpg);">
        <br><br><br>

        <div class="form-style-5"><br><br>

            <form:form id="admin" action="saveAdmin.htm" modelAttribute="adminDto" method="POST">
                <h3 align="center">DAFTAR ADMIN</h3><br>
                <center><table align="center">
                        <tr>
                        <div class="form-group">
                            <td>Id Admin </td>
                            <td>:</td>
                            <td><form:input path="idadmin"  class="validate validate[required, minSize[3], custom[onlyLetter], custom[noSpace]],form-control"/></td>
                        </div>

                        </tr>        
                        <tr>
                            <td>Nama User </td>
                            <td>:</td>
                            <td><form:input path="nmadmin" id="nm" class="validate validate[required, maxSize[100]]"/></td>
                        </tr>
                        <tr>
                            <td>Username</td>
                            <td>:</td>
                            <td><form:input path="usadmin" class="validate validate[required, maxSize[100]]"/></td>            
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>:</td>
                            <td><form:input path="pasadmin" class="validate validate[required, maxSize[100]]"/></td>            
                        </tr>

                        <tr>
                            <td colspan="3">
                                <form:button type="submit" id="save" class="btn medilife-btn">DAFTAR</form:button>
                                </td>
                            </tr>
                        </table>
                    </center>
            </form:form>

        </div>
        <!-- jQuery (Necessary for All JavaScript Plugins) -->
<!--        <script src="js/jquery/jquery-2.2.4.min.js"></script>
         Popper js -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="js/plugins.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>
    </body>
</html>
