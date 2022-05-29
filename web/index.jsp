<%-- 
    Document   : index
    Created on : 05-29-2022, 03:55:45 PM
    Author     : sampc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1> Registro de personas </h1>
        
        <form action="recibir_SA.do" method="POST">
        DUI:<input type="text" name="txtDui" value="" /><br><br>
        Apellidos:<input type="text" name="txtApellido" value="" /><br><br>
        Nombre:<input type="text" name="txtxNombre" value="" /><br><br>
        <input type="submit" value="Registrar" name="btn" />
        <input type="submit" value="modificar" name="btnM" />
        <input type="submit" value="eliminar" name="btnE" />
    </form>
    </body>
</html>
