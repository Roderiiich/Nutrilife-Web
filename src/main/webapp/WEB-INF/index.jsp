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
                <link rel="stylesheet" href="css/index.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous" />
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>
            </head>

            <body>
                <header>
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
                                        <a class="nav-link active" style="color: white" aria-current="page"
                                            href="#principal"><i class="bi bi-file-text-fill"></i> Quienes Somos</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" style="color: white" aria-current="page"
                                            href="#porque-nutrilife">
                                            <i class="bi bi-activity"></i> ¿Por qué NutriLife?</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#calcula-imc" style="color: white"><i
                                                class="bi bi-calculator-fill"></i> Calcula tu IMC</a>
                                    </li>
                                    <c:if test="${not empty sessionScope.nombre}">
                                        <li class="nav-item">
                                            <span class="nav-link" style="color: white;">Bienvenido/a,
                                                ${sessionScope.nombre}</span>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="/iniciarsesion/logout" style="color: white;"><i
                                                    class="bi bi-box-arrow-right"></i> Cerrar sesión</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${empty sessionScope.nombre}">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="btninicio" href="/iniciarsesion"><i
                                                    class="bi bi-person-fill"></i> Inicio de sesión</a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </header>
                <script type="text/javascript">
                    window.addEventListener("scroll", function () {
                        var header = document.querySelector("header");
                        header.classList.toggle("sticky", window.scrollY > 0)
                    })



                </script>

                <a href="https://wa.me/998329043" class="btn-whatsapp" target="_blank">
                    <i class="bi bi-whatsapp"></i>
                </a>
                <section class="principal" id="principal">
                    <div class="container-fluid1">
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <h1 class="titulo">Bienvenido a NutriLife: Tu Socio en Salud y Bienestar</h1>
                                <h4 class="contenido">Descubre una nueva forma de cuidar tu salud con nuestra innovadora
                                    Calculadora
                                    de IMC. En NutriLife, entendemos que cada cuerpo es único, y estamos aquí para
                                    ayudarte a
                                    mantenerte en el camino correcto hacia un estilo de vida saludable.</h4>
                            </div>
                            <div class="col-12 col-md-6 text-center">
                                <img class="logoprincipal" src="img/nutricionista.jpeg" alt="">
                            </div>

                        </div>
                    </div>
                </section>

                <section class="secundario" id="porque-nutrilife">
                    <div class="container">

                        <div class="row " style="text-align: center;">
                            <h1 class="sub-titulo">¿Por qué elegir NutriLife?</h1>
                            <div class="col-12 col-md-4" id="cards">
                                <div class="card w-100 h-100">
                                    <img class="card-img-top" src="img/recurso3.jpeg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title"><span>Fácil de usar</span></h4>
                                        <p class="card-text">
                                            Calcula tu IMC en segundos con nuestra interfaz intuitiva.
                                        </p>

                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="card w-100 h-100">
                                    <img class="card-img-top" src="img/recursos.jpeg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title"><span>Recomendaciones personalizadas</span></h4>
                                        <p class="card-text">
                                            Obtén consejos adaptados a tus necesidades específicas.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="card card w-100 h-100">
                                    <img class="card-img-top" src="img/recurso4.jpeg" alt="Card image cap">
                                    <div class="card-body">
                                        <h4 class="card-title"><span>Educación y recursos</span></h4>
                                        <p class="card-text">
                                            Aprende más sobre nutrición y bienestar con nuestros artículos y guías.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                </section>
                <section class="calcula-tu-imc" id="calcula-imc">
                    <div class="container-fluid " id="imc">
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <h1 class="sub-titulo">¿Qué es el IMC?</h1>
                                <h4 class="contenido">El Índice de Masa Corporal (IMC) es una herramienta clave para
                                    evaluar tu
                                    estado de salud general. Con solo unos pocos datos, nuestra calculadora te
                                    proporcionará una
                                    visión clara y precisa de tu índice y te ofrecerá recomendaciones personalizadas
                                    para optimizar
                                    tu bienestar.</h4>
                            </div>
                            <div class="col-12 col-md-6">
                                <img class="imc-img" src="img/imc2.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <div class="container w-100">
                        <div class="row">
                            <div class="col-12 col-md-12">
                                <h1 class="sub-tit">¡Calcula tu IMC hoy mismo y transforma tu salud con NutriLife!</h1>
                                <button><a href="/calcular">CALCULA TU IMC</a></button>
                                <h2 class="frase"><i>"Tu bienestar es nuestra prioridad"</i> </h2>
                            </div>
                        </div>
                    </div>
                </section>



                </div>

                <footer>
                    <p>©Todos los Derechos Reservados BootCamp FullStack Java Developer</p>
                    <p>Rodrigo Cortés - Judith Medina - Miguel Aguilar - Daniela Silva - Sebastián Salas - Tatiana
                        Alvial</p>
                </footer>
            </body>

            </html>