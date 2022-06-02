<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    
    <body background="img/fondo.jpg">
        
        <center>
        <h1>Todos los registros</h1>
        <table  border="1" bigcolor="E4BCD4" style="border-collapse: collapse; width: 60%; background: white; height: 150px; padding: 10px; border-radius: 10px">
                <thead>
                    <tr>
                        <th  scope="col">DUI</th>
                        <th style=" height="50" width="150" scope="col">Apellidos</th>
                        <th style=" height="50" width="150" scope="col">Nombres</th>
                    </tr>
                </thead>
                <tbody>
    <c:forEach var="listaTotal" items="${sessionScope.personas}">
                    <tr>
                        <td style="text-align: center">${listaTotal.dui}</td>
                        <td style="text-align: center">${listaTotal.apellido}</td>
                        <td style="text-align: center"> ${listaTotal.nombre}</td>
                        <td style="text-align: center"><a style="text-decoration: none" href="Actualizar.do?accion=editar&&dui=${listaTotal.dui}" role="button">Editar</a></td>
                        <td style="text-align: center; width: 50px"><a style="text-decoration: none"  href="Actualizar.do?accion=eliminar&&dui=${listaTotal.dui}" role="button">Eliminar</a></td>
                    </tr>
                   
    </c:forEach>
                    <tr>
                        <td colspan="3" align="center">
                            <a style="text-decoration: none; color: " href="index.jsp" role="button">Regresar</a>
                            
                        </td>
                    </tr>
                     </tbody>
            </table>
        </center>
    </body>
</html>
