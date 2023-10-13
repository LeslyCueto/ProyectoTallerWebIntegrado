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
    <link href="css/nosotros.css" rel="stylesheet" type="text/css"/>
    <title>Nosotros</title>
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
                            <img src="imagenes/Cat cafe.png" alt=""/>
                           
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


    <main>
        <section class="container about">
            <h2 class="subtitle">¿Quienes somos?</h2>
            <p class="about__paragraph"> En CatCafe, somos amantes apasionados de los gatos con una misión única: crear un refugio cálido y acogedor para nuestros amigos felinos mientras ofrecemos a nuestros clientes una experiencia gastronómica excepcional.
            </p>
        </section>

        <section class="knowledge">
            <div class="knowledge__container container">
                <div class="knowledege__texts">
                    <h2 class="subtitle"> Nuestra historia</h2>
                    <p class="knowledge__paragraph">Todo comenzó con el amor incondicional por los gatos de nuestros fundadores. Inspirados por la necesidad de
                        brindar un hogar temporal a gatos rescatados y la idea de compartir esa alegría con la comunidad, nació CatCafe. Desde entonces, hemos estado dedicados a la misión de encontrar hogares amorosos y permanentes 
                        para estos maravillosos gatos rescatados.</p>
                </div>

                <figure class="knowledge__picture">
                          <img src="imagenes/nosotrosfoto.webp" class="knowledge__img">

                </figure>
            </div>
        </section>

        

        <section class="testimony">
            <div class="testimony__container container">

                <section class="testimony__body testimony__body--show" data-id="1">
                    <div class="testimony__texts">
                        <h2 class="subtitle">Nuestra misión</h2>
                        <p class="testimony__review">Nuestra misión es educar a la comunidad para mejorar la calidad de vida de los michis, sobretodo los que viven en estado de abandono, trabajando en beneficio de todos. Encontramos hogares permanentes y responsables para ellos, y promovemos campañas gratuitas de esterilización para reducir su sobrepoblación. Involucramos a la comunidad en la misma causa, junto al apoyo de veterinarios, rescatistas y voluntarios.</p>
                    </div>

                    <figure class="testimony__picture">
                        <img src="imagenes/nosotrosfoto.webp"  class="testimony__img">
                    </figure>
                </section>
            </div>
        </section>
        <section class="vision">
            <div class="testimony__container container">
                <figure class="testimony__picture1">
                   <img src="imagenes/nosotrosfoto.webp"  class="testimony__img2">
                </figure>
                <section class="testimony__body testimony__body--show" data-id="1">
                    <div class="testimony__texts2">
                        <h2 class="subtitle">Nuestra misión</h2>
                        <p class="testimony__review">Nuestra misión es educar a la comunidad para mejorar la calidad de vida de los michis, sobretodo los que viven en estado de abandono, trabajando en beneficio de todos. Encontramos hogares permanentes y responsables para ellos, y promovemos campañas gratuitas de esterilización para reducir su sobrepoblación. Involucramos a la comunidad en la misma causa, junto al apoyo de veterinarios, rescatistas y voluntarios.</p>
                    </div>

                    
                </section>
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

