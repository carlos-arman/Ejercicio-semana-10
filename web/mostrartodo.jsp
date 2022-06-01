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
              <table cellspacing="0" cellpadding="0" border="1" > 
                  <tr><td align="right">DUI:</td>
                      <td>${listaTotal.dui}</td></tr>
            <tr><td align="right">Nombre:</td>
                <td>${listaTotal.nombre} </td></tr>
            <tr><td align="right">Apellido:</td>
                <td>${listaTotal.apellido} </td></tr>
        </c:forEach>
              </table>
    </body>
</html>
