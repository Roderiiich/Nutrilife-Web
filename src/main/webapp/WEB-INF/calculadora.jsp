<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>NutriLife</title>
                <link rel="icon" href="img/logo.png" />
                <link rel="stylesheet" href="/css/calculadora-imc.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous" />
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>

                <script src=""> </script>
            </head>

            <body>
                <nav class="navbar navbar-expand-lg navbar-light" id="barra">
                    <div class="container-fluid">
                        <img class="logo" src="img/logonutrilife.png" />

                        <a class="navbar-brand" style="font-size: 60px ; font-weight: bold;"
                            href="/">Nutri<span>Life</span> <i class="bi bi-activity"></i>
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link active" style="color: white" aria-current="page" href="/"><i
                                            class="bi bi-house-door-fill"></i> Inicio</a>
                                </li>
                                <c:if test="${not empty sessionScope.nombre}">
                                    <li class="nav-item">
                                        <span class="nav-link" style="color: white;">Bienvenido/a, ${sessionScope.nombre}</span>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/iniciarsesion/logout" style="color: white;"><i class="bi bi-box-arrow-right"></i> Cerrar sesión</a>
                                    </li>
                                </c:if>
                
                                <c:if test="${empty sessionScope.nombre}">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="btninicio" href="/iniciarsesion"><i class="bi bi-person-fill"></i> Inicio de sesión</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </nav>
                <a href="https://wa.me/998329043" class="btn-whatsapp" target="_blank">
                    <i class="bi bi-whatsapp"></i>
                </a>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-12 col-md-4">
                            <div class="bmi-calculator">
                                <h2>CALCULADORA DE IMC</h2>

                                <!-- Input de peso -->
                                <form action="/calcular" method="post">
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="bi bi-clipboard2-pulse-fill"></i>
                                        </span>

                                        <input type="number" id="peso" name="peso" step="1" class="form-control"
                                            placeholder="Peso" required>
                                        <button class="btn btn-unit" type="button">KG</button>
                                    </div>

                                    <!-- Input de altura -->
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="bi bi-rulers"></i>
                                        </span>

                                        <input type="number" id="altura" name="altura" step="0.01" class="form-control"
                                            placeholder="Altura" required>
                                        <button class="btn btn-unit" type="button">M</button>
                                    </div>

                                    <!-- Input de edad -->
                                    <div class="input-group">
                                        <span class="input-group-text">
                                            <i class="bi bi-file-person-fill"></i>
                                        </span>

                                        <input type="number" id="edad" name="edad" class="form-control"
                                            placeholder="Edad" required>
                                        <button class="btn btn-unit" type="button">Años</button>
                                    </div>


                                    <!-- Botón de resultado -->
                                    <button class="btn btn-result">RESULTADO</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-4"></div>
                    </div>
                </div>
            </body>

            </html>