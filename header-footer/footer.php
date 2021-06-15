<!-- Content Wrapper. Contains page content -->

</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
    <strong>Copyright &copy; 2020 </strong>
    All rights reserved.
</footer>
<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
<!-- jQuery -->
<script src="<?php echo $path ?>plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="<?php echo $path ?>plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?php echo $path ?>dist/js/loading.js"></script>
<script src="<?php echo $path ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- <script src="<?php echo $path ?>plugins/bootstrap/js/jquery-1.9.1.min.js"></script>
<script src="<?php echo $path ?>plugins/bootstrap/js/modernizr-2.6.2.min.js"></script> -->
<!-- ChartJS -->
<script src="<?php echo $path ?>plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="<?php echo $path ?>plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="<?php echo $path ?>plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="<?php echo $path ?>plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?php echo $path ?>plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="<?php echo $path ?>plugins/moment/moment.min.js"></script>
<script src="<?php echo $path ?>plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tcususdominus Bootstrap 4 -->
<script src="<?php echo $path ?>plugins/tcususdominus-bootstrap-4/js/tcususdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="<?php echo $path ?>plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?php echo $path ?>plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo $path ?>dist/js/adminlte.js"></script>
<script src="<?php echo $path ?>dist/js/style.js"></script>
<script src="<?php echo $path ?>dist/js/pageload.js"></script>
<script src="<?php echo $path ?>dist/js/jquery.highlight.js"></script>
<script src="<?php echo $path ?>dist/js/datepicker.js"></script>
<script src="<?php echo $path ?>dist/js/export.js"></script>
<script>
// $(document).bind("contextmenu",function(e){
//   return false;
// });
</script>
<script>
    var machine = "<?php echo $machine; ?>";
    var logic = false;
    <?php 
     $obj->get_machine();
    foreach($machine_id as $row){
        $obj->generate($row["machine_id"]);
        ?>
        console.log("loop: " + "<?php echo $machine_no?>");
        <?php
        if($machine == $machine_no){
            ?>
                logic = true;
                console.log("data: " + "<?php echo $machine_no ?>");
                console.log("client mac" + machine);
            <?php
            break;
        }
    }
    ?>


    if(logic === true){
        console.log("true");
        console.log(machine);
    }
    else{
        window.location.href='<?php echo $path; ?>404/404';
    }
</script>
</body>

</html>