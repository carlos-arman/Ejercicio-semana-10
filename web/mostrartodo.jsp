<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>MUESTRA DE DATOS!</h1>
        <c:forEach var="listaTotal" items="${sessionScope.personas}">
            <label>DUI:</label>
            ${listaTotal.dui} <br>
            <label>Nombre:</label>
            ${listaTotal.nombre} <br>
            <label>Apellido:</label>
            ${listaTotal.apellido} <br>
        </c:forEach>
    </body>
</html>
