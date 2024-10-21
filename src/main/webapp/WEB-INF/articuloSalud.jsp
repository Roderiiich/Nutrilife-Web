<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" href="/css/articuloSalud.css" />
                <link rel="icon" href="img/logo.png" />

                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous" />
                <link rel="stylesheet"
                    href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>
                <title>Document</title>
            </head>

            <body>
                <header>
                    <nav class="navbar navbar-expand-lg navbar-light" id="barra">
                        <div class="container-fluid">
                            <img class="logo" src="img/logo.png" />

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
                                    <a class="nav-link active" href="/resultadoIMC" style="color: white"><i
                                            class="bi bi-skip-backward-fill"></i> Volver Atrás</a>
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
                <main>
                    <section>
                        <div class="img">
                            <img src="img/Salumental.jpg" class="foto">
                        </div>
                        <div class="articulo">
                            <h3>
                                La Salud mental ¿influye?
                            </h3>
                            <p>
                            <ul><strong> Aumenta la felicidad:</strong> Solo 20 minutos de ejercicio pueden liberar
                                endorfinas, las hormonas que mejoran el estado de ánimo.</ul>
                            <ul><strong> Mejora la memoria:</strong> El ejercicio regular puede aumentar el tamaño del
                                hipocampo, la parte del cerebro responsable de la memoria.</ul>
                            <ul><strong> Reduce el riesgo de enfermedades crónicas:</strong> La actividad física
                                disminuye el riesgo de enfermedades como diabetes, hipertensión y problemas cardíacos.
                            </ul>
                            <ul><strong> Beneficia el sueño:</strong> Hacer ejercicio durante el día mejora la calidad
                                del sueño por la noche.</ul>
                            <ul><strong> Protege el cerebro:</strong> El ejercicio ayuda a prevenir el deterioro
                                cognitivo relacionado con la edad.</ul>
                            </p>
                        </div>
                    </section>
                    <section>
                        <div class="articulo">
                            <h3>
                                Los Peligros del Sedentarismo
                            </h3>
                            <p>

                                El sedentarismo, caracterizado por la falta de actividad física regular, es un problema
                                creciente en nuestra sociedad. Este estilo de vida puede tener serias repercusiones en
                                la salud física y mental.
                            <ul><strong>Problemas de Salud Física</strong></ul>
                            <ul>La inactividad está asociada con un mayor riesgo de enfermedades crónicas, como la
                                obesidad, diabetes tipo 2 y enfermedades cardiovasculares. La falta de movimiento afecta
                                la circulación, debilita los músculos y puede contribuir a problemas óseos.</ul>
                            <ul><strong>Impacto en la Salud Mental</strong></ul>
                            <ul>El sedentarismo también afecta la salud mental. La actividad física libera endorfinas,
                                que ayudan a reducir el estrés y la ansiedad. Las personas sedentarias son más propensas
                                a experimentar síntomas de depresión y ansiedad.</ul>
                            <ul><strong>Aumento de Peso</strong></ul>
                            <ul>La falta de ejercicio suele llevar al aumento de peso, ya que el cuerpo quema menos
                                calorías. Esto no solo afecta la autoestima, sino que también aumenta el riesgo de
                                enfermedades relacionadas con la obesidad.</ul>
                            <ul><strong>Menor Energía y Productividad</strong></ul>
                            <ul>Curiosamente, estar inactivo puede resultar en una sensación de fatiga. La actividad
                                física regular aumenta la energía y mejora la concentración, lo que puede llevar a una
                                mayor productividad en la vida diaria.</ul>

                            <b>Combatir el sedentarismo es esencial para mantener una buena salud. Incorporar pequeños
                                hábitos activos en tu rutina diaria puede hacer una gran diferencia en tu bienestar
                                general. ¡No subestimes el poder de moverte!</b>
                            </p>
                        </div>
                        <div class="img">
                            <img src="img/Sedentarismo.jpg" class="foto">
                        </div>
                    </section>
                </main>
            </body>

            </html>