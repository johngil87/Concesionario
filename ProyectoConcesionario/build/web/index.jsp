<%-- 
    Document   : index
    Created on : 14-mar-2021, 16:57:51
    Author     : HP
--%>

<%@page import="modelDAO.VehiculoDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.Vehiculos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilos/EstilosGenerales.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <title>Concesionario POLI</title>
    </head>
    <body>
        <%
            Vehiculos veh = new Vehiculos();
            VehiculoDAO vehDao = new VehiculoDAO();
            List<Vehiculos> listaVeh = vehDao.listar();
        %>
        <header>
            <div class="inner-width">
                <a href="#" class="logo"><img src="logo.png" alt=""></a>
                <i class="menu-toggle-btn fas fa-bars"></i>
                <nav class="navigation-menu">
                    <a href="#"><i class="fas fa-home home"></i> Home</a>
                    <a href="#"><i class="fas fa-users team"></i> Team</a>
                    <a href="Login.jsp"><i class="fas fa-headset contact"></i> Login</a>
                </nav>
            </div>
        </header>
        <article>
            <%
                for (int i = 0; i < listaVeh.size(); i++) {
                    String urlImg = listaVeh.get(i).getFotoVehiculo();
            %>
            <div>
                <hr>
                <hr>
                <h3>Marca <%= listaVeh.get(i).getMarcaVehiculo()%> </h3>
                <h3>Linea <%= listaVeh.get(i).getLineaVehiculo()%> </h3>
                <img src="<% out.print(listaVeh.get(i).getFotoVehiculo());%> " width="250" height="200" >
                <h3>Placa <%= listaVeh.get(i).getPlacaVehiculo()%> </h3>
                <h3>Color  <%= listaVeh.get(i).getColorVehiculo()%> </h3>
                <h3>Modelo <%= listaVeh.get(i).getModeloVehiculo()%> </h3>
            </div>
            <% }%>

        </article>


        <script type="text/javascript">
            $(".menu-toggle-btn").click(function () {
                $(this).toggleClass("fa-times");
                $(".navigation-menu").toggleClass("active");
            });
        </script>
    </body>
</html>
