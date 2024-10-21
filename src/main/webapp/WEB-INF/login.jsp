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

        <link rel="stylesheet" href="css/login.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
        <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
          crossorigin="anonymous"></script>
      </head>

      <body>
        <main class="container-login">
          <h1 class="titulos-login">Inicia Sesión</h1>
          <div class="formulario ">
            <form:form action="${pageContext.request.contextPath}/iniciarsesion" method="post" modelAttribute="sesion">
              <form:label path="email">Correo electrónico <i class="bi bi-envelope-heart"></i></form:label>
              <form:input path="email" type="email" id="email" name="email" placeholder="nutrilife@mail.com" />
              <form:errors path="email" />

              <form:label path="password">Contraseña <i class="bi bi-braces-asterisk"></i></form:label>
              <form:input path="password" type="password" id="password" name="password" placeholder="********" />
              <form:errors path="password" />

              <button class="iniciasesionbtn" type="submit">Iniciar sesión</button>
            </form:form>
            <a class="info" href="#">¿Has Olvidado la Contraseña?</a>
            <a class="info" href="/usuarios/nuevo">¿No tienes una Cuenta? Registrate Aqui</a>

            <img src="img/logo.png" alt="Logo NutriLife">
          </div>
        </main>
      </body>

      </html>