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
                <link rel="stylesheet" href="/css/entrenadores.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous" />
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>

                <script src=""></script>
            </head>

            <body>
                <nav class="navbar navbar-expand-lg navbar-light" id="barra">
                    <div class="container-fluid">
                        <img class="logo" src="img/logonutrilife.png" />

                        <a class="navbar-brand" style="font-size: 60px; font-weight: bold"
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
                                    <a class="nav-link active" style="color: white" aria-current="page"
                                        href="/resultadoIMC"><i class="bi bi-file-text-fill"></i> Volver Atrás</a>
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

                <h1 class="titulo">Nuestra Red de Entrenadores</h1>

                <h3 class="sub-titulo"><span><i class="bi bi-activity"></i> NutriLife <i
                            class="bi bi-activity"></i></span> Colabora con los mejores Preparadores Físicos que hay en
                    el país.</h3>
                <div class="contenedor-cards">
                    <div class="card">
                        <img src="img/coach1.png" alt="" />
                        <div class="card-body">
                            <h4>Alejandro Lastra</h4>
                            <p>Personal Trainer</p>

                            <p>Hualpén , Chile</p>
                            <div class="btn-contactar">
                                <a
                                    href="https://www.superprof.cl/holaa-estas-buscando-entrenador-personal-gimnasio-privado-centro-concepcion-cual-nunca.html"><button>
                                        <i class="bi bi-telephone-fill"></i> Contacto
                                    </button></a>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/coach6.png" alt="" />
                        <div class="card-body">
                            <h4>Sebastián Ulloa.</h4>
                            <p>Preparador Físico</p>
                            <p>Santiago , Chile</p>
                            <div class="btn-contactar">
                                <a href="https://www.instagram.com/personal_trainer_concepcion/"><button>
                                        <i class="bi bi-telephone-fill"></i> Contacto
                                    </button></a>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/coach3.png" alt="" />
                        <div class="card-body">
                            <h4>Natalia Ruiz</h4>
                            <p>Personal Trainer</p>
                            <p>Temuco , Chile</p>
                            <div class="btn-contactar"></div>
                            <a href="https://www.instagram.com/natiruizz.fit/tagged/"><button>
                                    <i class="bi bi-telephone-fill"></i> Contacto
                                </button></a>
                        </div>
                    </div>
                </div>
                </div>
                <div class="contenedor-cards">
                    <div class="card">
                        <img src="img/coach4.png" alt="" />
                        <div class="card-body">
                            <h4>Ari Libertad</h4>
                            <p>Personal Trainer</p>
                            <p>Chiguayante , Chile</p>
                            <div class="btn-contactar">
                                <a href="https://www.instagram.com/arii.coach/"><button>
                                        <i class="bi bi-telephone-fill"></i> Contacto
                                    </button></a>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/coach5.png" alt="" />
                        <div class="card-body">
                            <h4>Jonathan Tapia</h4>
                            <p>Personal Trainer</p>
                            <p>Concepción, Chile</p>
                            <div class="btn-contactar">
                                <a href="https://www.instagram.com/jonathan_tapiav/"><button>
                                        <i class="bi bi-telephone-fill"></i> Contacto
                                    </button></a>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <img src="img/coach2.png" alt="" />
                        <div class="card-body">
                            <h4>Marco Muñoz</h4>
                            <p>Preparador Físico</p>

                            <p>Talcahuano, Chile</p>
                            <div class="btn-contactar">
                                <a href="https://www.instagram.com/ingfit.gimnasio/"><button>
                                        <i class="bi bi-telephone-fill"></i> Contacto
                                    </button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </body>

            </html>