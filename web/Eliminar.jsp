<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        

        <title>JSP Page</title>
    </head>
    <body >
        
        <h1>Eliminar Datos</h1>
        
       <form action="Delete_CA.do" method="post">
        <c:forEach var="listaTotal" items="${sessionScope.persona}">
            <label>Dui:</label>
            <input type="text" name="txtDui" value="${listaTotal.dui}">
            <label>Nombre: </label>
            <input type="text" name="txtNombre" value="${listaTotal.nombre}">
            <label>Apellido:</label>
            <input type="text" name="txtApellido" value="${listaTotal.apellido}">
        </c:forEach>
            <input type="submit" value="Eliminar Dato">
       </form>
   
    </body>
</html>
