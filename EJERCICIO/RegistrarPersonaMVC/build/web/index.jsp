<!DOCTYPE html>

<html>
    <head>
        <title>Registro de personas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Registro de persona</h1>
        
        <form action="recibir.do" method="POST">
            DUI: <input type="text" name="txtDui" value=""><br>
            Apellidos: <input type="text" name="txtApellidos" value=""/> <br>
            Nombres: <input type="text" name="txtNombres" value=""> <br>
            <input type="submit" value="Registrar nueva persona">
        </form>
    </body>
</html>
