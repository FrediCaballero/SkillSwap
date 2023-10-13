<%-- 
    Document   : Registrar Usuario
    Created on : 12 oct 2023, 19:04:08
    Author     : Juan Alfonso Caceres Estaña
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Datos Personales</title>
        <%@include file="referencias.jsp" %>
    </head>
<<<<<<< HEAD
<body>
    <%@include file="navbar.jsp" %>
    <div class="container_Registro">
        <h1>Registro de Datos Personales</h1>
        <div class="form-container">
            <form method="post">
                <p>
                    <label>Nombre</label>
                    <input type="text">
                </p>
                <p>
                    <label>Apellido</label>
                    <input type="text">
                </p>
                <p>
                    <label>Correo Electronico</label>
                    <input type="email">
                </p>
                <p>
                    <label>DNI</label>
                    <input type="text">
                </p>
                <p>
                    <label>Fecha</label>
                    <input type="date">
                </p>
                <p>
                    <label>Contraseña</label>
                    <input type="password">
                </p>
                <p>
                    <label>Confirmar Contraseña</label>
                    <input type="password">
                </p>
                <p class="block">
                    <button>
                        Enviar
                    </button>
                </p>
            </form>
=======
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container_Registro" >
            <h1>Registro de Datos Personales</h1>
            <div class="form-container-Resgitro">
                <form method="get">
                    <p>
                        <label>Nombre</label>
                        <input type="text">
                    </p>
                    <p>
                        <label>Apellido</label>
                        <input type="text">
                    </p>
                    <p>
                        <label>Correo Electronico</label>
                        <input type="email">
                    </p>
                    <p>
                        <label>DNI</label>
                        <input type="text">
                    </p>
                    <p>
                        <label>Fecha</label>
                        <input type="date">
                    </p>
                    <p>
                        <label>Contraseña</label>
                        <input type="password">
                    </p>
                    <p>
                        <label>Confirmar Contraseña</label>
                        <input type="password">
                    </p>
                    <p class="block" >
                        <a href="PerfilServicio.jsp" class="btn-registro">Enviar</a>
                    </p>
                </form>
            </div>
            <div class="login-link">
                ¿Ya tienes una cuenta? <a onclick="window.location.href = 'login.jsp';">Iniciar Sesión</a>
            </div>
>>>>>>> 61579e41adb2260888903c17c886ba340851f580
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
