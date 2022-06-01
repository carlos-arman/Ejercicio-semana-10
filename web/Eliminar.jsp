<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Eliminar
    Created on : Jun 1, 2022, 11:19:43 AM
    Author     : Armando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Eliminar Dato</h1>
    <from action="Delete_CA.do" method="post">
        <c:forEach var="listaTotal" items="${sessionScope.persona}">
        <input type="text" name="txtDui" value="${listaTotal.dui}" readonly="true">
        <input type="text" name="txtApellido" value="${listaTotal.apellidos}">
        <input type="text" name="txtNombre" value="${listaTotal.nombre}">
    </c:forEach>
    </from>
    </body>
</html>
