<%-- 
    Document   : Registro
    Created on : 14-mar-2021, 20:57:23
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
      
        <title>JSP Page</title>
    </head>
    <body>
        <form  action="Registro" method="post">
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="nom">Primer Nombre</label>   
                    <input class="form-control" type="text" name="pnombre" id="nom" placeholder="Primer Nombre" required=""/>
                </div>
                 <div class="form-group col-md-6">
                    <label for="nom">Segundo Nombre</label>   
                    <input class="form-control" type="text" name="snombre" id="nom2" placeholder="segundo Nombre"/>
                </div>
                <div class="form-group col-md-6">
                    <label for="ape">Primer Apellido</label>
                    <input  class="form-control" type="text" name="papellido" id="ape" placeholder="Primer Apellido" required=""/>
                </div>    
                <div class="form-group col-md-6">
                    <label for="ape">Segundo Apellido</label>
                    <input  class="form-control" type="text" name="sapellido" id="ape2" placeholder="Segundo Apellido"/>
                </div>
                <div class="form-group col-md-6">
                    <label for="usser">Usuario</label>    

                    <input class="form-control" type="text" name="usuario" id="usser" placeholder="Usuario" required=""/>
                </div>    
                <div class="form-group col-md-6">
                    <label for="pass">Contraseña</label>
                    <input class="form-control" id="pass" type="password" name="pass" placeholder="Contraseña" required="" />          
                </div>
                <div class="form-group col-lg-12">
                    <label for="tel">Telefono</label>
                    <input class="form-control" id="tel" type="text" name="cell" placeholder="Telefono" required="" /> 
                </div>
                <div class="form-group col-md-12">
                    <label for="mail">Correo Electronico</label>
                    <input class="form-control" id="mail" type="email" name="email" placeholder="Correo electronico" required="" />  
                </div> 
                <div class="form-group col-md-6">
                    <label for="nom">No de Documento</label>   
                    <input class="form-control" type="text" name="documento" id="nom" placeholder="# Documento" required=""/>
                </div>
                <div class="form-group col-md-4">
                    <label for="pais">Tipo de documento</label>
                    <select name="tipoDocumento" id="pais" class="form-control">
                        <option value="CC">Cedula de Ciudadania</option>
                        <option value="CE">Cedula de Extranjeria</option>
                        <option value="NIP">Numero de Identificacion Personal</option>
                        <option value="NIT">Numero de Identificacion Tributaria</option>

                    </select><br/>
                </div>
            </div>    
            <div class="col-sm-10">

                <input class="btn btn-primary navbar-btn" type="submit" value="Registrar"/>


        </form>
        <form class="form-inline " action="Login.jsp.jsp" method="get" >
            <input class="btn btn-primary navbar-btn" type="submit" value="Regresar"/>  
        </div>
    </form>
</body>
</html>
