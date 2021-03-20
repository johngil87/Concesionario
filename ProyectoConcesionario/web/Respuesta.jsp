<%-- 
    Document   : Respuesta
    Created on : 19-mar-2021, 18:06:11
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h2><% out.print(request.getAttribute("respuesta"));%></h2>

        <a href="Login.jsp">Ir a login</a> <br/> <br/>
        <a href="Registro.jsp">Ir a registro</a> <br/><br/>
    </body>
</html>
