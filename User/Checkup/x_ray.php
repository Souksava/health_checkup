<!-- x-ray ກວດສ່ອງໄຟຟ້າຜົ້ງເອິກ CXR-->
<?php
  $title = "ກວດສ່ອງໄຟຟ້າຜົ້ງເອິກ X-Ray";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<form action="x-ray" method="POST" id="form_upload" enctype="multipart/form-data">
    <div class="modal fade" id="exampleModalimpEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ນຳເຂົ້າຂໍ້ມູນກວດສ່ອງໄຟຟ້າຜົ້ງເອິກ X-Ray</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label for="">ເລືອກປີ</label>
                            <input type="hidden" name="file_upload">
                            <input type="text" name="year" id="datepicker2" class="form-control datepicker"
                                maxlength="4" placeholder="ປີ 20xx" aria-describedby="button-addon2" autocomplete="off">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຟາຍນຳເຂົ້າ</label>
                            <input type="file" name="checkup_file" id="checkup_file">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="emp_Update" id="btnload_import_emp" class="btn btn-outline-primary"
                        onclick="">
                        ນຳເຂົ້າຂໍ້ມູນ
                        <span class="" id="load_import_emp"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="export/export_x_ray.php" method="POST" id="form_export" target="_blank">
    <div class="row">
        <div class="col-xs-12 col-sm-6">
            <div class="input-group mb-3">
                <select name="search_company" id="search_company" class="form-control">
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
                <input type="text" name="search" id="search" class="form-control datepicker"
                    placeholder="ບຣາໂຄດ, ລະຫັດພະນັກງານ, ຊື່​, ນາມສະກຸນ" aria-describedby="button-addon2">
                <input type="text" name="year2" id="datepicker" class="form-control datepicker" maxlength="4"
                    placeholder="ປີ 20xx" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6" align="right">
            <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModalimpEmp" type="button"
                id="button-addon2"><i class="fas fa-paperclip"></i>
                ນຳເຂົ້າຂໍ້ມູນ
            </button>

            <button class="btn btn-success" name="btnexport" id="btnexport"><i class="fas fa-file-export"></i>
                Export
            </button>
            <button class="btn btn-danger" data-toggle="modal" data-target="#exampleModalDelete" type="button"
                id="button-addon2"><i class="fas fa-trash"></i>
                ລົບ
            </button>
        </div>
    </div>
</form>

<form action="x-ray" id="formDelete" method="POST" enctype="multipart/form-data">
    <div class="modal fade" id="exampleModalDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ຢືນຢັນການລົບຂໍ້ມູນ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" align="center">
                    <input type="hidden" name="id" id="id">
                    ທ່ານຕ້ອງການລົບຂໍ້ມູນ ຫຼື ບໍ່ ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btnDelete" id="btnDelete" class="btn btn-outline-danger ">
                        ລົບ
                        <span class="" id="load_delete"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div id="result" class="result">
        <?php
        include ($path."header-footer/loading.php");
        ?>
    </div>

</form>

<?php
 if(isset($_POST['btnDelete'])){
    if(isset($_POST["id_delete"])){
        foreach($_POST['id_delete'] as $id){
            $result_delete = mysqli_query($conn,"call del_xray('$id')");
        }
        if(!$result_delete){
            echo"<script>";
            echo"window.location.href='x-ray?delete2=fail';";
            echo"</script>";
        }
        else{
            echo"<script>";
            echo"window.location.href='x-ray?delete=success';";
            echo"</script>";
        }
    }
    else{
        echo"<script>";
        echo"window.location.href='x-ray?del=null';";
        echo"</script>";
    }
 }
    include ("../../header-footer/footer.php");
    if(isset($_POST["file_upload"])){
        $obj->import_x_ray($_FILES["checkup_file"]["tmp_name"],$_POST["year"]);
    }
    if(isset($_GET["import"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ນຳເຂົ້າຂໍ້ມູນສຳເລັດ !", "success");
        </script>';
      } 
      if(isset($_GET["delete"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ລົບຂໍ້ມູນສຳເລັດ !", "success");
        </script>';
      } 
      if(isset($_GET["delete2"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ການລົບຂໍ້ມູນຜິດພາດ !", "error");
        </script>';
      } 
      if(isset($_GET["del"])=="null"){
          echo'<script type="text/javascript">
          swal("", "ກະລຸນາເລືອກຂໍ້ມູນທີ່ຈະລົບກ່ອນ !", "info");
          </script>';
        } 
?>
<script>
$("#datepicker").datepicker({
    format: "yyyy",
    viewMode: "years",
    minViewMode: "years"
});
$("#datepicker2").datepicker({
    format: "yyyy",
    viewMode: "years",
    minViewMode: "years"
});
</script>
<script>
$(document).ready(function() {
    load_data("%%", "%%", "%%", "0");

    function load_data(query, querys, year, page) {
        $.ajax({
            url: "fetch_x_ray.php",
            method: "POST",
            data: {
                query: query,
                querys: querys,
                year: year,
                page: page
            },
            success: function(data) {
                $("#result").html(data);
            }
        });
    }
    $('#search_company').click(function() {
        var page = "0";
        var search_company = $(this).val();
        var datepicker = $('#datepicker').val();
        var search = $('#search').val();
        if (search_company != '') {
            load_data(search_company, search, datepicker, page);
        } else {
            load_data('%%', search, datepicker, page);
        }
    });
    $('#datepicker').keyup(function() {
        var page = "0";
        var datepicker = $(this).val();
        var search_company = $('#search_company').val();
        var search = $('#search').val();
        if (datepicker != '') {
            load_data(search_company, search, datepicker, page);
        } else {
            load_data(search_company, search, "%%", page);
        }
    });
    $('#datepicker').change(function() {
        var page = "0";
        var datepicker = $(this).val();
        var search_company = $('#search_company').val();
        var search = $('#search').val();
        if (datepicker != '') {
            load_data(search_company, search, datepicker, page);
        } else {
            load_data(search_company, search, "%%", page);
        }
    });
    $('#search').keyup(function() {
        var page = "0";
        var search = $(this).val();
        var search_company = $('#search_company').val();
        var datepicker = $('#datepicker').val();
        if (search != '') {
            load_data(search_company, search, datepicker, page);
        } else {
            load_data(search_company, "%%", datepicker, page);
        }
    });
});
</script>
<script>
const myform_form_upload = document.getElementById("form_upload");
const file_upload = document.getElementById("file_upload");
const datepicker2 = document.getElementById("datepicker2");
const checkup_file = document.getElementById("checkup_file");
// const load_import_emp = document.getElementById("load_import_emp");
// const btnload_import_emp = document.getElementById("btnload_import_emp");
myform_form_upload.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_form_upload();
});

function checkInputs_form_upload() {
    const datepicker2Value = datepicker2.value.trim();
    const checkup_fileValue = checkup_file.value.trim();
    if (datepicker2Value === "") {
        setErrorFor(datepicker2, 'ກະລຸນາເລືອກປີ');
    } else {
        setSuccessFor(datepicker2);
    }
    if (checkup_fileValue === "") {
        setErrorFor(checkup_file, 'ກະລຸນາເລືອກຟາຍ');
    } else {
        setSuccessFor(checkup_file);
    }
    if (datepicker2Value !== "" && checkup_fileValue !== "") {
        // setloading(load_import_emp, btnload_import_emp);
        document.getElementById("form_upload").action = "x-ray";
        document.getElementById("form_upload").submit();
    }
}
</script>