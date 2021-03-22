<%-- 
    Document   : BuscarVehiculo
    Created on : 21-mar-2021, 19:00:05
    Author     : HP
--%>

<%@page import="modelDAO.VehiculoDAO"%>
<%@page import="model.Vehiculos"%>
<%@page import="modelDAO.SucursalesDAO"%>
<%@page import="model.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VehiculoPlaca</title>
        <link rel="stylesheet" href="estilos/EstilosGenerales.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    </head>
</head>
<body>
    <%
        Persona per = (Persona) session.getAttribute("user");
        VehiculoDAO vehDao= new VehiculoDAO(); 
        String placa = request.getAttribute("respuesta").toString();
        Vehiculos veh = vehDao.listarVehiculoId(placa);
        String estado ="";
        if(veh.getEstadoVehiculo()==1){
            estado="A la venta";
        }else{
           estado="Vendido";
        }

    %>
    <header>
        <div class="inner-width">
            <a href="#" class="logo"><img src="logo.png" alt=""></a>
            <i class="menu-toggle-btn fas fa-bars"></i>
            <nav class="navigation-menu">
                <a href="Inicio.jsp"><i class="fas fa-home home"></i> Home</a>
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
             <article>
          
            <div>
                <% if(veh.getMarcaVehiculo()==null){ %>
                 <h3>Vehiculo de placa <%=placa%> no existe en la base de datos </h3>
                 <% }else{ %>
                <hr>
                <hr>
                <h3>Marca <%= veh.getMarcaVehiculo()%> </h3>
                <h3>Linea <%= veh.getLineaVehiculo()%> </h3>
                <img src="<% out.print(veh.getFotoVehiculo());%> " width="250" height="200" >
                <h3>Placa <%= veh.getPlacaVehiculo()%> </h3>
                <h3>Color  <%= veh.getColorVehiculo()%> </h3>
                <h3>Modelo <%= veh.getModeloVehiculo()%> </h3>
                <h3>Estado <%= estado %> </h3>
                <% } %>
            </div>
           

        </article>
</body>
</html>
