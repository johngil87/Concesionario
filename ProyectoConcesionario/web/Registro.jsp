<%-- 
    Document   : Registro
    Created on : 14-mar-2021, 20:57:23
    Author     : HP
--%>

<%@page import="java.util.List"%>
<%@page import="model.TipoDocumento"%>
<%@page import="modelDAO.TipoDocumentoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&family=Pacifico&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="estilos/Registro.css"> 

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <title>Registro</title>
    </head>
    <body>
        <%
            TipoDocumentoDAO docDao = new TipoDocumentoDAO();
            List<TipoDocumento> doc = docDao.listarDoc();

        %>

        <header>
            <a href="index.jsp"><h1>Concesionario</h1></a>
            
        </header>
        <main>
            <section>
                <h1>Registro</h1>
                <form action="Registro" method="post">

                    <select name="tipoDocumento"  id="tip" class="caj" >
                        <% for (int i = 0; i < doc.size(); i++) {%>
                        <option value="<%= doc.get(i).getCodigoDocumento()%>"><%= doc.get(i).getDescripcionDocumento()%></option>
                        <% }%>

                    </select>

                    <input type="text" name="documento" id="d" placeholder="No Documento"  maxlength="20" class="caj" required=""><br><br>

                    <input type="text" name="pnombre" placeholder="Primer Nombre" maxlength="15" class="caj" required="">
                    <input type="text" name="snombre" placeholder="Segundo Nombre" maxlength="15" class="caj" > <br><br>

                    <input type="text" name="papellido" placeholder="Primer Apellido" maxlength="15" class="caj" required="">      
                    <input type="text" name="sapellido" placeholder="Segundo Apellido"  maxlength="15" class="caj" > <br><br>

                    <input type="number" name="cell" placeholder="Telefono" maxlength="10" class="caj" >
                    <input type="email" name="email" placeholder="Correo" class="caj" > <br><br>

                    <input type="text" name="usuario" placeholder="Usuario" maxlength="20" class="caj" required="">
                    <input type="password" name="pass" placeholder="Contraseña" maxlength="20" class="caj" required=""> <br><br>

                    <input type="submit" name="" class="btn btn-success caj" value="Crear Usuario">
                    </section>

                    </main>
                    <footer></footer>

                    </body>
                    </html>
