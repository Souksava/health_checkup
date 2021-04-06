<?php
  $title = "ຂໍ້ມູນແຟັກແກັດ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<form action="Package" method="POST" id="import_package" enctype="multipart/form-data">
    <div class="modal fade" id="exampleModalimpPackage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ນຳເຂົ້າຂໍ້ມູນແພັກເກັດ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຟາຍນຳເຂົ້າ</label>
                            <input type="file" name="package_file" id="package_file" class="form-control">
                            <input type="hidden" name="upload_pack_id" id="upload_pack_id">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btn_load_package" id="btn_load_package" class="btn btn-outline-primary"
                        onclick="">
                        ນຳເຂົ້າຂໍ້ມູນ
                        <span class="" id="load_package"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="Package" method="POST" id="delete_info_package">
    <div class="modal fade" id="exampleModalDelete_ID_Package" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ລົບຂໍ້ມູນແພັກເກັດການກວດ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p align="center">ທ່ານຕ້ອງການລົບຂໍ້ມູນແພັກເກັດການກວດ ຫຼື ບໍ່ ?</p>
                    <input type="hidden" name="delete_package" id="delete_package">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btnDelete_info_package" id="btnDelete_info_package"
                        class="btn btn-outline-danger" onclick="">
                        ລົບ
                        <span class="" id="load_Delete_info_package"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<div class="row">
    <div class="col-xs-12 col-sm-6">
        <div class="input-group mb-3">
            <input type="text" name="search_package" id="search_package" aria-label="First name" class="form-control"
                placeholder="ຄົ້ນຫາ">
            <button class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                type="button" id="button-addon2">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6" align="right">
        <button class="btn btn-primary"><i class="fas fa-plus-circle"></i> ເພີ່ມຂໍ້ມູນ</button>
        <button data-toggle="modal" data-target="#exampleModalimpPackage" class="btn btn-success"><i
                class="fas fa-paperclip"></i> ນຳເຂົ້າຂໍ້ມູນ</button>
    </div>
</div>
<div id="result_data_package" class="result_data_package">
    <?php
        include ($path."header-footer/loading.php");
        ?>
</div>
<?php
    if(isset($_POST["delete_package"])){
        $obj->del_package($_POST["delete_package"]);
    }
    if(isset($_POST["upload_pack_id"])){
        $obj->import_package($_FILES["package_file"]["tmp_name"]);

    }
    if(isset($_GET["package"])=="true"){
        echo'<script type="text/javascript">
        swal("", "ແພັກເກັດນີ້ເຄີຍລົງທະບຽນແລ້ວ !", "error");
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
    include ("../../header-footer/footer.php");
?>
<script>
const myform_import_package = document.getElementById("import_package");
const package_file = document.getElementById("package_file");
const upload_pack_id = document.getElementById("upload_pack_id");
const load_package = document.getElementById("load_package");
const btn_load_package = document.getElementById("btn_load_package");
myform_import_package.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_import_package();
});

function checkInputs_import_package() {
    const package_fileValue = package_file.value.trim();
    if (package_fileValue === "") {
        setErrorFor(package_file, 'ກະລຸນາເລືອກຟາຍ Excel ກ່ອນ');
    } else {
        setSuccessFor(package_file);
    }
    if (package_fileValue !== "") {
        setloading(load_package, btn_load_package);
        document.getElementById("import_package").action = "Package";
        document.getElementById("import_package").submit();
    }
}
const myform_delete_info_package = document.getElementById("delete_info_package");
const delete_package = document.getElementById("delete_package");
const load_Delete_info_package = document.getElementById("load_Delete_info_package");
const btnDelete_info_package = document.getElementById("btnDelete_info_package");
myform_delete_info_package.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_delete_info_package();
});

function checkInputs_delete_info_package() {
    setloading(load_Delete_info_package, btnDelete_info_package);
    document.getElementById("delete_info_package").action = "Package";
    document.getElementById("delete_info_package").submit();
}
</script>

<script>
load_data_package("%%", "0");

function load_data_package(query, page) {
    $.ajax({
        url: "fetch_package.php",
        method: "POST",
        data: {
            query: query,
            page: page
        },
        success: function(data) {
            $('#result_data_package').html(data);
        }
    });
}
$('#search_package').keyup(function() {
    var page = "0";
    var search_package = $(this).val();
    if (search_package != '') {
        load_data_package(search_package, page);
    } else {
        load_data_package('%%', page);
    }
});
$(document).on('click', '.page-links_package', function() {
    var page_package = this.id;
    var search_package = $('#search_package').val();
    if (search_package != '') {
        load_data_package(search_package, page_package);
    } else {
        load_data_package("%%", page_package);
    }
});
</script>