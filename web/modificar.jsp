<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
        <h2>Modificar registros </h2><br><br>
        
        <form action="Modificar_SA.do" method="post">
            
  <div class="card text-center" style="background-color:#BFD2A2; width: 18rem;" >
  <div class="card-body" >
  <h5 class="card-title"> Modifique sus datos: </h5>
  <p class="card-text">
     
            <c:forEach var="listaTotal" items="${sessionScope.persona}">
                DUI:
                <input type="text" name="txtDui" value="${listaTotal.dui}" readonly="true"><br><br>
                APELLIDO:
                <input type="text" name="txtNombre" value="${listaTotal.apellido}"><br><br>
                NOMBRE:
                <input type="text" name="txtApellido" value="${listaTotal.nombre}"><br><br>
            </c:forEach>
  </p>
   
             <button type="submit" 
                class="btn btn-secondary"> Modificar </button>
            
       
  </div>
</div>
           
      </form>
    </center>
  
    </body>
</html>
