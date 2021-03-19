<%-- 
    Document   : Inicio
    Created on : 14-mar-2021, 18:54:20
    Author     : HP
--%>

<%@page import="model.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos/EstilosGenerales.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <title>Concesionario POLI</title>
    </head>
    <body>
        <%Persona per = (Persona) session.getAttribute("user");

            String idpersona = per.getDocumentoUser();

            String error = request.getParameter("error");
            String admin = "";
            if (per.getRolUsuario().equals("Administrador")) {
                admin = "Hola admin "+per.getPrimerNombreUser();
            }else{
                admin = "Hola Cliente "+per.getPrimerNombreUser();
            }

        %>
        <header>
            <div class="inner-width">
                <a href="#" class="logo"><img src="logo.png" alt=""></a>
                <i class="menu-toggle-btn fas fa-bars"></i>
                <nav class="navigation-menu">
                    <a href="#"><i class="fas fa-home home"></i> Home</a>
                    <a href="#"><i class="fas fa-align-left about"></i> About</a>
                    <a href="#"><i class="fab fa-buffer works"></i> Works</a>
                    <a href="#"><i class="fas fa-users team"></i> Team</a>                    
                    <a href="Login.jsp"><i class="fas fa-headset contact"></i> <%= per.getUsuario()%></a>
                </nav>
            </div>
        </header>

                <h1><%= admin%></h1>




        <script type="text/javascript">
            $(".menu-toggle-btn").click(function () {
                $(this).toggleClass("fa-times");
                $(".navigation-menu").toggleClass("active");
            });
        </script>
    </body>
</html>
