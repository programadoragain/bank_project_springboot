<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap-5.2.2-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome-free-6.2.0-web/css/all.css">
    <link rel="stylesheet" href="css/register&login.css">
    <title>Iniciar Sesión</title>
</head>
<body class="d-flex align-items-center justify-content-center">
    <div class="card login-form-card col-4 bg-transparent border-0">
        <div class="card-body">
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-user-circle"></i> Inicio de sesión
            </h1>
            <!--Inicio de sesión formulario -->
            <form action="" class="login-form">
                <div class="form-group col">
                    <input type="text" name="email" class="form-control form-control-lg" placeholder="Ingrese Email" />
                </div>

                <div class="form-group col">
                    <input type="password" name="password" class="form-control form-control-lg" placeholder="Ingrese Password" />
                </div>

                <div class="form-group col">
                    <button class="btn btn-lg">Iniciar sesión</button>
                </div>
            </form>
            <!--Fin formulario incio de sesión-->
            <!--Card Log In-->
            <p class="card-text my-2">¿Todavia no tienes cuenta? <span class="ms-0 text-warning"><a href="/register" class="btn text-warning p-1">Registrarse</a></span></p>
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