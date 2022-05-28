<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:forEach var="listaTotal" items="${sessionScope.personas}">
            DUI:${listaTotal.dui}
            Apellidos:${listaTotal.apellidos}
            Nombres:${listaTotal.nombres}
        </c:forEach>
    </body>
</html>
