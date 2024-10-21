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
                <link rel="stylesheet" href="/css/resultado.css" />
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
                                    <a class="nav-link active" style="color: white" aria-current="page" href="/"><i
                                            class="bi bi-house-door-fill"></i> Inicio</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" href="/calcular" style="color: white"><i
                                            class="bi bi-calculator-fill"></i> Volver a Calcular</a>
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
                        <div class="col-12 col-md-2"></div>
                        <div class="col-12 col-md-4" id="resultado">
                            <h2 class="resultado">Resultado IMC: <span> ${imc}</span></h2>
                        </div>
                        <div class="col-12 col-md-4" id="resultado">
                            <h2 class="resultado">Estado Nutricional: <span> ${clasificacion}</span></h2>
                        </div>
                        <div class="col-12 col-md-2"></div>
                    </div>
                </div>
                <div class="contenedor-principal">
                    <h1 class="TITULO1">Nuestras Redes Nutrilife</h1>

                    <div class="categorias">
                        <div class="cat">
                            <a href="/nutricionistas"><img src="img/nutricionistas.png" alt="" /></a>
                        </div>
                        <div class="cat">
                            <a href="/gimnasios"><img src="img/gimnasios.png" alt="" width="95%" /></a>
                        </div>
                        <div class="cat">
                            <a href="/entrenador"><img src="img/entrenador.png" alt="" /></a>
                        </div>
                    </div>
                </div>

                <section>
                    <h1 class="TITULO1">Artículos Recomendados</h1>
                    <br />
                    <br />
                    <div class="contenedor-articulos">


                        <div class="card">
                            <div class="titulo">
                                <h1>La Salud mental ¿Influye?</h1>
                            </div>
                            <img src="img/mental.jpeg" alt="" />
                            <div class="card-body">
                                <p>
                                    La salud mental y la salud física están profundamente
                                    conectadas. El estrés, la ansiedad y la depresión pueden
                                    debilitar el sistema inmunológico, aumentar el riesgo de
                                    enfermedades cardíacas y agravar condiciones crónicas como la
                                    diabetes.
                                </p>
                                <div class="boton"><a href="/articuloSalud"><button class="btn-leer">Leer
                                            Más</button></a></div>
                            </div>

                        </div>


                        <!-- ASDASDA -->


                        <div class="card">
                            <div class="titulo">
                                <h1>Peligros del Sedentarismo</h1>
                            </div>
                            <img src="img/sedentarismo.jpeg" alt="" />
                            <div class="card-body">
                                <p>
                                    El sedentarismo, caracterizado por la falta de actividad física
                                    regular, es un problema creciente en nuestra sociedad. Este
                                    estilo de vida puede tener serias repercusiones en la salud
                                    física y mental.
                                </p>
                                <div class="boton"><a href="/articuloSedentarismo"><button class="btn-leer">Leer
                                            Más</button></a></div>
                            </div>

                        </div>


                        <!-- ASDASDAS -->


                        <div class="card">
                            <div class="titulo">
                                <h1>La importancia del Autoestima</h1>
                            </div>
                            <img src="img/autoestima.jpeg" alt="" />
                            <div class="card-body">
                                <p>
                                    La autoestima, entendida como la percepción que tenemos de
                                    nosotros mismos, juega un papel crucial en nuestra salud física.
                                    La forma en que nos vemos influye en nuestras decisiones y
                                    comportamientos relacionados con el bienestar.
                                </p>
                                <div class="boton"><button class="btn-leer">Leer Más</button></div>
                            </div>

                        </div>


                    </div>
                </section>

                <section>
                    <div class="contenedor-articulos">


                        <div class="card">
                            <div class="titulo">
                                <h1>El Sueño Reparador ¿Existe?</h1>
                            </div>
                            <img src="img/sueño.jpeg" alt="" />
                            <div class="card-body">
                                <p>
                                    El sueño es uno de los pilares más importantes para una vida
                                    saludable. Durante el sueño, el cuerpo y la mente se regeneran,
                                    permitiendo que el sistema inmunológico se fortalezca, las
                                    células se reparen, y el cerebro organice y almacene
                                    información.
                                </p>
                                <div class="boton"><button class="btn-leer">Leer Más</button></div>
                            </div>

                        </div>


                        <!-- ASDASDA -->


                        <div class="card">
                            <div class="titulo">
                                <h1>Hidratación adecuada: Recomendaciones</h1>
                            </div>
                            <img src="img/hidratacion.jpeg" alt="" />
                            <div class="card-body">
                                <p>
                                    La hidratación adecuada es fundamental para el buen
                                    funcionamiento del cuerpo. El agua es esencial para mantener el
                                    equilibrio de fluidos, regular la temperatura corporal, y
                                    facilitar funciones como la digestión, la circulación y la
                                    eliminación de toxinas
                                </p>
                                <div class="boton"><button class="btn-leer">Leer Más</button></div>
                            </div>

                        </div>


                        <!-- ASDASDAS -->


                        <div class="card">
                            <div class="titulo">
                                <h1>¿Cómo empezar? Guía para Principiantes</h1>
                            </div>
                            <img src="img/principiantes.jpeg" alt="" />
                            <div class="card-body">
                                <p>
                                    Iniciar una rutina de ejercicio puede ser abrumador,
                                    especialmente si no has estado activo. Sin embargo, dar el
                                    primer paso es crucial para mejorar tu salud y bienestar. Aquí
                                    hay algunos consejos para ayudarte a comenzar.
                                </p>
                                <div class="boton"><button class="btn-leer">Leer Más</button></div>
                            </div>

                        </div>



                    </div>
                </section>
            </body>

            </html>