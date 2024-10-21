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

                <link rel="stylesheet" href="/css/registro.css" />
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
                <main class="contenedor-registro">
                    <h1 class="titulos-login">Registrate <span>¡AHORA!</span></h1>
                    <div class="formulario1">

                        <form:form action="/usuarios/nuevo" method="POST" modelAttribute="usuario">
                            <form:label path="nombre" for="nombre">Nombre</form:label>
                            <form:input path="nombre" type="text" id="nombre" name="nombre" placeholder="Mario" />
                            <form:errors path="nombre" />

                            <form:label path="apellido" for="apellido">Apellido</form:label>
                            <form:input path="apellido" type="text" id="apellido" name="apellido" placeholder="Castillo" />
                            <form:errors path="apellido" />

                            <form:label path="email" for="email">Correo electrónico <i class="bi bi-envelope-heart"></i>
                            </form:label>
                            <form:input path="email" type="email" id="email" name="email" placeholder="Mario12@correo.com" />
                            <form:errors path="email" />

                            <form:label path="passwordForm" for="passwordForm">Contraseña <i
                                    class="bi bi-braces-asterisk"></i></form:label>
                            <form:input path="passwordForm" type="password" id="passwordForm" name="passwordForm" placeholder="********"/>
                            <form:errors path="passwordForm" />

                            <form:label path="passwordConfirm" for="passwordConfirm">Confirmar contraseña <i
                                    class="bi bi-braces-asterisk"></i></form:label>
                            <form:input path="passwordConfirm" type="password" id="passwordConfirm"
                                name="passwordConfirm" placeholder="********"/>
                            <form:errors path="passwordConfirm" />

                            <label for="checkbox" class="ofertas"><input type="checkbox" checked name="checkbox">Acepta
                                recibir más información a su email</label>
                            <button class="btnRegistrate" type="submit">Registrarse</button>
                        </form:form>
                        <a class="info" href="/iniciarsesion">¿Ya Tienes una Cuenta? Inicia Sesión</a>
                    </div>
                </main>
            </body>

            </html>