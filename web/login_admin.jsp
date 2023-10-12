<!DOCTYPE html>
<html lang="en">
        <head>
            <title>Login </title>
            <link rel="stylesheet" type="text/css" href="css/style.css">
            <link href="INTRANET/intranet/css/login.css" rel="stylesheet" type="text/css"/>
            <script src="https://kit.fontawesome.com/a81368914c.js"></script>
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        </head>
        <body>
            <div>
                <img class="wave" src="../../imagenes/2.png" style="width: 170px; height: 170px" alt=""/>
            </div>
            <div class="container">
                <div class="img">
                    <img src="../intranet/img/undraw_ice_cream_s-2-rh.svg" alt=""/>
                </div>
                <div class="login-content">
                    <form method="POST" name="form" action="login.php">
                                    <img src="../intranet/img/undraw_female_avatar_efig.svg" alt=""/>
                        <h2 class="title">Bienvenid@</h2>
                     
                           <div class="input-div one">
                              <div class="i">
                                      <i class="fas fa-user"></i>
                              </div>
                              <div class="div">
                                      <h5>Nombre</h5>
                                        <input id="nombreusuario" type="text" class="input" name="nombreusuario">
                              </div>
                           </div>
                           <div class="input-div pass">
                              <div class="i"> 
                                   <i class="fas fa-lock"></i>
                              </div>
                              <div class="div">
                                   <h5>Contraseña</h5>
                                        <input id="password" name="password" type="password" class="input">
                           </div>
                        </div>
                        <a href="#">Olvidé mi contraseña</a>
                        <input style="color:white; "name="btningresar" id="button-pass" type="submit" class="btn" onclick="" value="Ingresar"></a>
                    </form>
                </div>
            </div>
            
                <!-- script para insertar iconos -->
                <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script> 
                
                
                
                <!-- script js -->
                <script src="INTRANET/intranet/js/login.js" type="text/javascript"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        </body>
        </html>

