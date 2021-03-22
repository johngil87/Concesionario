<%-- 
    Document   : Catalogos
    Created on : 19-mar-2021, 18:28:53
    Author     : HP
--%>

<%@page import="model.Vehiculos"%>
<%@page import="model.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link rel="stylesheet" href="estilos/estilosCatalogos.css">
        <link rel="stylesheet" href="estilos/EstilosGenerales.css"
              <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%Persona per = (Persona) session.getAttribute("user");
        %>
        <header>
            <div class="inner-width">
                <a href="#" class="logo"><img src="logo.png" alt=""></a>
                <i class="menu-toggle-btn fas fa-bars"></i>
                <nav class="navigation-menu">
                    <a href="#"><i class="fas fa-home home"></i> Home</a>
                    <%                          if (per.getRolUsuario().equals("Administrador")) {
                    %>                        
                    <a href="catalogos.jsp"><i class="fab fa-buffer works"></i> Catalogos</a>
                    <a href="usuarios.jsp"><i class="fas fa-users team"></i> Usuarios</a> 
                    <% }%>
                    <a href="#"><i class="fas fa-users team"></i> Team</a>                    
                    <a href="Login.jsp"><i class="fas fa-headset contact"></i> <%= per.getUsuario()%></a>
                </nav>
            </div>
        </header>

        <div class="services">
            <h1>Control De Vehiculos</h1>
            <div class="cen">
                <div class="service">
                    <i class="fas fa-anchor"></i>
                    <h2>Registro de Vehiculos</h2>
                    <p>Registro de vehiculos para su venta y publicacion en el sitio web</p>
                    <div class="middle">
                        <a href="RegistroVehiculo.jsp" class="btn btn1">Registrar</a>     
                    </div>
                </div>

                <div class="service">
                    <i class="fab fa-android"></i>
                    <h2>Registrar Clientes</h2>
                    <p>Registra los datos personales de o actualiza los datos del cliente</p>
                    <div class="middle">
                        <a href="Pendiente.jsp" class="btn btn1">Registrar/Actualizar</a>     
                    </div>
                </div>

                <div class="service">
                    <i class="fab fa-angellist"></i>
                    <h2>Registro de Empleados</h2>
                    <p>Registrar o actualizacion de los datos personales de los empleados</p>
                    <div class="middle">
                        <a href="Pendiente.jsp" class="btn btn1">Registrar/Actualizar</a>     
                    </div>
                </div>

                <div class="service">
                    <i class="fas fa-apple-alt"></i>
                    <h2>Conocer Sucursales</h2>
                    <p>Conozca el listado de las sucursales con su hubicacion y datos de contacto</p>
                    <div class="middle">
                        <a href="Pendiente.jsp" class="btn btn1">Mostrar</a>     
                    </div>
                </div>

                <div class="service">
                    <i class="fas fa-archway"></i>
                    <h2>Facturas y Compras</h2>
                    <p>Registrar la compras con los datos y conocer los datos de las compras anteriores</p>
                    <div class="middle">
                        <a href="Pendiente.jsp" class="btn btn1">Mostrar</a>     
                    </div>
                </div>

                <div class="service">
                    <i class="far fa-angry"></i>
                    <h2>Consultar datos de Vehiculo</h2>
                    <form class="form-row" action="VehiculoPlaca" method="post">
                        <div class="form-group mx-sm-3 mb-2">
                            <label for="id" class="form-control col-md-6">Placa del Vehiculo</label>
                            <input type="text" class="form-control col-md-6" id="id" placeholder="Placa" name="placa" required="" maxlength="6">
                        </div>
                        <button type="submit" class="btn btn-primary mb-2">Ver informacion</button>
                    </form>    
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(".menu-toggle-btn").click(function () {
                $(this).toggleClass("fa-times");
                $(".navigation-menu").toggleClass("active");
            });
        </script>
    </body>
</html>
