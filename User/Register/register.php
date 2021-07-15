<?php
  $title = "ການລົງທະບຽນ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<form action="register" method="POST" target="" id="form_add_package_more">
    <div class="modal fade" id="exampleModalAddmorepackage" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ກວດສຸຂະພາບເພີ່ມ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- <p align="center">ທ່ານຕ້ອງການພິມບຣາໂຄດ ຫຼື ບໍ່ ?</p> -->
                    <input type="hidden" name="reg_id" id="reg_id">
                    <div id="result_package">
                        <?php
                           include ($path."header-footer/loading.php");
                        ?>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btnUpdate_register" id="btnPrint" class="btn btn-outline-primary"
                        onclick="">
                        ເພີ່ມ
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="printbarcode" method="POST" target="" id="form_register_print">
    <div class="modal fade" id="exampleModalPrint" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ພິມບາໂຄດ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- <p align="center">ທ່ານຕ້ອງການພິມບຣາໂຄດ ຫຼື ບໍ່ ?</p> -->
                    <input type="hidden" name="print_barcode" id="print_barcode">
                    <input type="hidden" name="barcode_id" id="barcode_id">
                    <div id="result_registerdetail">
                        <?php
                            include ($path."header-footer/loading.php");
                        ?>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btnPrint" id="btnPrint" class="btn btn-outline-primary" onclick="">
                        ພິມບຣາໂຄດ
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="register" method="POST" id="form_delete_register">
    <div class="modal fade" id="exampleModalDeleteRegiter" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ລົບລາຍການລົງທະບຽນ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p align="center">ທ່ານຕ້ອງການລົບລາຍການລົງທະບຽນ ຫຼື ບໍ່ ?</p>
                    <input type="hidden" name="delete_register" id="delete_register">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btndelete_register" id="btndelete_register"
                        class="btn btn-outline-danger" onclick="">
                        ລົບ
                        <span class="" id="load_delete_register"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="barcode" method="POST" id="formBarcode">
    <input type="hidden" name="print_barcode2" id="print_barcode2">
    <input type="hidden" name="barcode_id2" id="barcode_id2">
</form>
<div class="modal fade" id="exampleModaldetail" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ລາຍລະອຽດການລົງທະບຽນແພັກເກັດ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
            </div>

        </div>
    </div>
</div>
<form action="ExportRegister" method="POST" id="formexport" target="_blank">
    <div class="row">
        <div class="col-xs-12 col-sm-6">
            <div class="input-group mb-3">
                <select name="register_company" id="register_company" class="form-control">
                    <option value="">ເລືອກບໍລິສັດ</option>
                    <?php 
                        $obj->dropdown_company();
                        foreach($result_dropdown as $com_search){
                    ?>
                    <option value="<?php echo $com_search["company"] ?>"><?php echo $com_search["company"] ?></option>
                    <?php
                        }
                        mysqli_free_result($result_dropdown);  
                        mysqli_next_result($conn);
                    ?>
                </select>
                <input type="text" class="form-control" name="register_search" id="register_search"
                    placeholder="ລະຫັດ ພ/ງ, ຊື່, ອາຍຸ, ບໍລິສັດ" aria-label="Recipient's username"
                    aria-describedby="button-addon2">
                <input type="date" class="form-control" name="register_date" id="register_date"
                    aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                    type="submit" id="button-addon2">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6" align="right">
            <button class="btn btn-success" name="export_employee" id="button-addon2"><i class="fas fa-file-export"></i>
                Export
            </button>
        </div>
    </div>
</form>
<!-- Data Export -->
<div id="result" style="display: none;"></div>
<!-- End Data Export -->


<div id="result_register">



    <?php 
    $arr_package = array();
    $table_package = array();
    $getpackage = mysqli_query($conn,"select pack_id from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id LEFT JOIN registerdetail d ON r.reg_id=d.reg_id GROUP BY pack_id ORDER BY pack_id ASC");
    foreach($getpackage as $row){
        
        $pack_id = $row['pack_id'];
        $regis = mysqli_query($conn,"select r.reg_id,r.barcode,e.emp_id,emp_name,surname,queue,age,company,pack_id,year,date,time,user_name from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id LEFT JOIN registerdetail d ON r.reg_id=d.reg_id where pack_id='$pack_id'");
        $arr_package[] = "'".$pack_id."'"; 
        $table_package[] = "'"."tbl".$pack_id."'"; 
    }
    $arr_package = implode(",", $arr_package); 
    $table_package = implode(",", $table_package); 
   ?>
    <?php
        include ($path."header-footer/loading.php");
    ?>
</div>
<?php
    if(isset($_POST["reg_id"])){
        if(empty($_POST["morepackage"])){
            echo"<script>";
            echo"window.location.href='register?morepack=null';";
            echo"</script>";
        }
        else{
            $obj->Update_package_register($_POST["reg_id"],$_POST["morepackage"]);
        }
      
    }
    if(isset($_POST["delete_register"])){
        $obj->del_register($_POST["delete_register"]);
    }
    if(isset($_GET["morepack"])=="null"){
        echo'<script type="text/javascript">
        swal("", "ກະລຸນາເລືອກແພັກເກັດກ່ອນ !", "info");
        </script>';
      } 
      if(isset($_GET["del"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ການລົບຂໍ້ມູນຜິດພາດ !", "error");
        </script>';
      }  
      if(isset($_GET["del2"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ລົບຂໍ້ມູນສຳເລັດ !", "success");
        </script>';
      }  
      if(isset($_GET["pack_id"])){
          $msg = $_GET["pack_id"];
      }
      if(isset($_GET["updatepackage"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດເພີ່ມແພັກເກັດໄດ້ເນື່ອງຈາກມີຂໍ້ຜິດພາດຈາກແພັກເກັດ '.$msg.' !", "error");
        </script>';
      }  
      if(isset($_GET["updatepackage2"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ເພີ່ມແພັກເກັດສຳເລັດ !", "success");
        </script>';
      } 
    include ("../../header-footer/footer.php");
?>
<script>
function formatDate(date) {
    var d = new Date(date),
        month = "" + (d.getMonth() + 1),
        day = "" + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2)
        month = "0" + month;
    if (day.length < 2)
        day = "0" + day;

    return [year, month, day].join("-");
}
</script>
<script>
$(document).ready(function() {
    load_data_register("%%", "%%", "%%", "0");

    function load_data_register(query, query2, dates, page) {
        $.ajax({
            url: "fetch_register.php",
            method: "POST",
            data: {
                query: query,
                query2: query2,
                dates: dates,
                page: page
            },
            success: function(data) {
                $('#result_register').html(data);
            }
        });
    }

    //export
    load_export("%%", "%%", "%%");

    function load_export(ex1, ex2, ex_date) {
        $.ajax({
            url: "fetch_export.php",
            method: "POST",
            data: {
                ex1: ex1,
                ex2: ex2,
                ex_date: ex_date
            },
            success: function(data) {
                $('#result').html(data);
            }
        });
    }
    //end export


    $('#register_company').click(function() {
        var page = "0";
        var register_company = $(this).val();
        var register_search = $('#register_search').val();
        var valueDate = $('#register_date').val();
        if (!Date.parse(valueDate)) {
            var register_date = "";
        } else {
            var register_date = formatDate(new Date($('#register_date').val()));
        }
        console.log(register_date);
        if (register_company != '') {
            load_data_register(register_company, register_search, register_date, page);
            load_export(register_company, register_search, register_date);
        } else {
            load_data_register("%%", register_search, register_date, page);

            load_export("%%", register_search, register_date);
        }
    });
    $('#register_search').keyup(function() {
        var page = "0";
        var register_search = $(this).val();
        var register_company = $('#register_company').val();
        var valueDate = $('#register_date').val();
        if (!Date.parse(valueDate)) {
            var register_date = "";
        } else {
            var register_date = formatDate(new Date($('#register_date').val()));
        }
        console.log(register_date);
        if (register_search != "") {
            load_data_register(register_company, register_search, register_date, page);
            load_export(register_company, register_search, register_date);
        } else {
            load_data_register(register_company, "%%", register_date, page);
            load_export(register_company, "%%", register_date);
        }
    });
    $('#register_date').change(function() {
        var page = "0";
        var register_date = "";
        if (!register_date) {
            var register_date = formatDate(new Date($('#register_date').val()));
        } else {
            var register_date = null;
        }
        console.log(register_date);
        var register_company = $('#register_company').val();
        var register_search = $('#register_search').val();
        if (register_date != "") {
            load_data_register(register_company, register_search, register_date, page);
            load_export(register_company, register_search, register_date);
        } else {
            load_data_register(register_company, register_search, "%%", page);
            load_export(register_company, register_search, "%%");
        }

    });

    $(document).on('click', '.page-links-register', function() {
        var page_register = this.id;
        var register_company = $('#register_company').val();
        var register_search = $('#register_search').val();
        var valueDate = $('#register_date').val();
        console.log(page_register);
        if (!Date.parse(valueDate)) {
            var register_date = "";
        } else {
            var register_date = formatDate(new Date($('#register_date').val()));
        }
        if (register_search != "" || register_company != "" || register_date != "") {
            load_data_register(register_company, register_search, register_date, page_register);
        } else {
            load_data_register("%%", "%%", "%%", page_register);
        }
    });






    load_data_registerdetail("");

    function load_data_registerdetail(query) {
        $.ajax({
            url: "fetch_registerdetail.php",
            method: "POST",
            data: {
                query: query
            },
            success: function(data) {
                $('#result_registerdetail').html(data);
            }
        });
    }
    $(document).on('click', '.btnPrint', function() {
        var details = $('#print_barcode').val();
        if (details != '') {
            load_data_registerdetail(details);
        } else {
            load_data_registerdetail("");
        }
    });




    load_data_morepackage("");

    function load_data_morepackage(query) {
        $.ajax({
            url: "morepackage.php",
            method: "POST",
            data: {
                query: query
            },
            success: function(data) {
                $('#result_package').html(data);
            }
        });
    }
    $(document).on('click', '.btnAddmorepackage', function() {
        var reg_id = $('#reg_id').val();
        if (reg_id != '') {
            load_data_morepackage(reg_id);
        } else {
            load_data_morepackage("");
        }
    });
    $(document).keypress(function(e) {
        if ($("#exampleModalPrint").hasClass('in') && (e.keycode == 13 || e.which == 13)) {
            document.getElementById("form_register_print").submit();
        }
    });
    $(document).keypress(function(e) {
        if ($("#exampleModalAddmorepackage").hasClass('in') && (e.keycode == 13 || e.which == 13)) {
            document.getElementById("form_add_package_more").submit();
        }
    });
});
</script>