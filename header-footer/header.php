<?php

     include (''.$path.'oop/login.php');
     if(isset($_POST['btnLogout'])){
         $obj_log->logout();
     }
     session_start();
     if($_SESSION['health_ses_status_id'] == 1){
          $stt = 1;
     }
     if($_SESSION['health_ses_status_id'] == 2){
        $stt = 2;
   }
     if($_SESSION['health_ses_id'] == ''){
        $obj_log->logout();
    }
    else if($_SESSION['health_ses_status_id'] != $stt){
        $obj_log->logout();
    }
    else{
        $user_id = $_SESSION["user_id"];
        $profile = $_SESSION["profile_path"];
    }
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="<?php echo $path; ?>image/health.jpeg">
    <title><?php echo $title; ?></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo $path ?>plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tcususdominus Bbootstrap 4 -->
    <!-- <link rel="stylesheet"
        href="<?php echo $path ?>plugins/tcususdominus-bootstrap-4/css/tcususdominus-bootstrap-4.min.css"> -->
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo $path ?>dist/css/alt/pageload.css">

    <link rel="stylesheet" href="<?php echo $path ?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="<?php echo $path ?>plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo $path ?>dist/css/adminlte.min.css">
    <link rel="stylesheet" href="<?php echo $path ?>dist/css/alt/style.css">
    <link rel="stylesheet" href="<?php echo $path ?>dist/css/alt/datepicker.css">

    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="<?php echo $path ?>plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="<?php echo $path ?>plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="<?php echo $path ?>plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="<?php echo $path ?>dist/js/sweetalert.min.js"></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div id="loader-wrapper">
        <div id="loader"></div>
    </div>
    <?php
     include (''.$path.'oop/obj.php');
    $obj->machine();
    ?>
    <div class="wrapper">
        <nav class="main-header navbar navbar-expand navbar-white navbar-light font14">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a class="nav-link"><?php echo $title; ?></a>
                </li>
            </ul>
        </nav>
        <!-- Main Sidebar Container -->
    </div>
    <aside class="main-sidebar sidebar-dark-primary elevation-4 font14">
        <!-- Brand Logo -->
        <a href="<?php echo $links;?>Main" class="brand-link">
            <img src="<?php echo $path ?>image/health.jpeg" alt="AdminLTE Logo"
                class="brand-image img-circle elevation-3" style="opacity: .8">
            <span class="brand-text font-weight-light">Health Checkup</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                <?php
                    if($profile == ""){
                ?>
                    <img src="<?php echo $path ?>image/image.jpeg" class="img-circle elevation-2" alt="User Image">
                <?php
                    }
                    else{
                    ?>
                      <img src="<?php echo $path ?>image/<?php echo $profile; ?>" class="img-circle elevation-2" alt="User Image">
                <?php
                    }
                ?>
                
                </div>
                <div class="info">
                    <a href="#" class="d-block">User</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <?php 
                if($stt == 1){
                    ?>
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                    data-accordion="false">

                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Company/Company" class="nav-link">
                            <i class="nav-icon fas fa-building"></i>
                            <p>
                                ຂໍ້ມູນບໍລີສັດ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Package/Package" class="nav-link">
                            <i class="nav-icon fas fa-stethoscope"></i>
                            <p>
                                ຂໍ້ມູນແຟັກແກັດ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Employee/Employee" class="nav-link">
                            <i class="nav-icon fas fa-user"></i><i class="fad fa-user-hard-hat"></i>
                            <p>
                                ຂໍ້ມູນພະນັກງານ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Register/register" class="nav-link">
                            <i class="nav-icon fas fa-registered"></i>
                            <p>
                                ການລົງທະບຽນ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-user-md"></i>
                            <p>
                                ກວດສຸຂະພາບ
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Physical" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດຮ່າງກາຍທົ່ວໄປ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Cbc" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດເລືອດລວມ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Biochemistry" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດສານຊີວະເຄມີໃນເລືອດ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Urine" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດປັດສະວະ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Methamphetamine" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດສານເສບຕິດ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Thryroid" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດຕ໋ອມຄໍ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Stool" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດອາຈົມ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Heavy" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດທາດໂລຫະໜັກ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Tumor" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດຕ໋ອມມະເຮັງ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Vision" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດສະມັດຕະພາບການເບິ່ງເຫັນ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Audio" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດສະມັດຕະພາບການໄດ້ຍິນ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Spiro" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດສະມັດຕະພາບປອດ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/x-ray" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດສ່ອງໄຟຟ້າຜົ້ງເອິກ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Immunity" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ກວດພູມຄຸ້ມກັນວິທະຍາ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Ekg" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ການກວດແທກຄື້ນຫົວໃຈ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Checkup/Muscle" class="nav-link">
                                    <i class="far fa fa-stethoscope nav-icon"></i>
                                    <p>ການກວດສະມັດຕະພາບທາງກ້າມ</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Status/status" class="nav-link">
                            <i class="nav-icon fas fa-check-square"></i>
                            <p>
                                ສະຖານະກວດສຸຂະພາບ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-certificate"></i>
                            <p>
                                ພິມໃບຢັ້ງຢືນສຸຂະພາບ
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Certificate/Lao" class="nav-link">
                                    <i class="far fa fa-check nav-icon"></i>
                                    <p>ພາສາລາວ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Certificate/English" class="nav-link">
                                    <i class="far fa fa-check nav-icon"></i>
                                    <p>ພາສາອັງກິດ</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Book/Book" class="nav-link">
                            <i class="nav-icon fas fa-print"></i>
                            <p>
                            ພິມປຶ້ມກວດສຸຂະພາບ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="nav-icon fas fa-power-off"></i>
                            <p>
                                ອອກຈາກລະບົບ
                            </p>
                        </a>
                    </li>
                    </li>
                </ul>
            </nav>
            <?php
                }
                if($stt == 2){
                    ?>
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                    data-accordion="false">
                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Username/Username" class="nav-link">
                            <i class="nav-icon fas fa-user"></i><i class="fad fa-user-hard-hat"></i>
                            <p>
                                ຂໍ້ມູນຜູ້ໃຊ້ລະບົບ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-certificate"></i>
                            <p>
                            ພິມໃບຢັ້ງຢືນສຸຂະພາບ
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="<?php echo $links ?>Certificate/Lao" class="nav-link">
                                    <i class="far fa fa-check nav-icon"></i>
                                    <p>ພາສາລາວ</p>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                            <a href="<?php echo $links ?>Certificate/English" class="nav-link">
                                    <i class="far fa fa-check nav-icon"></i>
                                    <p>ພາສາອັງກິດ</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="<?php echo $links ?>Book/Book" class="nav-link">
                            <i class="nav-icon fas fa-print"></i>
                            <p>
                            ພິມປຶ້ມກວດສຸຂະພາບ
                                <i class="fas"></i>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="nav-icon fas fa-power-off"></i>
                            <p>
                                ອອກຈາກລະບົບ
                            </p>
                        </a>
                    </li>
                    </li>
                </ul>
            </nav>
            <?php
                }
            ?>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>
    <form action="#" method="POST" id="formLogout">
        <div class="modal fade font14" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">ຢຶນຢັນ</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" align="center">
                        ທ່ານຕ້ອງການອອກຈາກລະບົບ ຫຼື ບໍ່ ?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                        <button type="submit" name="btnLogout" class="btn btn-outline-danger">ອອກຈາກລະບົບ</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="main-footer">