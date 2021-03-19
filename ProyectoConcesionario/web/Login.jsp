<%-- 
    Document   : Login
    Created on : 14-mar-2021, 17:54:32
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&family=Pacifico&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="estilos/login.css"
              
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
     
        <title>Login</title>
        
    </head>
    <body>
        <header>
            <h1>Concesionario</h1>
        </header>
        <main>
            <section>
                <h1>Iniciar Sesion</h1>
                <form action="Login" method="post" classs="form1" >
                   
                    <input type="text" name="user" placeholder="Usuario"  maxlength="20" class="inp" required=""/>  <br/><br/>
                    <input type="password" name="pass" placeholder="Contraseña" maxlength="20" class="inp" required=""/><br/><br/>
                    <input type="submit" class="btn btn-info inp" value="Ingresar"/> <br/><br/>
                    
                    <a href="">Olvide mi contraseña</a> <br/> <br/>
                    <a href="Registro.jsp">No tengo una cuenta</a> <br/><br/>
                    
                </form>
            </section>
        </main>
        <footer>
           
        </footer>
        
    </body>
</html>
