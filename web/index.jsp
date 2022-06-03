

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <body>
         <center>
       <h1> Registro de personas </h1>
        
        <form action="recibir_SA.do" method="POST">
            
            <div class="card text-center" style="background-color:aliceblue; width: 18rem;" >
  <div class="card-body" >
  <h5 class="card-title"> Ingrese sus datos: </h5>
  <p class="card-text">
      
            <label>DUI: </label>
            <input type="text" name="txtDui" value="" /><br><br>
            <label>Apellidos: </label>
            <input type="text" name="txtApellido" value="" /><br><br>
            <label>Nombre: </label>
            <input type="text" name="txtNombre" value="" /><br><br>
            
  </p>
   
             <button type="submit" 
                class="btn btn-primary"> Registrar </button>
            
            <a href="Mostrar_CA.do">Ver registros</a></tr>
  </div>
</div>

    </form>
       </center>
    </body>
</html>
