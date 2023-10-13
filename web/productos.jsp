<%-- 
    Document   : productos
    Created on : 5 oct. 2023, 18:42:28
    Author     : Lesly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home Master Store</title>

    <!-- FUENTE GOOGLE FONTS : Poppins -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- ICONS: Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <!-- ICONS: Line Awesome -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

    <!-- Animaciones AOS -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css">


    <!-- Mis Estilos -->
    <link href="css/producto.css" rel="stylesheet" type="text/css"/>

</head>
<body>

        <!-- =================================
           HEADER MENU
        ================================== -->
        <header>  
            <div class="hm-header">
    
                <div class="container">
                    <div class="header-menu">
    
                        <div class="hm-logo">
                            <a href="#">
                                <img src="imagenes/Cat cafe.png" alt="">
                            </a>
                        </div>
    
                        <nav class="hm-menu">
                            <ul>
                                <li><a href="index.jsp">Inicio</a></li>
                                <li><a href="nosotros.jsp">Nosotros</a></li>
                                <li><a href="productos.jsp">Productos</a></li>
                                <li><a href="">Contacto</a></li>
                                <li><a href="">Adopta</a></li>
                                <li><a href="">Atencion al cliente</a></li>
                            </ul>
                     <div class="hm-icon-cart">
                                    <a href="#">
                                        <i class="las la-shopping-cart" id="cart-icon"></i>
                                        <span class="item-count">0</span> 

                                    </a>
                                </div>
                                <div class="cart">
                                    <h2 class="cart-title">Mi carrito</h2>
                                    <div class="cart-content">
                                       
                                           
                                    </div>
                                    <div class="total">
                                        <div class="total-title">Total</div>
                                        <div class="total-price">$0</div>
                                    </div>
                                <button id="btn-abrir-popup"type="button" class="btn-buy">Finalizar compra</button>
                                    
                                    <i class="bx bx-x" id="close-cart"></i>
                    
                                </div> 
                                <div class="overlay" id="overlay">
                                    <div class="popup" id="popup">
                                        <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
                                        <h3> Medio de pago</h3>
                                        
                                        <form action="">
                                            <div class="contenedor-inputs">
                                                <input type="text" placeholder="Numero de tarjeta">
                                                <input type="text" placeholder="Nombre del titular">
                                                <input type="number" placeholder="Fecha de vencmiento (MM/AA)">

                                            </div>
                                            <input onclick="pagar()" type="submit" class="btn-submit" value="Pagar">
                                            <script>
                                                function pagar() {
                                                    Swal.fire({
                                                        title: "Pago confirmado",
                                                        icon: "success",
                                                        confirmButtonText: "Continuar"
                                                    });
                                                }
                                            </script>
                                            
                                        </form>
                                    </div>
                                </div>
                               
                                <div class="icon-menu">
                                    <button type="button"><i class="fas fa-bars"></i></button>
                                </div>
        
    
                            
                            
                        </nav>
    
                    </div>
                </div>
    
            </div>
    
            <!-- =================================
               HEADER MENU Movil
            ================================== -->
            <div class="header-menu-movil">
                <button class="cerrar-menu"><i class="fas fa-times"></i></button>
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="nosotros.jsp">Nosotros</a></li>
                    <li><a href="productos.jsp">Productos</a></li>
                    <li><a href="">Contacto</a></li>
                    <li><a href="">Adopta</a></li>
                    <li><a href="">Atencion al cliente</a></li>
                </ul>
            </div>
          </header>
           
    
         
        <section class="shop container">
            <div class="shop-content">
                <div class="product-box">
                    <img src="imagenes/cafe pasado.jpeg" alt="" class="product-img">
                    <h2 class="product-title">Cafe pasado</h2>
                    <span class="price">$30.00</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="imagenes/café-cortado.jpeg" alt="" class="product-img">
                    <h2 class="product-title">Cafe cortado</h2>
                    <span class="price">$10.00</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="imagenes/cafe latte.jpeg" alt="" class="product-img">
                    <h2 class="product-title">Cafe latte</h2>
                    <span class="price">$7.00</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="imagenes/mocaccino.jpg" alt="" class="product-img">
                    <h2 class="product-title">Mocaccino</h2>
                    <span class="price">$10.50</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="imagenes/espresso.jpg" alt="" class="product-img">
                    <h2 class="product-title">Espresso</h2>
                    <span class="price">$4.00</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="imagenes/Americano_nobg.png" alt="product-img"/>
                    <h2 class="product-title">Americano</h2>
                    <span class="price">$9.00</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="imagenes/cafe almendrado.jpg" alt="" class="product-img">
                    <h2 class="product-title">Cafe Almendrado</h2>
                    <span class="price">$18.00</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
                <div class="product-box">
                    <img src="imagenes/café-cortado.jpeg" alt="" class="product-img">
                    <h2 class="product-title">Cafe Cortado</h2>
                    <span class="price">$8.00</span>
                    <i class="bx bx-cart-alt add-cart"></i>
                </div>
            </div>
        </section>
        <section class="contenido2">
          
            <section class="carrusel-img">
                <div class="carousel">
            
                    
                    <div class="carrusel-list" id="carrusel-list" >
            
                        <button class="carrusel-arrow carrusel-prev" id="button-prev" data-button="button-prev"
                            onclick="app.processingButton(event)">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-left"
                                class="svg-inline--fa fa-chevron-left fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 320 512">
                                <path fill="currentColor"
                                    d="M34.52 239.03L228.87 44.69c9.37-9.37 24.57-9.37 33.94 0l22.67 22.67c9.36 9.36 9.37 24.52.04 33.9L131.49 256l154.02 154.75c9.34 9.38 9.32 24.54-.04 33.9l-22.67 22.67c-9.37 9.37-24.57 9.37-33.94 0L34.52 272.97c-9.37-9.37-9.37-24.57 0-33.94z">
                                </path>
                            </svg>
                        </button>
            
                        <div class="carrusel-track" id="track">
            
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4>  </h4>
                                        <picture>
                                            <a href="imagenes/cafe expre.avif" alt="imagen" ></a>
  
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4>  </h4>
                                        <picture>
                                            <img src="imagenes/cafe cortado.png" alt="imagen"/>
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4> </h4>
                                        <picture>
                                            <img src="imagenes/pstre3.jpg" alt="imagen"/>
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4>  </h4>
                                        <picture>
                                            <img src="imagenes/postre5.jpeg" alt="imagen"/>
                                            
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4>  </h4>
                                        <picture>
                                            <img src="imagenes/enpanada.jpeg" alt="imagen"/>
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4> </h4>
                                        <picture>
                                            <img src="imagenes/galletaschip.jpg" alt="imagen"/>
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4>  </h4>
                                        <picture>
                                            <img src="imagenes/sandwish de queso.jpeg" alt="imagen"/>
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4>  </h4>
                                        <picture>
                                            <img src="imagenes/postre.jpeg" alt="imagen"/>
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
                            <div class="carrusel">
            
                                <div>
            
                                    <a href="/">
                                        <h4>  </h4>
                                        <picture>
                                            <img src="imagenes/postre1.jpg" alt="imagen"/>
                                        </picture>
                                    </a>
            
                                </div>
            
                            </div>
            
                            
            
                        </div>
            
                        <button class="carrusel-arrow carrusel-next" id="button-next" data-button="button-next"
                            onclick="app.processingButton(event)">
                            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right"
                                class="svg-inline--fa fa-chevron-right fa-w-10" role="img" xmlns="http://www.w3.org/2000/svg"
                                viewBox="0 0 320 512">
                                <path fill="currentColor"
                                    d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z">
                                </path>
                            </svg>
                        </button>
            
            
                    </div>
            
                </div> 
            </section>
        </section>


 
<section class="contenido3">
    <h2 class="subtitle">Mas opciones</h2>
    <div class="button-container">
        <button id="button1">Te</button>
        <button id="button2">Sandwish</button>
    </div>
<div class="card" id="card1">
    
<section class="te container">
    
    <div class="shop-content">
        <div class="product-box">
            <img src="imagenes/manzanilla.jpg" alt="" class="product-img"/>
            <h2 class="product-title">Manzanilla</h2>
            <span class="price">$3.00</span>
            <i class="bx bx-cart-alt add-cart"></i>
        </div>
        <div class="product-box">
            
  <img src="imagenes/manzanilla.jpg" alt="" class="product-img"/>
            <h2 class="product-title">Anis</h2>
            <span class="price">$3.00</span>
            <i class="bx bx-cart-alt add-cart"></i>
        </div>
        <div class="product-box">
            <img src="imagenes/te puro.jpeg" alt="" class="product-img">
            <h2 class="product-title">Te puro</h2>
            <span class="price">$8.00</span>
            <i class="bx bx-cart-alt add-cart"></i>
        </div>
        
       
    </div>
</section>



</div>


<div class="card" id="card2">
    <section class=" cafe container">
        <div class="shop-content">
            <div class="product-box">
                <img src="imagenes/sandwish de queso.jpeg" alt="" class="product-img">
                <h2 class="product-title">Sandwish de queso</h2>
                <span class="price">$5.00</span>
                <i class="bx bx-cart-alt add-cart"></i>
            </div>
            <div class="product-box">
                <img src="imagenes/sandwish de jamon.jpeg" alt="" class="product-img">
                <h2 class="product-title">Sandwish de jamon</h2>
                <span class="price">$5.00</span>
                <i class="bx bx-cart-alt add-cart"></i>
            </div>
            <div class="product-box">
                <img src="imagenes/enpanada.jpeg" alt="" class="product-img">
                <h2 class="product-title">Enpanada</h2>
                <span class="price">$8.00</span>
                <i class="bx bx-cart-alt add-cart"></i>
            </div>
            
           
        </div>
    </section>
</div>

</section>
    
      
        <div class="pie-pagina ">
            <div class="contenedor-piepagina contenedor">
                <div class="info">
                    <h3>Dirección</h3>
                    <p>23.Roma Italia 75012</p>
                </div>
                <div class="info">
                    <h3>Días especiales</h3>
                    <p>Sabados y Jueves 7am - 11pm</p>
                    <p>923678431</p>
                </div>
                <div class="info">
                    <h3>Horarios</h3>
                    <p>Lunes - Domingo 7am - 11pm</p>
                    <div class="redes-sociales redes-pie">
                        <i class="fab fa-facebook-square"></i>
                        <i class="fab fa-twitter-square"></i>
                        <i class="fab fa-instagram"></i>
                    </div>
                </div>
                <div class="info">
                    <h3>Noticias</h3>
                    <p>suscribete para recibir más noticias</p>
                    <input type="email" placeholder="Tu correo">
                    <input type="submit" class="btn btn-verde" value="Suscribirse">
                </div>
            </div>
        </div>
        <footer class="footer">
            <p>Todos los derechos reservados &copy; 2023 Cat cofe, desarrollado por Lesly y Naylyn</p>
        </footer>
       
    
    </body>
    
    </html>
    
    <!-- Animaciones : AOS-->
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


    <!-- Mi Script -->
 
    <script src="js/producto.js" type="text/javascript"></script>
    <script>
    
        AOS.init({
            duration: 1200,
        })


    </script>

</body>
</html>
         
 
