<%-- 
    Document   : formulario
    Created on : 14-11-2022, 03:13:54
    Author     : Luciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>EPE 2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Almarai&amp;display=swap">
    <link rel="stylesheet" href="assets/css/estilos.css">
</head>

<body>
    <%String nombrePelicula = request.getParameter("nombrePelicula");%>
    <div>
        <nav class="navbar navbar-light navbar-expand-md menu">
            <div class="container-fluid"><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="index.html">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="catalogo.html">Catálogo</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
    <div class="formulario">
        <section class="position-relative py-4 py-xl-5">
            <div class="container position-relative">
                <div class="row d-flex justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-9 col-xxl-4">
                        <div class="card mb-5">
                            <div class="card-body p-sm-5">
                                <h2 class="text-center mb-4">Alquilar Película</h2>
                                <form action="servlet" method="post">
                                    <div class="mb-2"><input class="form-control" type="text" id="nombrePelicula" name="nombrePelicula" placeholder="Nombre Película" required="" readonly="" value="<%=nombrePelicula%>"></div>
                                    <div class="mb-3"><input class="form-control" type="text" id="nombre" name="nombre" placeholder="Nombre completo" pattern=".{10,}" title="El nombre debe tener como mínimo 10 carácteres" required=""></div>
                                    <div class="mb-3"><input class="form-control" type="text" id="telefono" name="telefono" placeholder="Telefóno" pattern="[0-9]+" title="Debe ingresar solo números" required=""></div>
                                    <div class="mb-3"><input class="form-control" type="text" id="direccion" name="direccion" placeholder="Dirección" required=""></div>
                                    <div class="mb-3"><p>Ingrese fecha de inicio y luego fecha final de la reserva:</p>
                                                      <input class="form-control" id="fechaInicio" type="date" name="fechaInicio" required=""></div>
                                    <div class="mb-3"><input class="form-control" id="fechaFinal" type="date" name="fechaFinal" required=""></div>
                                    <div class="mb-3"><textarea class="form-control" id="comentario" name="comentario" rows="6" placeholder="Si tiene algún comentario ingreselo aquí."></textarea></div>
                                    <div><button class="btn btn-primary d-block w-100" id="botonFormulario" type="submit">Alquilar</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="footer">
        <p>Filmax (c) 2022 - Todos los derechos reservados.<br></p>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/main.js"></script>
</body>

</html>