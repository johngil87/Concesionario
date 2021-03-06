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
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
        <link rel="stylesheet" href="estilos/RegistroVehiculos.css">
        <link rel="stylesheet" href="estilos/EstilosGenerales.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        
        <title>Registro Vehiculo</title>
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
                
        <main>
            <h1>Ingresar Vehiculos</h1> <br>
            <form action="Registro1" method="post">
                
               <input type="text" name="placa" placeholder="Placa del Vehiculo" maxlength="6" class="caj" required=""><br><br>
               <input type="text" name="marca" placeholder="Marca del Vehiculo"maxlength="15" class="caj" required=""><br><br>
               <input type="text" name="linea" placeholder="Linea  Del Veiculo"  maxlength="15" class="caj" required=""><br><br>
               <input type="number" name="modelo" placeholder="Modelo" maxlength="4" class="caj" required=""><br><br>
               <input type="text" name="color" placeholder="Color" maxlength="15"class="caj" required=""><br><br>
               <input type="file" name="foto" placeholder="Foto Vehiculo" class="caj" required=""><br><br>
               
               <select name="estado"  id="tip" class="caj" >
                   <option value="1">A la venta</option>
                   <option value="0">Vendido</option>
               </select><br><br>
               
               <select name="codigoSucursal"  id="tip" class="caj" >
                   <% for (int i = 0; i < sucur.size(); i++) {%>
                   <option value="<%= sucur.get(i).getCodSucursal()%>"> <%= sucur.get(i).getNomSucursal()%> </option>
                   <% }%>
               </select><br><br>
                
               <input type="submit" name="" class="btn btn-dark caj" value="Crear"><br><br>
           </form>       
        </main>
         

        <%
            String respuesta = request.getCharacterEncoding();
            if (respuesta != null) {
                out.print(respuesta);
            }
        %>
        
        <footer></footer>
        
        <script type="text/javascript">
            $(".menu-toggle-btn").click(function () {
                $(this).toggleClass("fa-times");
                $(".navigation-menu").toggleClass("active");
            });
        </script>
    </body>
</html>
