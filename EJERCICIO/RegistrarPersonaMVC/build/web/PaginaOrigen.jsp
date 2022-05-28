<%-- 
    Document   : PaginaOrigen
    Created on : 17-may-2022, 14:10:26
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
         <h1> Esta es la página de inicio</h1>
         <h2> Aqui se piden los datos </h2>  
         <p> Hola, por favor introduce la información </p> 
         
         <form action="PaginaDestino.jsp" method="post">    
             <table cellspacing="3" cellpadding="3" border="1" >     
                 <tr> 
                     <td align="right"> Nombre: </td>
                     <td><input type="text" name="nombre"></td>  
                 </tr>            
                 <tr>       
                     <td align="right"> Color favorito: </td>  
                     <td> <input type="text" name="color"> </td>   
                 </tr>        
                 <tr>           
                     <td align="right"> Correo: </td>       
                     <td> <input type="text" name="mail"> </td>    
                 </tr>  
             </table>   
             <input type="reset" value="Borrar">   
             <input type="submit" value="Enviar">  
         </form>
    </body>
</html>
