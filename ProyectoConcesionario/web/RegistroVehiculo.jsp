<%-- 
    Document   : RegistroVehiculo
    Created on : 21-mar-2021, 11:02:05
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="modelDAO.SucursalesDAO"%>
<%@page import="model.Sucursales"%>
<%@page import="model.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos/EstilosGenerales.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    </head>
    <body>
        <%
            Persona per = (Persona) session.getAttribute("user");
            SucursalesDAO sucurDao = new SucursalesDAO();
            List<Sucursales> sucur = sucurDao.listar();

        %>
        <header>
            <div class="inner-width">
                <a href="#" class="logo"><img src="logo.png" alt=""></a>
                <i class="menu-toggle-btn fas fa-bars"></i>
                <nav class="navigation-menu">
                    <a href="#"><i class="fas fa-home home"></i> Home</a>
                    <%                          if (per.getRolUsuario().equals("Administrador")) {
                    %>                        
                    <a href="Catalogos.jsp"><i class="fab fa-buffer works"></i> Catalogos</a>
                    <a href="usuarios.jsp"><i class="fas fa-users team"></i> Usuarios</a> 
                    <% }%>
                    <a href="#"><i class="fas fa-users team"></i> Team</a>                    
                    <a href="Login.jsp"><i class="fas fa-headset contact"></i> <%= per.getUsuario()%></a>
                </nav>
            </div>
        </header>
        <br><br>
        <form action="Registro1" method="post">
            <input type="text" name="placa" placeholder="Placa del Vehiculo" maxlength="6" class="caj" required=""><br><br>
            <input type="text" name="marca" placeholder="Marca del Vehiculo" class="caj" required=""><br><br>
            <input type="text" name="linea" placeholder="Linea  Del Veiculo"  class="caj" required=""><br><br>
            <input type="number" name="modelo" placeholder="Modelo" maxlength="4" class="caj" required=""><br><br>
            <input type="text" name="color" placeholder="Color" class="caj" required=""><br><br>
            <input type="file" name="foto" placeholder="Foto Vehiculo" class="caj" required=""><br><br>
            <select name="estado"  id="tip" class="caj" >
                <option value="1">Para la venta</option>
                <option value="0">Vendido</option>
            </select><br><br>
            <select name="codigoSucursal"  id="tip" class="caj" >

                <% for (int i = 0; i < sucur.size(); i++) {%>
                <option value="<%= sucur.get(i).getCodSucursal()%>"> <%= sucur.get(i).getNomSucursal()%> </option>
                <% }%>
            </select><br><br>
            <input type="submit" name="" class="btn btn-success caj" value="Crear"><br><br>
        </form> 

        <%
            String respuesta = request.getCharacterEncoding();
            if (respuesta != null) {
                out.print(respuesta);
            }
        %>
        <script type="text/javascript">
            $(".menu-toggle-btn").click(function () {
                $(this).toggleClass("fa-times");
                $(".navigation-menu").toggleClass("active");
            });
        </script>
    </body>
</html>
