<%-- 
    Document   : Login
    Created on : 14-mar-2021, 17:54:32
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text" href="EstilosGenerales.css">
    </head>
    <body>
        <style type="text/css">
            #user{
                width: 500px;
            }
            
        </style>
        <div class="containlogin">       
            <form action="Login" method="post" class="form-inline" >
                <input id="user" class="form-control  " type="text" name="user" placeholder="Usuario" required=""/>  <br/><br/>
                <input class="form-control " type="password" name="pass" placeholder="Contraseña" required=""/><br/>
                <input class="btn btn-primary navbar-btn" type="submit" value="Ingresar"/> 
            </form>
             <form action="Registro.jsp" method="post" class="form-inline" >
                 <label>Crear cuenta</label>
                <input class="btn btn-primary navbar-btn" type="submit" value="Ingresar"/> 
            </form>
        </div> 
    </body>
</html>
