<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
                crossorigin="anonymous">
            <title>JSP Page</title>
        </head>

        <body style="color: #ffffff" class="m-0 vh-100 row justify-content-center align-items-center">
            <div class="col-auto bg-dark p-5">
                <table class="row d-flex justify-content-center">
                    <h3 style="text-align: center">Eliminar Datos</h3>

                    <form action="Delete_CA.do" method="post">
                        <c:forEach var="listaTotal" items="${sessionScope.persona}">
                            <div class="mb-3">
                                <label class="form-label">Dui:</label>
                                <div class="col-sm-10">
                                    <input type="text" name="txtDui" value="${listaTotal.dui}">
                                </div>
                            </div>

                            <div>
                                <label class="form-label">Nombre: </label>
                                <div class="col-sm-10">
                                    <input type="text" name="txtNombre" value="${listaTotal.nombre}">
                                </div>
                            </div>

                            <div>
                                <label class="form-label">Apellido:</label>
                                <div class="col-sm-10">
                                    <input type="text" name="txtApellido" value="${listaTotal.apellido}">
                                </div>
                            </div>
                        </c:forEach>
                        <div ><br>
                            <input  class="btn btn-outline-light" type="submit" value="Eliminar Datos">
                        </div>
                    </form>
                </table>
            </div>
        </body>

        </html>