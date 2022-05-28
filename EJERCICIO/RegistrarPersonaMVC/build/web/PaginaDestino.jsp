<%-- 
    Document   : PaginaDestino
    Created on : 17-may-2022, 14:10:54
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
            <%      
            // Este es un scriptlet    
            // Es código en Javaque captura los parámetros enviados      
            // en el objeto "request"        
            String nombre = request.getParameter("nombre");  
            String color = request.getParameter("color");    
            String mail = request.getParameter("mail");   
            %> 
            
            <h1> Esta es la página destino</h1>    
            <h2> Aqui se despliegan los datos que se recibieron</h2>   
            <p> Tus datos son los siguientes: </p>    
            <table cellspacing="3" cellpadding="3" border="1" >    
                <tr>        
                    <td align="right"> Te llamas: </td>       
                    <td> <%= nombre %> </td>      
                </tr>      
                <tr>     
                    <td align="right"> Tu color favorito es: </td>   
                    <td> <%= color %> </td>      
                </tr>      
                <tr>        
                    <td align="right"> Y tu correo es: </td>    
                    <td> <%= mail %> </td>     
                </tr>      
            </table>    
                <form action="PaginaOrigen.jsp" method="post">    
                    <input type="submit" value="Regresar">   
                </form> 
    </body>
</html>
