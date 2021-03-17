<%-- 
    Document   : index
    Created on : 14-mar-2021, 16:57:51
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="EstilosGenerales.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <title>Concesionario POLI</title>
    </head>
    <body>
        <header>
            <div class="inner-width">
                <a href="#" class="logo"><img src="logo.png" alt=""></a>
                <i class="menu-toggle-btn fas fa-bars"></i>
                <nav class="navigation-menu">
                    <a href="#"><i class="fas fa-home home"></i> Home</a>
                    <a href="#"><i class="fas fa-align-left about"></i> About</a>
                    <a href="#"><i class="fab fa-buffer works"></i> Works</a>
                    <a href="#"><i class="fas fa-users team"></i> Team</a>
                    <a href="Login.jsp"><i class="fas fa-headset contact"></i> Login</a>
                </nav>
            </div>
        </header>



        <script type="text/javascript">
            $(".menu-toggle-btn").click(function () {
                $(this).toggleClass("fa-times");
                $(".navigation-menu").toggleClass("active");
            });
        </script>
    </body>
</html>
