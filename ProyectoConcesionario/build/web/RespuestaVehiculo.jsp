<%-- 
    Document   : RespuestaVehiculo
    Created on : 21-mar-2021, 18:18:29
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
         <h2><% out.print(request.getAttribute("respuestaV"));%></h2>

        <a href="RegistroVehiculo.jsp">Volver</a> <br/> <br/>
    </body>
</html>
