<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <h1>Modificar registros </h1>
        
        <form action="Modificar_SA.do" method="post">
            
            <c:forEach var="listaTotal" items="${sessionScope.persona}">
                <input type="text" name="txtDui" value="${listaTotal.dui}" readonly="true"><br>
                <input type="text" name="txtNombre" value="${listaTotal.apellido}"><br>
                <input type="text" name="txtApellido" value="${listaTotal.nombre}"><br>
            </c:forEach>
                    <input  type="submit" value="Modificar">
                    
      </form>

  
    </body>
</html>
