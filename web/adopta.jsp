<%-- 
    Document   : adopta
    Created on : 5 oct. 2023, 18:42:14
    Author     : Lesly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="adopta.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

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
    <link href="css/Adopta.css" rel="stylesheet" type="text/css"/>
    <title>Adopta</title>
</head>
<body>
<section class="principal">
    <div class="hm-wrapper">

        <!-- =================================
           HEADER MENU
        ================================== -->
        <div class="hm-header">

            <div class="container">
                <div class="header-menu">

                    <div class="hm-logo">
                        <a href="#">
                            <img src="Cat cafe.png" alt="">
                        </a>
                    </div>

                    <nav class="hm-menu">
                        <ul>
                            <li><a href="index.jsp">Inicio</a></li>
                            <li><a href="nosotros.jsp">Nosotros</a></li>
                            <li><a href="productos.jsp">Productos</a></li>
                            <li><a href="">Contacto</a></li>
                            <li><a href="adopta.jsp">Adopta</a></li>
                            <li><a href="">Atencion al cliente</a></li>
                        </ul>


                        <div class="hm-icon-cart">
                            <a href="#">
                                <i class="las la-shopping-cart"></i>
                                <span>0</span>
                            </a>
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

    </div>
</section>

<header>
    
</header>
    <main>
        <section class="container about">
            <h2 class="subtitle">¿Por que deberias adoptar?</h2>
            <div class="about__main">
                <article class="about__icons">
                    <img src="./images/shapes.svg" class="about__icon">
                    <h3 class="about__title">Los gatos son bastante ordenados, les gustan las rutinas</h3>
                </article>

                <article class="about__icons">
                    <img src="./images/paint.svg" class="about__icon">
                    <h3 class="about__title">Se puede entretener con cualquier cosa</h3>
                </article>

                <article class="about__icons">
                    <img src="./images/code.svg" class="about__icon">
                    <h3 class="about__title">Suelen ser muy silenciosos y tranquilos</h3>
                </article>
            </div>
        </section>
        <header>
            <div class="textos">
                <h1>Adopta</h1>
                <h1>Miles de gatitos esperan un hogar</h1>
            </div>
        </header>
   
    </main>
        <section class="gatos">
            <div class="carousel">

                <h2>Carousel</h2>
        
                <div class="carrusel-list" id="carrusel-list">
        
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
                                    <picture>
                                        <img src="descarga.jpeg" alt="imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
    
                                  
                                    <picture>
                                        <img src="Gatos-enanos.jpg"imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
        
                                 
                                    <picture>
                                        <img src="Gatos-enanos.jpg" alt="imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
        
                          
                                    <picture>
                                        <img src="gato_pequexo_crop1630166426489.jpeg_423682103.webp" alt="imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
        
           
                                    <picture>
                                        <img src="Gatos-enanos.jpg" alt="imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
        
                             
                             
                                    <picture>
                                        <img src="12_razas_de_gatos_finos_24255_orig.jpg" alt="imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
        
                              
                              
                                    <picture>
                                        <img src="gato_pequexo_crop1630166426489.jpeg_423682103.webp" alt="imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
        
                              
                                  
                                    <picture>
                                        <img src="Gatos-enanos.jpg" alt="imagen">
                                    </picture>
                                </a>
        
                            </div>
        
                        </div>
                        <div class="carrusel">
        
                            <div>
        
                               
                                 
                                    <picture>
                                        <img src="gato_pequexo_crop1630166426489.jpeg_423682103.webp" alt="imagen">
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
        
                
        </section>
        <section class="container about">
        <h2 class="subtitle">CONVIERTE TU CASA EN UN HOGAR ADOPTANDO UN GATO</h2>
        <p>Pon un gato en tu vida y te relajarás con sus ronroneos, te hará sentir especial y único cuando te buscará (recuerda: ellos siempre deciden cuándo). Pero como toda decisión importante en la vida, el adoptar un gato no puede ser 
            una decisión rápida, necesitas meditártela bien, pues este gato que tú quieres se merece la mejor familia y no ser el capricho de un momento especial. Necesita un héroe, no un “quiero pero no puedo”, no es un juguete, no puede ser un capricho. ¿Estás preparado para ser SU héroe?.</p>
        
        </div>
    </section>
        
<section class="piedepagina">
    
    <div class="pie-pagina ">
        <div class="contenedor-piepagina contenedor">
            <div class="info">
                <h3>Dirección</h3>
                <p>Av </p>
            </div>
            <div class="info">
                <h3>Días especiales</h3>
                <p>Sabados y Jueves 7am - 11pm</p>
                <p>923476431</p>
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
        <p>Todos los derechos reservados &copy; 2023 Cat cafe desarrollado por Lesly y Nayly</p>
    </footer>

</section>

    <script src="js/Adopta.js" type="text/javascript"></script>
   
</body>
</html>

