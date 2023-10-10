<%-- 
    Document   : lista_clientes
    Created on : 10 oct. 2023, 17:51:08
    Author     : Lesly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Clientes</title>

    <!-- Custom fonts for this template-->
    <link href="INTRANET/intranet/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/7871faee3a.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <!-- Custom styles for this template-->
    <link href="INTRANET/intranet/css/sb-admin-2.min.css" rel="stylesheet" type="text/css"/>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index_intranet.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fa-solid fa-cat"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Cat Cafe</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item INICIO -->
            <li class="nav-item active">
                <a class="nav-link" href="index_intranet.jsp">
                    <i class="fa-solid fa-house"></i>
                    <span>Inicio</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">
            
            <!-- NAV - USUARIOS -->
           <li class="nav-item">
            <a class="nav-link" href="lista_usuarios.jsp">
                <i class="fas fa-fw fa-user"></i>
                <span> Usuarios </span></a>
            </li>

            
           <!-- NAV - PRODUCTOS -->
           <li class="nav-item">
            <a class="nav-link" href="lista_productos.jsp">
                <i class="fa-solid fa-boxes-stacked"></i>
                <span> Productos </span></a>
            </li>

            <!-- NAV - CLIENTES -->
           <li class="nav-item">
            <a class="nav-link" href="lista_clientes.jsp">
                <i class="fa-solid fa-users"></i>
                <span> Clientes </span></a>
            </li>

            <!-- Nav -REPORTE DE VENTAS -->
            <li class="nav-item">
                <a class="nav-link" href="admin_ventas.jsp">
                    <i class="fa-solid fa-file-invoice"></i>
                    <span> Reporte de Ventas</span></a>
            </li>

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>


        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Buscar..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                         <!-- Dropdown - Alerts -->
                         <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                         aria-labelledby="alertsDropdown">
                         <h6 class="dropdown-header">
                             Avisos
                         </h6>
                         <a class="dropdown-item d-flex align-items-center" href="#">
                             <div class="mr-3">
                                 <div class="icon-circle bg-primary">
                                     <i class="fas fa-file-alt text-white"></i>
                                 </div>
                             </div>
                             <div>
                                 <div class="small text-gray-500">Diciembre 12, 2019</div>
                                 <span class="font-weight-bold">¡Un nuevo informe mensual está listo para descargar!</span>
                             </div>
                         </a>
                         <a class="dropdown-item d-flex align-items-center" href="#">
                             <div class="mr-3">
                                 <div class="icon-circle bg-success">
                                     <i class="fas fa-donate text-white"></i>
                                 </div>
                             </div>
                             <div>
                                 <div class="small text-gray-500">Diciembre 7, 2019</div>
                                 ¡Se han depositado $290.29 en su cuenta!
                             </div>
                         </a>
                         <a class="dropdown-item d-flex align-items-center" href="#">
                             <div class="mr-3">
                                 <div class="icon-circle bg-warning">
                                     <i class="fas fa-exclamation-triangle text-white"></i>
                                 </div>
                             </div>
                             <div>
                                 <div class="small text-gray-500">Diciembre 2, 2019</div>
                                 Alerta de gastos: Hemos notado gastos inusualmente altos para su cuenta.
                             </div>
                         </a>
                         <a class="dropdown-item text-center small text-gray-500" href="#">Mostrar más avisos</a>
                     </div>
                 </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="../intranet/img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">¡Hola! Me pregunto si me puedes ayudar con un
                                            problema que he estado teniendo.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="../intranet/img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Tengo las fotos que pediste el mes pasado, como
                                            ¿quieres que te los envíen?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="../intranet/img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">El informe del mes pasado se ve muy bien, estoy muy contento con
                                            el progreso hasta ahora, ¡sigan con el buen trabajo!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="../intranet/img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Buenos dias, le hablo para que pueda comunicarse con .....</div>
                                        <div class="small text-gray-500">Gerente general · 2sem</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Leer más mensajes</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?=$_SESSION["nombreusuario"]." ".$_SESSION['apellidousuario']?></span>
                                <i class="fa-regular fa-circle-user" style="color: #cc5c92;"></i>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Mi perfil
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Configuración
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Actividad
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Cerrar sesión
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Clientes</h1>
                        <a href="ReporteCliente.php" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fa-solid fa-file-pdf"></i> Generar PDF</a>
                     
                    </div>
                    
                    <a href="agregarcliente.php" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Agregar cliente</a><br>
                    
                    <script>
                    function advertencia(){
                        var not=confirm("Seguro que deceas eliminar");
                        return not;
                    } 
                    </script>
                    
                    
                   <!--  ELIMINAR DATOS-->
                   <?php  
                   if(isset($_GET['id'])){
                   $id=$_GET['id'];
                   $consulta="delete from clientes where idcliente=$id";
                   $eliminar= mysqli_query($con, $consulta);?>
                   
                    <script>
                    swal({
                    title: "Completo!",
                    text: "El cliente se eliminó correctamente!",
                    icon: "success",
                    button: "Ok!",
                    });
                    </script>
               
                   
                    <script>
                    setTimeout(()=>{
                        window.history.replaceState(null,null,window.location.pathname);
                    }, 0);
                    </script>                   
                   <?php } ?> 
                    
                    
                    
                    
                    
                    <!-- DataTales Example -->
                    <br>
                    <form method="POST" action="">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Clientes registrados</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>N°</th>
                                            <th>Código</th>
                                            <th>Nombres</th>
                                            <th>Apellidos</th>
                                            <th>Dni</th>
                                            <th>Dirección</th>
                                            <th>Teléfono</th>
                                            <th><i class="fa-solid fa-bars"></i></th>
                                            <th><i class="fa-solid fa-bars"></i></th>
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>N°</th>
                                            <th>Código</th>
                                            <th>Nombres</th>
                                            <th>Apellidos</th>
                                            <th>Dni</th>
                                            <th>Dirección</th>
                                            <th>Teléfono</th>
                                            <th><i class="fa-solid fa-bars"></i></th>
                                            <th><i class="fa-solid fa-bars"></i></th>
                                            
                                        </tr>
                                    </tfoot>
                                    <?php
                                        while ($fila= mysqli_fetch_assoc($lista)){
                                            $numeracion++;
                                        ?>
                                        
                                    <tbody>
                                    <td><?php say($numeracion)?> </td>
                                    <td><?php say($fila['idcliente'])?> </td>
                                    <td><?php say($fila['nombrecliente'])?> </td>
                                    <td><?php say($fila['apellidocliente'])?> </td>
                                    <td><?php say($fila['dnicliente'])?> </td>
                                    <td><?php say($fila['direccion'])?> </td>
                                    <td><?php say($fila['telefono'])?> </td>
                                    <td>
                                        <a onclick="return advertencia()" href="clientes.php?id=<?=$fila['idcliente']?>" class="btn btn-primary"><i class="fa-solid fa-trash"></i></a>
                                    </td>
                                    <td>
                                        <a onclick="" href="" class="btn btn-primary"><i class="fa-regular fa-pen-to-square"></i></a>
                                    </td>
                                    </tbody>
                                    <?php } ?>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Cat Cafe 2023</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

     <!-- CERRAR SESION -->
     <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="exampleModalLabel">¿Deseas cerrar sesión?</h5>
                 <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">×</span>
                 </button>
             </div>
             <div class="modal-body">Selecciona "Cerrar sesión" si estás listo para salir de la actual sesión.</div>
             <div class="modal-footer">
                 <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                 <a class="btn btn-primary" href="login.html">Cerrar sesión</a>
             </div>
         </div>
     </div>
 </div>

    <!-- Bootstrap core JavaScript-->
    <script src="INTRANET/intranet/vendor/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="INTRANET/intranet/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>

    <!-- Core plugin JavaScript-->
    <script src="INTRANET/intranet/vendor/jquery-easing/jquery.easing.min.js" type="text/javascript"></script>

    <!-- Custom scripts for all pages-->
    <script src="INTRANET/intranet/js/sb-admin-2.min.js" type="text/javascript"></script>

    <!-- Page level plugins -->
    <script src="INTRANET/intranet/vendor/chart.js/Chart.min.js" type="text/javascript"></script>

    <!-- Page level custom scripts -->
    <script src="INTRANET/intranet/js/demo/chart-area-demo.js" type="text/javascript"></script>
    <script src="INTRANET/intranet/js/demo/chart-pie-demo.js" type="text/javascript"></script>
    <script src="INTRANET/intranet/vendor/datatables/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="INTRANET/intranet/vendor/datatables/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <!-- Page level custom scripts -->
    <script src="INTRANET/intranet/js/demo/datatables-demo.js" type="text/javascript"></script>

</body>

</html>


