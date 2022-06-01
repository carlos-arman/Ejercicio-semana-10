<%-- 
    Document   : modificar
    Created on : 06-01-2022, 10:34:54 AM
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
        <h1>Modificar los datos de la base de datos</h1>
        <form action="modificar_SA.do">
                      
                   <c:forEach var="listaTotal" items="${sessionScope.persona}">
                       
                        
                         DUI<input type="text" name="txtDui" value="${listaTotal.dui}" readonly="true">
                         Apellidos<input type="text" name="txtApellido" value="${listaTotal.apellidos}">
                         Nombres<input type="text" name="txtNombre" value="${listaTotal.nombres}">
                    </c:forEach>                    
                    <a href="index.jsp">Volver</a>
                    <input  type="submit" value="Modificar">
                    
      </form>

  
    </body>
</html>
