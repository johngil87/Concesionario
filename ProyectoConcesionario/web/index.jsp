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
        <link rel="stylesheet" href="estilos/InicioEstilos.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
      
        
        <title>Concesionario POLI</title>
    </head>
    <body>
        <%
            Vehiculos veh = new Vehiculos();
            VehiculoDAO vehDao = new VehiculoDAO();
            List<Vehiculos> listaVeh = vehDao.listar();
            int fila = 1;
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
        <main>
            <table>
                <%
                for (int i = 0; i < listaVeh.size(); i++) {
                    String urlImg = listaVeh.get(i).getFotoVehiculo();
                    
                if (fila%5==0){
            %>
                 <tr>
               
            <td>
                <div class="card" style="width: 18rem;">
                <img src="<% out.print(listaVeh.get(i).getFotoVehiculo());%>" class="card-img-top" alt="..." width="250" height="200">
                <div class="card-body">
                  <h5 class="card-title"><%= listaVeh.get(i).getMarcaVehiculo()%> <%= listaVeh.get(i).getLineaVehiculo()%> </h5>
                  <p class="card-text">Placa: <%= listaVeh.get(i).getPlacaVehiculo()%> </p>
                  <p class="card-text">Color: <%= listaVeh.get(i).getColorVehiculo()%></p>
                  <p class="card-text">Modelo: <%= listaVeh.get(i).getModeloVehiculo()%> </p>
                  <a href="#" class="btn btn-primary">Comprar</a>
                </div>
            </div>
           
            </td>
             
                     </tr>
               <%}else{ %>
               
                <td>
                <div class="card" style="width: 18rem;">
                <img src="<% out.print(listaVeh.get(i).getFotoVehiculo());%>" class="card-img-top" alt="..."width="250" height="200">
                <div class="card-body">
                  <h5 class="card-title"><%= listaVeh.get(i).getMarcaVehiculo()%> <%= listaVeh.get(i).getLineaVehiculo()%> </h5>
                  <p class="card-text">Placa: <%= listaVeh.get(i).getPlacaVehiculo()%> </p>
                  <p class="card-text">Color: <%= listaVeh.get(i).getColorVehiculo()%></p>
                  <p class="card-text">Modelo: <%= listaVeh.get(i).getModeloVehiculo()%> </p>
                 
                </div>
            </div>
           
            </td>
               <%}%>
               
                
            <% fila++; }%>
            
            </table>
             
        </main>
            
        <footer>
                
                
        </footer>
     

        <script type="text/javascript">
            $(".menu-toggle-btn").click(function () {
                $(this).toggleClass("fa-times");
                $(".navigation-menu").toggleClass("active");
            });
        </script>
    </body>
</html>
