<%-- 
    Document   : res_pago
    Created on : 17-may-2022, 14:22:18
    Author     : ITCA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Complete la informacion del trabajador0</h1>
        <br>
        <form action="res_pago.jsp" method="post">
            <table width="50%" border="5">
                <tr>
                    <th>Nombre trabajador</th>
                    <td>
                        <input type="text" name="nombre" size="35" maxlength="35"> 
                    </td>
                </tr>
                <tr>
                    <th>
                         Horas trabajadas
                    </th>
                    <td>
                        <input type="text" name="ht" size="5" maxlength="5">
                    </td>
                </tr>
                <tr>
                    <th>
                        Pago por hora
                    </th>
                    <td>
                        <input type="text" size="5" maxlength="5" name="ph">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" action="Salario.jsp">
                       
                        <input type="submit" value="Calcular">
                        
                    </td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
