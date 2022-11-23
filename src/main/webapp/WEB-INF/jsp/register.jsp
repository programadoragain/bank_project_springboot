<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap-5.2.2-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome-free-6.2.0-web/css/all.css">
    <link rel="stylesheet" href="css/register&login.css">
    <title>Register</title>
</head>
<body class="d-flex align-items-center justify-content-center">
    <div class="card registration-form-card col-6 bg-transparent border-0">
        <div class="card-body">
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-edit"></i> Registro
            </h1>
            <!--Inicio formulario de registro -->
            <form:form action="/register" class="reg-form" modelAttribute="registerUser">
                <!--Inicio fila-->
                <div class="row">
                    <div class="form-group col">
                        <form:input type="text" path="firstName" class="form-control form-control-lg" placeholder="Ingrese Nombre" />
                        <form:errors path="firstName" class="text-white bg-danger"/>
                    </div>
                    <div class="form-group col">
                        <form:input type="text" path="lastName" class="form-control form-control-lg" placeholder="Ingrese Apellido" />
                        <form:errors path="lastName" class="text-white bg-danger"/>
                    </div>
                </div>
                <!--Fin fila-->
                <div class="form-group col">
                    <form:input type="text" path="email" class="form-control form-control-lg" placeholder="Ingrese Email" />
                    <form:errors path="email" class="text-white bg-danger"/>
                </div>
                <!--Inicio fila-->
                <div class="row">
                    <div class="form-group col">
                        <form:input type="password" path="password" class="form-control form-control-lg" placeholder="Ingrese Password" />
                        <form:errors path="password" class="text-white bg-danger"/>
                    </div>
                    <div class="form-group col">
                        <form:input type="text" path="confirmPassword" class="form-control form-control-lg" placeholder="Confirme Password" />
                        <form:errors path="confirmPassword" class="text-white bg-danger"/>
                    </div>
                </div>
                <!--Fin fila-->
                <div class="form-group col">
                    <button class="btn btn-lg">Registrarse</button>
                </div>
            </form:form>

            <!--Fin formulario de registro-->
            <!--Card Log In-->
            <p class="card-text my-2">¿Ya tienes cuenta? <span class="ms-0 text-warning"><a href="/login" class="btn text-warning p-1">Iniciar sesión</a></span></p>
            <!--End Log In-->

            <!--Back to Home-->
            <small class="text-warning">
                <i class="fa fa-arrow-alt-circle-left"></i><a href="/" class="btn btn-sm text-warning">Volver</a>
            </small>
            <!--End Back to Home-->
        </div>
    </div>
</body>
</html>