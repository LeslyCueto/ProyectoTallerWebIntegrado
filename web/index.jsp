<%-- 
    Document   : index
    Created on : 5 oct. 2023, 18:33:21
    Author     : Lesly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inicio</title>
        
    <!-- FUENTE GOOGLE FONTS : Poppins -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- ICONS: Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <!-- ICONS: Line Awesome -->
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

    <!-- Animaciones AOS -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">


    <!-- Mis Estilos -->
    <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
    <link href="css/slider_style.css" rel="stylesheet" type="text/css"/>
   


    </head>
     <body>

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
                <li><a href=<"nosotros.jsp">Nosotros</a></li>
                <li><a href="productos.jsp">Productos</a></li>
                <li><a href="">Contacto</a></li>
                <li><a href="">Adopta</a></li>
                <li><a href="index_intranet.jsp">Iniciar Sesion</a></li>
                        </ul>


                        <div class="hm-icon-cart">
                            <a href="">
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
           HEADER MENU MOVIL
        ================================== -->
        <div class="header-menu-movil">
            <button class="cerrar-menu"><i class="fas fa-times"></i></button>
            <ul>
               <li><a href="index.jsp">Inicio</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
                <li><a href="">Productos</a></li>
                <li><a href="">Contacto</a></li>
                <li><a href="">Adopta</a></li>
                <li><a href="">Iniciar Sesion</a></li>
            </ul>
        </div>
        <!-- =================================
           PRESENTACION
        ================================== -->

        <div class="hm-page-block">
            <div class="container">
                
        <!-- =================================
           VIDEO
        ================================== -->
        <div class="hm-banner">
            <video  autoplay muted>
                    <source src="imagenes/videosgatos.mp4" type="video/mp4">
                </video>
            <div class="txt" data-aos="fade-up">
              <h1>Café caliente y ronroneos suaves: Bienvenido a</h1>
              <p class="nombre">CAT CAFE</p>

        </div>
            </div>
        
                <div class="header-title"> 
                <div class="header-title" data-aos="fade-up">
                    <h1  data-aos="fade-up" data-aos-duration="3000">Nuestros productos</h1>
                    
                </div>  
                    
                        <div class="hm-grid-category">

                    <div class="grid-item" data-aos="fade-up" data-aos-duration="1000">
                        <a href="#">
                            <img src="imagenes/3zWRDLMmXdv5Rjgzt-capuccinno.png" alt=""/>
                            <div class="c-info">
                                <h3>Cappuchino</h3>
                            </div>
                        </a>
                    </div>

                      <div class="grid-item" data-aos="fade-up" data-aos-duration="1500">
                        <a href="#">
                            <img src="imagenes/Espresso-PNG-Picture.png" alt=""/>
                            <div class="c-info">
                                <h3>Cappuchino Mocca</h3>
                            </div>
                        </a>
                    </div>

                      <div class="grid-item" data-aos="fade-up" data-aos-duration="2000">
                        <a href="#">
                            <img src="imagenes/cafe expre.avif" alt=""/>
                            <div class="c-info">
                                <h3>Mocca</h3>
                            </div>
                        </a>
                    </div>

                    <div class="grid-item" data-aos="fade-up" data-aos-duration="2000">
                        <a href="#">
                            <img src="imagenes/Americano_nobg.png" alt=""/>
                            
                            <div class="c-info">
                                <h3>Expresso</h3>
                            </div>
                        </a>
                    </div>

                </div> 
                </div>
        
        <!-- =================================
           CARRUSEL
        ================================== -->
 
            <div class="img-slider">
                <div class="slide active">
                    <img src="imagenes/carr1.png" alt=""/>
                    <div class="info">
                        <h2>el mejor café</h2>
                        <p> En Cat Cafe te ofrecemos la mejor experiencia <br>junto con un delicioso cafe.</p>
                    </div>
                </div>
                <div class="slide">
                    <img src="imagenes/carr2.png" alt=""/>
                    <div class="info">
                        <h2>COMPARTE</h2>
                        <p> Te invitamos a conocer el hogar <br> de nuestras mascotas.</p>
                    </div>
                </div>
                <div class="slide">
                    <img src="imagenes/carr3.png" alt=""/>
                    <div class="info">
                        <h2>ADOPTA <ion-icon name="heart-circle-outline"></ion-icon> </h2>
                        <p> Si en tu estancia, algun gatito ha llamado tu atencion, <br> puedes adoptarlo y darle un hogar.</p>
                    </div>
                </div>
                <div class="slide">
                    <img src="imagenes/carr4.png" alt=""/>
                    <div class="info">
                        <h2>DISFRUTA</h2>
                        <p> Disfruta junto a quienes mas amas de la <br>  mejor experiencia.</p>
                    </div>
                </div>
    
                <div class="navigation">
                    <div class="btn active"> </div>
                    <div class="btn"> </div>
                    <div class="btn"> </div>
                    <div class="btn"> </div>
                </div>
            </div>
                <div class="text_up" data-aos="fade-up">
                    <h2> <ion-icon name="cafe-outline"></ion-icon><br>
                    Comparte un café con <br>  quienes más quieres.</h2>
                </div>
            </div>
        </div>


         <!-- =================================
           PRODUCTOS DESTACADOS
        ================================== -->
        <div class="hm-page-block bg-fondo">

            <div class="container">

                <div class="header-title" data-aos="fade-up">
                    <h1>Lo más vendido</h1>
                </div>

                <!-- TABS -->
                <ul class="hm-tabs" data-aos="fade-up">
                    <li class="hm-tab-link">
                        1° SECCIÓN
                    </li>

                    <li class="hm-tab-link ">
                        2° SECCIÓN
                    </li>

                    
                </ul>

                <!-- CONTENIDO DE LOS TABS -->
                <!-- Zapatillas -->
                <div class="tabs-content" data-aos="fade-up">

                    <div class="grid-product">

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/carta1.jpg" alt=""/>
                                </a>
                                <span class="stin stin-new">Nuevo</span>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>Expresso con chocolate</h3></a>
                                <div class="precio">
                                    <span>S/ 15.00</span>
                                </div>
                               <p>*El precio no incluye adicionales</p>
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/carta2.jpg" alt=""/>
                                </a>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>Cappuchino con leche</h3></a>
                                <div class="precio">
                                    <span>S/ 17.00</span> 
                                </div>
                               <p>*El precio no incluye adicionales</p>
                               
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/carta3.jpg" alt=""/>
                                </a>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>Frapuccino de vainilla</h3></a>
                                <div class="precio">
                                    <span>S/ 16.00</span>
                                </div>
                               <p>*El precio no incluye adicionales</p>
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/carta4.jpg" alt=""/>
                                </a>
                                <span class="stin stin-new">Nuevo</span>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>Capucchino de lúcuma</h3></a>
                                <div class="precio">
                                    <span>S/ 15.00</span>
                                </div>
                              <p>*El precio no incluye adicionales</p>
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                    </div>

                </div>

                <!-- Moda -->
                <div class="tabs-content" data-aos="fade-up">

                    <div class="grid-product">

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/fotocafe1.jpg" alt=""/>
                                </a>
                                <span class="stin stin-new">Nuevo</span>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>CAFE</h3></a>
                                <div class="precio">
                                    <span>S/ 00.00</span>
                                </div>
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/fotocafe2.jpg" alt=""/>
                                </a>
                                <span class="stin stin-new">Nuevo</span>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>CAFE</h3></a>
                                <div class="precio">
                                    <span>S/ 00.00</span>
                                </div>
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/frappuccino_98.webp" alt=""/>
                                </a>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>CAFE</h3></a>
                                <div class="precio">
                                    <span>S/ 00.00</span>
                                </div>
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                        <div class="product-item">
                            <div class="p-portada">
                                <a href="">
                                    <img src="imagenes/galletaschip.jpg" alt=""/>
                                </a>
                            </div>

                            <div class="p-info">
                               <a href=""> <h3>CAFE</h3></a>
                                <div class="precio">
                                    <span>S/ 00.00</span>
                                </div>
                                <a href="#" class="hm-btn btn-primary uppercase">AGREGAR AL CARRITO</a>
                            </div>

                        </div>

                    </div>

                </div>


                        </div>

                    </div>

                </div>

       



         <!-- =================================
           FOOTER
        ================================== -->
        <footer>
            
            <div class="container" >
                <div class="foo-row">
                    <div class="foo-col">
                        <h2>Contacto</h2>
                        <form action="" method="">

                            <div class="f-input">
                                
                                <input type="text" placeholder="Ingrese su correo">
                                <button type="submit" class="hm-btn-round btn-primary"><i class="far fa-paper-plane"></i></button>
                            </div>
                        </form>

                    </div>

                    <div class="foo-col">
                        <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="nosotros.jsp">Nosotros</a></li>
                <li><a href=" ">Productos</a></li>
                <li><a href="">Contacto</a></li>
                <li><a href="">Adopta</a></li>
                <li><a href="">Iniciar Sesion</a></li>
                <li><a href="">Autores: Lesly y Nayly:))</a></li>
                        </ul>
                    </div>

                </div>
                
            </div>

        </footer>
    </div>
    
    <!-- Animaciones : AOS-->
    <script src="https://unpkg.com/aos@next/dist/aos.js"></script>

    <!-- Mi Script -->
    <script src="js/inicio.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>

    <script>
        AOS.init({
            duration: 1200,
        })
    </script>
    
    <script type="text/javascript">
            var slides = document.querySelectorAll('.slide');
            var btns = document.querySelectorAll('.btn');
            let currentSlide = 1;

            //Javscript para movimiento manual
            var manualNav = function(manual){
                slides.forEach((slide) => {
                    slide.classList.remove('active');

                btns.forEach ((btn) => {
                    btn.classList.remove('active');
                });   
                });


                slides[manual].classList.add('active');
                btns[manual].classList.add('active');

            }

            btns.forEach((btn,i) => {
                btn.addEventListener("click",() => {
                    manualNav(i);
                    currentSlide = i;
                });
            });

            //Javascript para movimiento de imagen automatico
            var repeat = function(activeClass){
                let active = document.getElementsByClassName('active');
                let i = 1;

                var repeater = () => {
                    setTimeout(function () {
                        [...active].forEach((activeSlide) => {
                            activeSlide.classList.remove('active');
                        });
                    
                        slides[i].classList.add('active');
                        btns[i].classList.add('active');
                        i++;

                        if (slides.length == i) {
                            i = 0;
                        }
                        if (i >= slides.length) {
                            return;
                        }
                        repeater();
                    },10000);
                }
                repeater();
            }
            repeat();

        </script>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>

