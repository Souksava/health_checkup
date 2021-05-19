<?php
  $title = "ຂໍ້ມູນບໍລິສັດ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<form action="Company" method="POST" id="save_companay">
    <div class="modal fade" id="exampleModalInsertcompany" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ເພີ່ມຂໍ້ມູນບໍລິສັດ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ບໍລີສັດ</label>
                            <input type="text" name="company" id="company" placeholder="ຊື່ບໍລີສັດ"
                                class="form-control">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ສະຕິກເກີ້</label>
                            <input type="text" name="sticker" id="sticker" placeholder="ຊື່ສະຕິກເກີ້"
                                class="form-control">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ພາສາອັງກິດ</label>
                            <input type="text" name="company_en" id="company_en" placeholder="ຊື່ພາສາອັງກິດ"
                                class="form-control">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btn_com_save" id="btn_com_save" class="btn btn-outline-primary"
                        onclick="">
                        ເພີ່ມຂໍ້ມູນ
                        <span class="" id="load_save"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="Company" method="POST" id="form_AddPackage">
    <div class="modal fade" id="exampleModalAddPackage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ແພັກເກັດກວດສຸຂະພາບບໍລິສັດ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-xs-12 col-sm-6">
                            <form action="Company" method="POST" id="clear_company">
                                <input type="hidden" name="company_id_clear_package" id="company_id_clear_package">
                                <div id="result_data_package_info">
                                    <?php
                                    include ($path."header-footer/loading.php");
                                ?>
                                </div>
                            </form>
                        </div>
                        <div class="col-xs-12 col-sm-6">
                            <form action="Company" method="POST" id="Form_Add_Package">
                                <input type="hidden" name="company_id_add" id="company_id_add">
                                <!-- ການ fetch table ຂຶ້ນ Modal ແມ່ນ step 3: ສ້າງ Modal ກັບ id ຂຶ້ນເພື່ອສົ່ງໄປ Fetch ເອົາຂໍ້ມູນມາສະແດງ -->
                                <div id="result_package_add">
                                    <?php
                                    include ($path."header-footer/loading.php");
                                ?>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ປິດໜ້ານີ້</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="Company" method="POST" id="form_update_com">
    <div class="modal fade" id="exampleModalUpdatecompany" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ແກ້ໄຂຂໍ້ມູນບໍລິສັດ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ບໍລີສັດ</label>
                            <input type="hidden" name="com_id" id="com_id">
                            <input type="text" name="company2" id="company2" placeholder="ຊື່ບໍລີສັດ"
                                class="form-control">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ສະຕິກເກີ້</label>
                            <input type="text" name="sticker2" id="sticker2" placeholder="ຊື່ສະຕິກເກີ້"
                                class="form-control">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ພາສາອັງກິດ</label>
                            <input type="text" name="company_en2" id="company_en2" placeholder="ຊື່ພາສາອັງກິດ"
                                class="form-control">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btn_load_Update" id="btn_load_Update" class="btn btn-outline-success"
                        onclick="">
                        ແກ້ໄຂ
                        <span class="" id="load_update"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="register" method="POST" id="form_delete_com">
    <div class="modal fade" id="exampleModalDeleteCom" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ລົບຂໍ້ມູນບໍລິສັດ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p align="center">ທ່ານຕ້ອງການລົບຂໍ້ມູນບໍລິສັດ ຫຼື ບໍ່ ?</p>
                    <input type="hidden" name="id" id="id">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btndel_emp" id="btnDel_emp" class="btn btn-outline-danger" onclick="">
                        ລົບ
                        <span class="" id="load_Del_emp"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<div class="row">
    <div class="col-xs-12 col-sm-6">
        <div class="input-group mb-3">
            <input type="text" aria-label="First name" id="search_company" class="form-control" placeholder="ຄົ້ນຫາ">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6" align="right">
        <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModalInsertcompany"><i
                class="fas fa-plus-circle"></i> ເພີ່ມຂໍ້ມູນ</button>
    </div>
</div>
<div id="result_data_company" class="result_data_company">
    <?php
        include ($path."header-footer/loading.php");
    ?>
</div>
<?php
    if(isset($_POST["company"])){
        $obj->insert_company($_POST["company"],$_POST["company_en"],$_POST["sticker"]);
    }
    if(isset($_POST["com_id"])){
        $obj->update_company($_POST["com_id"],$_POST["company2"],$_POST["company_en2"],$_POST["sticker2"]);
    }
    if(isset($_POST["id"])){
        $obj->delete_company($_POST["id"]);
    }
    if(isset($_POST["company_id_clear_package"])){
        $obj->clear_company_package($_POST["company_id_clear_package"]);
    }
    if(isset($_POST["company_id_add"])){
        if(empty($_POST["pack_id"])){
            echo"<script>";
            echo"window.location.href='Company?package=null';";
            echo"</script>";
        }
        else{
        $obj->add_company_package($_POST["company_id_add"],$_POST["pack_id"]);
        }
    }
    if(isset($_GET["package"])=="null"){
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
      if(isset($_GET["save2"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ບັນທຶກຂໍ້ມູນສຳເລັດ !", "success");
        </script>';
      }  
      if(isset($_GET["save"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດບັນທຶກຂໍ້ມູນໄດ້ !", "error");
        </script>';
      } 
      if(isset($_GET["update2"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ແກ້ໄຂຂໍ້ມູນສຳເລັດ !", "success");
        </script>';
      }  
      if(isset($_GET["update"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ແກ້ໄຂຂໍ້ມູນຜິດພາດ !", "error");
        </script>';
      } 
      if(isset($_GET["company"])=="employee"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ເນື່ອງຈາກບໍລິສັດນີ້ໄດ້ເພີ່ມຢູ່ໃນພະນັກງານແລ້ວ !", "info");
        </script>';
      } 
      if(isset($_GET["clear2"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ລ້າງຂໍ້ມູນສຳເລັດ !", "success");
        </script>';
      } 
      if(isset($_GET["clear"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ລ້າງຂໍ້ມູນຜິດພາດ !", "error");
        </script>';
      } 
      if(isset($_GET["addpackage2"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ເພີ່ມແພັກເກັດສຳເລັດ !", "success");
        </script>';
      } 
      if(isset($_GET["pack_id"])){
          $msg = $_GET["pack_id"];
      }
      if(isset($_GET["addpackage"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ເພີ່ມແພັກເກັດຜິດພາດຈາກແພັກຊື່ '.$msg.' !", "error");
        </script>';
      } 
      if(isset($_GET["company"])=="same"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດເພີ່ມຂໍ້ມູນໄດ້ເນື່ອງຈາກຊື່ບໍລິສັດນີ້ມີຢູ່ແລ້ວ !", "info");
        </script>';
      } 
      if(isset($_GET["companypackage"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດເພີ່ມຂໍ້ມູນໄດ້ເນື່ອງຈາກຊື່ບໍລິສັດນີ້ໄດ້ເພີ່ມແພັກເກັດແລ້ວ ກະລຸນາລ້າງລາຍການແພັກເກັດບໍລິສັດກ່ອນ !", "info");
        </script>';
      } 
    include ("../../header-footer/footer.php");
?>

<script>
const myform_save_companay = document.getElementById("save_companay");
const company = document.getElementById("company");
const company_en = document.getElementById("company_en");
const sticker = document.getElementById("sticker");
const load_save = document.getElementById("load_save");
const btn_com_save = document.getElementById("btn_com_save");
myform_save_companay.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_save_companay();
});

function checkInputs_save_companay() {
    const companyValue = company.value.trim();
    const company_enValue = company_en.value.trim();
    const stickerValue = sticker.value.trim();
    if (companyValue === "") {
        setErrorFor(company, 'ກະລຸນາປ້ອນຊື່ບໍລິສັດ');
    } else {
        setSuccessFor(company);
    }
    if (stickerValue === "") {
        setErrorFor(sticker, 'ກະລຸນາປ້ອນຊື່ສະຕິກເກີ້');
    } else {
        setSuccessFor(sticker);
    }
    if (companyValue !== "" && stickerValue !== "") {
        setloading(load_save, btn_com_save);
        document.getElementById("save_companay").action = "Company";
        document.getElementById("save_companay").submit();
    }
};


const myform_form_update_com = document.getElementById("form_update_com");
const com_id = document.getElementById("com_id");
const company2 = document.getElementById("company2");
const company_en2 = document.getElementById("company_en2");
const sticker2 = document.getElementById("sticker2");
const load_update = document.getElementById("load_update");
const btn_load_Update = document.getElementById("btn_load_Update");
myform_form_update_com.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_form_update_com();
});

function checkInputs_form_update_com() {
    const company2Value = company2.value.trim();
    const company_en2Value = company_en2.value.trim();
    const sticker2Value = sticker2.value.trim();
    if (company2Value === "") {
        setErrorFor(company2, 'ກະລຸນາປ້ອນຊື່ບໍລິສັດ');
    } else {
        setSuccessFor(company2);
    }
    if (sticker2Value === "") {
        setErrorFor(sticker2, 'ກະລຸນາປ້ອນຊື່ສະຕິກເກີ້');
    } else {
        setSuccessFor(sticker2);
    }
    if (company2Value !== "" && sticker2Value !== "") {
        setloading(load_update, btn_load_Update);
        document.getElementById("form_update_com").action = "Company";
        document.getElementById("form_update_com").submit();
    }
};


const myform_form_delete_com = document.getElementById("form_delete_com");
const id = document.getElementById("id");
const load_Del_emp = document.getElementById("load_Del_emp");
const btnDel_emp = document.getElementById("btnDel_emp");
myform_form_delete_com.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_form_delete_com();
});

function checkInputs_form_delete_com() {
    setloading(load_Del_emp, btnDel_emp);
    document.getElementById("form_delete_com").action = "Company";
    document.getElementById("form_delete_com").submit();

};



const myform_Form_Add_Package = document.getElementById("Form_Add_Package");
const company_id_add = document.getElementById("company_id_add");
const load_add_package = document.getElementById("load_add_package");
const btn_load_Add_package = document.getElementById("btn_load_Add_package");
myform_Form_Add_Package.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_Form_Add_Package();
});

function checkInputs_Form_Add_Package() {
    // setloading(load_add_package, btn_load_Add_package);
    document.getElementById("Form_Add_Package").action = "Company";
    document.getElementById("Form_Add_Package").submit();

};




const myform_clear_company = document.getElementById("clear_company");
const company_id_clear_package = document.getElementById("company_id_clear_package");
const load_clear = document.getElementById("load_clear");
const btn_load_clear = document.getElementById("btn_load_clear");
myform_clear_company.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_clear_company();
});

function checkInputs_clear_company() {
    setloading(load_clear, btn_load_clear);
    document.getElementById("clear_company").action = "Company";
    document.getElementById("clear_company").submit();

};

</script>
<script>
$(document).ready(function() {

    load_data_company("%%", "0");

    function load_data_company(query, page) {
        $.ajax({
            url: "fetch_company.php",
            method: "POST",
            data: {
                query: query,
                page: page
            },
            success: function(data) {
                $("#result_data_company").html(data);
            }
        });
    }
    $("#search_company").keyup(function() {
        var page = "0";
        var search_company = $(this).val();
        if (search_company != "") {
            load_data_company(search_company, page);
        } else {
            load_data_company(search_company, page);
        }
    });
    $(document).on("click", ".page-links_company", function() {
        var page = this.id;
        console.log(page);
        var search_company = $('#search_company').val();
        if (search_company != "") {
            load_data_company(search_company, page);
        } else {
            load_data_company("%%", page);
        }
    });





    load_data_add("");
//ການ fetch table ຂຶ້ນ Modal ແມ່ນ step 4: ສ້າງ ajax ເພື່ອສົ່ງຂໍ້ມູນໄປໃຫ້ອີກ file ໜຶ່ງເພື່ອນຳໄປປະມວນຜົນມາສະແດງ
    function load_data_add(query) {
        $.ajax({
            url: "fetch_company_package.php",
            method: "POST",
            data: {
                query: query
            },
            success: function(data) {
                $("#result_package_add").html(data);
            }
        });
    };




    load_data_package_info("");

    function load_data_package_info(query) {
        $.ajax({
            url: "fetch_package_info.php",
            method: "POST",
            data: {
                query: query
            },
            success: function(data) {
                $("#result_data_package_info").html(data);
            }
        });
    };
    //ການ fetch table ຂຶ້ນ Modal ແມ່ນ step 5: ສ້າງ event click ອີກຮອບເພື່ອກຳນົດຂໍ້ມູນສົ່ງໄປ
    $(document).on("click", ".btnAddpackage", function() {
        var company_id_add = $("#company_id_add").val();
        if (company_id_add != "") {
            load_data_add(company_id_add);
        } else {
            load_data_add("");
        }

        var company_id_clear_package = $("#company_id_clear_package").val();
        if (company_id_clear_package != "") {
            load_data_package_info(company_id_clear_package);
        } else {
            load_data_package_info("");
        }
    });
});
</script>