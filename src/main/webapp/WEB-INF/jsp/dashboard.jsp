<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap-5.2.2-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome-free-6.2.0-web/css/all.css">
    <link rel="stylesheet" href="css/dashboard.css">
    <script src="css/bootstrap-5.2.2-dist/js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body>
    <!--Inicio cabecera-->
    <header class="main-page-header mb-3 bg-primary">
        <div class="container d-flex align-items-center">
            <div class="company-name">
                Tu banca digital
            </div>

            <div class="navigation">
                <li><a href="">Dashboard</a></li>
                <li><a href="">Historial de pagos</a></li>
                <li><a href="">Historial de transacciones</a></li>
            </div>

            <!--Mostrar nombre-->
            <div class="ms-auto text-white">
                <i class="fa fa-circle text-success me-2"></i> Bienvenido: <span class="display-name"> John Doe</span>
            </div>

            <!--Boton LogOut-->
            <a href="" class="btn btn-sm text-white ms-2">
                <i class="fas fa-sign-out-alt me-2" aria-hidden="true"></i> Salir
            </a>

        </div>
    </header>
    <!--Fin cabecera-->

    <!--Cuerpo completo Offcanvas izquierdo // Toda la pagina incluida la opacidad-->
    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
          <h5 class="offcanvas-title text-white" id="offcanvasExampleLabel">Transacciones</h5>
          <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <!--Offcanvas: cuerpo transacciones-->
        <div class="offcanvas-body">
            <small class="card-text text-white">Elija una de las siguientes opciones:</small>
            <!--Lista Tipo de transaccion-->
            <select id="transact-type" name="transact-type" class="form-control mt-1" id="">
                <option value="">- Seleccionar tipo de transacción -</option>
                <option value="payment">Pago</option>
                <option value="deposit">Deposito</option>
                <option value="whitdraw">Extracción</option>
                <option value="transfer">Transferencia</option>
            </select>

            <!--Tarjeta: tarjeta de pagos (contenido del lateral izquierdo)-->
            <div class="card payment-card mt-2">
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="account_origin">Cuenta Origen</label>
                        <input type="text" name="account_origin" class="form-control" placeholder="Ingrese numero de cuenta de origen">
                    </div>

                    <div class="form-group mb-2">
                        <label for="account_destinity">Cuenta Destino</label>
                        <input type="text" name="account_destinity" class="form-control" placeholder="Ingrese numero de cuenta destino">
                    </div>

                    <div class="form-group mb-2">
                        <label for="account_id">Seleccione cuenta</label>
                        <select name="account_id" class="form-control mt-1" id="">
                            <option value="">xxxx-xxxx-xxxx</option>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="reference">Referencia</label>
                        <input type="text" name="reference" class="form-control" placeholder="Ingrese referencia">
                    </div>

                    <div class="form-group mb-3">
                        <label for="amount">Cantidad</label>
                        <input type="text" name="pay_amount" class="form-control" placeholder="Ingrese cantidad a pagar">
                    </div>

                    <div class="form-group">
                        <button id="pay-btn" class="btn btn-ms pay-btn">Pagar</button>
                    </div>
                </div>
            </div>
            <!--Fin tarjeta de pagos-->

            <!--Tarjeta: tarjeta de transferencias (contenido del lateral izquierdo)-->
            <div class="card transfer-card mt-2">
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="account_id">Seleccione cuenta</label>
                        <select name="account_id" class="form-control mt-1" id="">
                            <option value="">xxxx-xxxx-xxxx</option>
                        </select>
                    </div>

                    <div class="form-group mb-2">
                        <label for="account_id">Seleccione cuenta</label>
                        <select name="account_id" class="form-control mt-1" id="">
                            <option value="">xxxx-xxxx-xxxx</option>
                        </select>
                    </div>

                    <div class="form-group mb-3">
                        <label for="amount">Cantidad</label>
                        <input type="text" name="transfer_amount" class="form-control" placeholder="Ingrese cantidad a transferir">
                    </div>

                    <div class="form-group">
                        <button id="transfer-btn" class="btn btn-ms pay-btn">Transferir</button>
                    </div>
                </div>
            </div>
            <!--Fin tarjeta de transferencias-->

            <!--Tarjeta: tarjeta de depositos (contenido del lateral izquierdo)-->
            <div class="card deposit-card mt-2">
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="account_id">Seleccione cuenta</label>
                        <select name="account_id" class="form-control mt-1" id="">
                            <option value="">xxxx-xxxx-xxxx</option>
                        </select>
                    </div>

                    <div class="form-group mb-3">
                        <label for="amount">Cantidad</label>
                        <input type="text" name="deposit_amount" class="form-control" placeholder="Ingrese cantidad a depositar">
                    </div>


                    <div class="form-group">
                        <button id="deposit-btn" class="btn btn-ms pay-btn">Depositar</button>
                    </div>
                </div>
            </div>
            <!--Fin tarjeta de depositos-->

            <!--Tarjeta: tarjeta de extracción (contenido del lateral izquierdo)-->
            <div class="card withdraw-card mt-2">
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="account_id">Seleccione cuenta</label>
                        <select name="account_id" class="form-control mt-1" id="">
                            <option value="">xxxx-xxxx-xxxx</option>
                        </select>
                    </div>

                    <div class="form-group mb-3">
                        <label for="amount">Cantidad</label>
                        <input type="text" name="whitdraw_amount" class="form-control" placeholder="Ingrese cantidad a extraer">
                    </div>


                    <div class="form-group">
                        <button id="deposit-btn" class="btn btn-ms pay-btn">Extraer</button>
                    </div>
                </div>
            </div>
             <!--Fin tarjeta de extracción-->

        </div>
    </div>

    <!--Cuerpo completo Offcanvas derecho// Toda la pagina incluida la opacidad-->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title text-white" id="offcanvasRightLabel">Agregar cuenta</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>

        <div class="offcanvas-body">
            <!--Cuerpo offcanvas derecho-->
            <div class="card">
              <div class="card-body">

                  <form action="" class="add-account-form">
                      <div class="form-group mb-3">
                          <label for="account_name">Nombre de cuenta</label>
                          <input type="text" name="account_name" class="form-control" placeholder="Ingrese el nombre de cuenta">
                      </div>

                      <div class="form-group mb-3">
                          <label for="account_name">Tipo de cuenta</label>
                          <select name="account_type" class="form-control" id="">
                              <option value="">- Seleccionar tipo de cuenta -</option>
                              <option value="">Ahorro</option>
                              <option value="">Negocio</option>
                              <option value="">Cheque</option>
                          </select>
                      </div>
                      <!--
                      <div class="form-group mb-3">
                          <label for="account_name"></label>
                          <input type="text" name="account_name" class="form-control" placeholder="">
                      </div>
                      -->

                      <div class="form-group">
                          <button id="" class="btn btn-primary shadow" type="button">
                            <i class="fa fa-credit-card"></i> Agregar cuenta
                          </button>
                      </div>
                  </form>
              </div>
            </div>
        </div>
    </div>

    <!--Inicio contenedor de botones-->
    <div class="container d-flex">
        <button id="account-btn" class="btn btn-md shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
            <i class="fa fa-credit-card"></i> Agregar cuenta
        </button>
        <button id="transact-btn" class="btn btn-md shadow ms-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
            <i class="fa fa-wallet"></i>  Transacciones
        </button>
    </div>

    <!--Balance de cuentas-->
    <div class="container d-flex py-3">
        <h2 class="me-auto">Balance total de cuentas: </h2>
        <h2 class="ms-auto">0.00</h2>
    </div>

    <!--Acordeon Menu-->
    <div class="container">
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingOne">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                  Accordion Item #1
                </button>
              </h2>
              <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                  Accordion Item #2
                </button>
              </h2>
              <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
              </div>
            </div>
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                  Accordion Item #3
                </button>
              </h2>
              <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
              </div>
            </div>
          </div>
    </div>

    <div class="container">
        <div class="card no-accounts-card">
            <div class="card-body">
                <h1 class="card-title">
                    <i class="fa fa-ban text-danger"></i> No se registran cuentas
                </h1>
                <div class="card-text">
                    Actualmente no registra ninguna cuenta.
                    <br> Por favor, haga click en [Agregar cuenta]"
                </div>
                <br>
                <button id="" class="btn btn-primary shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                    <i class="fa fa-credit-card"></i> Agregar cuenta
                </button>
            </div>
        </div>
    </div>

    <script src="js/dashboard.js"></script>
</body>
</html>