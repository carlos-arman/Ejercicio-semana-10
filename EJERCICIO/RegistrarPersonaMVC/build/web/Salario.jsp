

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("nombre");
            String senal = request.getParameter("calc");
            double ht = Double.parseDouble(request.getParameter("ht"));
            double ph = Double.parseDouble(request.getParameter("ph"));
            
            double salario = 0;
            double renta = 0;
            double pago = 0;
                    
            if(senal!= null && nombre!= ""){
                salario = ht * ph;
                renta = salario * 0.1;
                pago = salario - renta;
            }
         %>
    <center>
        <table border="1">
            <tr>
                <th>Su nombre: </th>
                <td><%=nombre %></td>
            </tr>
            <tr>
                <th>Su salario es:</th>
                <td><%=pago %></td>
            </tr>
            <tr>
                <th>El descuento renta es: </th>
                <td><%=renta%></td>
            </tr>
        </table>
    <center>

    </body>
</html>
