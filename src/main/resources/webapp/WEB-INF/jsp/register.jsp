<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
            <form action="" class="reg-form">
                <!--Inicio fila-->
                <div class="row">
                    <div class="form-group col">
                        <input type="text" name="first_name" class="form-control form-control-lg" placeholder="Ingrese Nombre" />
                    </div>
                    <div class="form-group col">
                        <input type="text" name="last_name" class="form-control form-control-lg" placeholder="Ingrese Apellido" />
                    </div>
                </div>
                <!--Fin fila-->
                <div class="form-group col">
                    <input type="text" name="email" class="form-control form-control-lg" placeholder="Ingrese Email" />
                </div>
                <!--Inicio fila-->
                <div class="row">
                    <div class="form-group col">
                        <input type="password" name="password" class="form-control form-control-lg" placeholder="Ingrese Password" />
                    </div>
                    <div class="form-group col">
                        <input type="text" name="confirm-password" class="form-control form-control-lg" placeholder="Confirme Password" />
                    </div>
                </div>
                <!--Fin fila-->
                <div class="form-group col">
                    <button class="btn btn-lg">Registrarse</button>
                </div>
            </form>
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