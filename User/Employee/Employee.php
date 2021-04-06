<?php
  $title = "ຂໍ້ມູນພະນັກງານ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<!-- employee -->
<form action="Employee" method="POST" id="import_emp" enctype="multipart/form-data">
    <div class="modal fade" id="exampleModalimpEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ນຳເຂົ້າຂໍ້ມູນພະນັກງານ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ບໍລິສັດ</label>
                            <select name="companyID" id="companyID">
                                <option value="">ເລືອກບໍລິສັດ</option>
                                <option value="ລາວໂທລະຄົມ">ລາວໂທລະຄົມ</option>
                            </select>
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຟາຍນຳເຂົ້າ</label>
                            <input type="file" name="emp_file" id="emp_file" class="form-control">
                            <input type="hidden" name="upload_emp_id" id="upload_emp_id">
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
<form action="Employee" method="POST" id="form_register">
    <div class="modal fade" id="exampleModalRegisterEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ລົງທະບຽນ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p align="center">ລຳດັບຄິວເລກທີ: <lable class="queue"></lable>
                    </p>
                    <input type="hidden" name="queue" id="queue" class="queue">
                    <input type="hidden" name="reg_id" id="reg_id">
                    <input type="hidden" name="register_barcode" id="register_barcode">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btnRegister" id="btnRegister" class="btn btn-outline-primary"
                        onclick="">
                        ລົງທະບຽນ
                        <span class="" id="load_Regiser"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="register" method="POST" id="form_delete_emp">
    <div class="modal fade" id="exampleModalDeleteEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ລົບຂໍ້ມູນພະນັກງານ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p align="center">ທ່ານຕ້ອງການລົບຂໍ້ມູນພະນັກງານ ຫຼື ບໍ່ ?</p>
                    <input type="hidden" name="emp_id_del" id="emp_id_del">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="del_emp" id="btnDel_emp" class="btn btn-outline-danger" onclick="">
                        ລົບ
                        <span class="" id="load_Del_emp"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<form action="Employee" method="POST" id="formSaveEmp">
    <div class="modal fade" id="exampleModalUpdateEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ເພີ່ມຂໍ້ມູນພະນັກງານ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ລະຫັດພະນັກງານ</label>
                            <input type="text" name="emp_id" id="emp_id" placeholder="ລະຫັດພະນັກງານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ພະນັກງານ</label>
                            <input type="text" name="emp_name" id="emp_name" placeholder="ຊື່ພະນັກງານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ນາມສະກຸນ</label>
                            <input type="text" name="surname" id="surname" placeholder="ນາມສະກຸນ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ວັນເດືອນປີເກີດ</label>
                            <input type="date" name="dob" id="dob">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ອາຍຸ</label>
                            <input type="text" name="age" id="age" placeholder="ອາຍຸ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເພດ</label>
                            <select name="gender" id="gender">
                                <option value="">ເລືອກເພດ</option>
                                <option value="ຍິງ">ຍິງ</option>
                                <option value="ຊາຍ">ຊາຍ</option>
                            </select>
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ບໍລິສັດ</label>
                            <input type="text" name="company" id="company" placeholder="ບໍລິສັດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສາຂາ</label>
                            <input type="text" name="branch" id="branch" placeholder="ສາຂາ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ພະແນກ</label>
                            <input type="text" name="department" id="department" placeholder="ພະແນກ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເບີໂທລະສັບ</label>
                            <input type="text" name="tel" id="tel" placeholder="ເບີໂທລະສັບ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສະຖານະຄອບຄົວ</label>
                            <input type="text" name="status" id="status" placeholder="ສະຖານະຄອບຄົວ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສັນຊາດ</label>
                            <input type="text" name="nation" id="nation" placeholder="ສັນຊາດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊົນເຜົ່າ</label>
                            <input type="text" name="ethnic" id="ethnic" placeholder="ຊົນເຜົ່າ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສາສະໜາ</label>
                            <input type="text" name="religion" id="religion" placeholder="ສາສະໜາ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ອາຊີບ</label>
                            <input type="text" name="job" id="job" placeholder="ອາຊີບ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເຮືອກເລກທີ</label>
                            <input type="text" name="home_no" id="home_no" placeholder="ເຮືອກເລກທີ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ບ້ານຢູ່ປັດຈຸບັນ</label>
                            <input type="text" name="village" id="village" placeholder="ບ້ານຢູ່ປັດຈຸບັນ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເມືອງ</label>
                            <input type="text" name="district" id="district" placeholder="ເມືອງ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ແຂວງ</label>
                            <input type="text" name="province" id="province" placeholder="ແຂວງ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="Com_Update" id="btnSave" class="btn btn-outline-success" onclick="">
                        ເພີ່ມພະນັກງານ
                        <span class="" id="load_save"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<!-- End Employee -->
<form action="exportemployee" method="POST" id="form_export_employee" target="_blank">
    <div class="row">
        <div class="col-xs-12 col-sm-6">
            <div class="input-group mb-3">
                <select name="search_company" id="search_company" class="form-control">
                    <option value="">ເລືອກບໍລິສັດ</option>
                    <option value="Lao Telecom">Lao Telecom</option>
                </select>
                <input type="text" name="emp_search" id="emp_search" class="form-control"
                    placeholder="ລະຫັດ ພ/ງ, ຊື່, ອາຍຸ, ບໍລິສັດ" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                    type="button" id="button-addon2">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6" align="right">
            <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModalUpdateEmp" type="button">
                <i class="fas fa-plus-circle"></i> ເພີ່ມຂໍ້ມູນ</button>
            <button class="btn btn-success" data-toggle="modal" data-target="#exampleModalimpEmp" type="button"
                id="button-addon2"><i class="fas fa-paperclip"></i>
                ນຳເຂົ້າຂໍ້ມູນ
            </button>

            <button class="btn btn-success" name="export_employee" id="export_employee"><i
                    class="fas fa-file-export"></i>
                Export
            </button>
        </div>
    </div>
</form>
<div id="result_data_emp" class="result_data_emp">
    <?php
        include ($path."header-footer/loading.php");
    ?>
</div>
<?php
    if(isset($_POST['emp_name'])){
        $barcode = "";
        $get_barcode = mysqli_query($conn,"call max_barcode_emp();");
        if(mysqli_num_rows($get_barcode) > 0){
            $max = mysqli_fetch_array($get_barcode,MYSQLI_ASSOC);
            $no_ = (int)$max['barcode']+1;
            $new_max = sprintf("%05s",$no_);
            $barcode = "1".$Date_barcode.$new_max; 
        }
        else{
            $barcode = "1".$Date_barcode."00001"; 
        }
        mysqli_free_result($get_barcode);  
        mysqli_next_result($conn);
        $obj->insert_employee($barcode,$_POST["emp_id"],$_POST["emp_name"],$_POST["surname"],$_POST["dob"],$_POST["age"],$_POST["gender"],$_POST["company"],$_POST["branch"],$_POST["department"],$_POST["tel"],$_POST["family_stt"],$_POST["nation"],$_POST["ethnnic"],$_POST["religion"],$_POST["job"],$_POST["house_no"],$_POST["village"],$_POST["district"],$_POST["province"]);
    }
    if(isset($_POST["upload_emp_id"])){
        $obj->import_emp($_FILES["emp_file"]["tmp_name"]);
    }
    if(isset($_POST["emp_id_del"])){
        $obj->delete_emp($_POST["emp_id_del"]);

    }
    if(isset($_GET["barcode"])=="registed"){
        echo'<script type="text/javascript">
        swal("", "ບຣາໂຄດນີ້ໄດ້ທຳການລົງທະບຽນແລ້ວ !", "info");
        </script>';
      }  
    if(isset($_GET["import"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ນຳເຂົ້າຂໍ້ມູນສຳເລັດ !", "success");
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
      if(isset($_GET["regis"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ລົງທະບຽນສຳເລັດ !", "success");
        </script>';
      }  
    include ("../../header-footer/footer.php");
?>
<script>
loadReg();

function loadReg() {
    $.ajax({
        url: "reg.php",
        success: function(result) {
            $('#reg_id').val(result); //insert text of test.php into your div
            setTimeout(function() {
                loadReg(); //this will send request again and again;
            }, 2000);
        }
    });
}
loadQueue();

function loadQueue() {
    $.ajax({
        url: "queue.php",
        success: function(result) {
            $('.queue').val(result); //insert text of test.php into your div
            setTimeout(function() {
                loadQueue(); //this will send request again and again;
            }, 2000);
        }
    });
}
loadQueue2();

function loadQueue2() {
    $.ajax({
        url: "queue.php",
        success: function(result) {
            $('.queue').text(result); //insert text of test.php into your div
            setTimeout(function() {
                loadQueue2(); //this will send request again and again;
            }, 2000);
        }
    });
}
</script>
<script>
const myform = document.getElementById("formSaveEmp");
const emp_id = document.getElementById("emp_id");
const emp_name = document.getElementById("emp_name");
const surname = document.getElementById("surname");
const dob = document.getElementById("dob");
const age = document.getElementById("age");
const gender = document.getElementById("gender");
const company = document.getElementById("company");
const branch = document.getElementById("branch");
const department = document.getElementById("department");
const tel = document.getElementById("tel");
const status = document.getElementById("status");
const nation = document.getElementById("nation");
const ethnic = document.getElementById("ethnic");
const religion = document.getElementById("religion");
const job = document.getElementById("job");
const home_no = document.getElementById("home_no");
const village = document.getElementById("village");
const district = document.getElementById("district");
const province = document.getElementById("province");
const load_save = document.getElementById("load_save");
const btnLoad_save = document.getElementById("btnSave");
myform.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs();
});

function checkInputs() {
    const emp_idValue = emp_id.value.trim();
    const emp_nameValue = emp_name.value.trim();
    const surnameValue = surname.value.trim();
    const dobValue = dob.value.trim();
    const ageValue = age.value.trim();
    const genderValue = gender.value.trim();
    const companyValue = company.value.trim();
    const branchValue = branch.value.trim();
    const departmentValue = department.value.trim();
    const telValue = tel.value.trim();
    const statusValue = status.value.trim();
    const nationValue = nation.value.trim();
    const ethnicValue = ethnic.value.trim();
    const religionValue = religion.value.trim();
    const jobValue = job.value.trim();
    const home_noValue = home_no.value.trim();
    const villageValue = village.value.trim();
    const districtValue = district.value.trim();
    const provinceValue = province.value.trim();

    if (emp_nameValue === "") {
        setErrorFor(emp_name, 'ກະລຸນາປ້ອນຊື່ພະນັກງານ');
    } else {
        setSuccessFor(emp_name);
    }
    if (ageValue === "") {
        setErrorFor(age, 'ກະລຸນາປ້ອນອາຍຸພະນັກງານ');
    } else {
        setSuccessFor(age);
    }
    if (genderValue === "") {
        setErrorFor(gender, 'ກະລຸນາເລືອກເພດ');
    } else {
        setSuccessFor(gender);
    }
    if (companyValue === "") {
        setErrorFor(company, 'ກະລຸນາປ້ອນຊື່ບໍລິສັດ');
    } else {
        setSuccessFor(company);
    }
    if (departmentValue === "") {
        setErrorFor(department, 'ກະລຸນາປ້ອນພະແນກ');
    } else {
        setSuccessFor(department);
    }
    if (emp_nameValue !== "" && ageValue !== "" && genderValue !== "" && companyValue !== "" && departmentValue !==
        "") {
        setloading(load_save, btnLoad_save);
        document.getElementById("formSaveEmp").action = "Employee";
        document.getElementById("formSaveEmp").submit();
    }
}

const myform_import_emp = document.getElementById("import_emp");
const emp_file = document.getElementById("emp_file");
const companyID = document.getElementById("companyID");
const upload_emp_id = document.getElementById("upload_emp_id");
const load_import_emp = document.getElementById("load_import_emp");
const btnload_import_emp = document.getElementById("btnload_import_emp");
myform_import_emp.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_import_emp();
});

function checkInputs_import_emp() {
    const emp_fileValue = emp_file.value.trim();
    const companyIDValue = companyID.value.trim();
    if (emp_fileValue === "") {
        setErrorFor(emp_file, 'ກະລຸນາເລືອກຟາຍ Excel ກ່ອນ');
    } else {
        setSuccessFor(emp_file);
    }
    if (companyIDValue === "") {
        setErrorFor(companyID, 'ກະລຸນາເລືອກບໍລິສັດ');
    } else {
        setSuccessFor(companyID);
    }
    if (emp_fileValue !== "") {
        setloading(load_import_emp, btnload_import_emp);
        document.getElementById("import_emp").action = "Employee";
        document.getElementById("import_emp").submit();
    }
}
const myform_form_delete_emp = document.getElementById("form_delete_emp");
const emp_id_del = document.getElementById("emp_id_del");
const load_Del_emp = document.getElementById("load_Del_emp");
const btnDel_emp = document.getElementById("btnDel_emp");
myform_form_delete_emp.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_Delete_emp();
});

function checkInputs_Delete_emp() {
    setloading(load_Del_emp, btnDel_emp);
    document.getElementById("form_delete_emp").action = "Employee";
    document.getElementById("form_delete_emp").submit();
}
</script>


<script>
$(document).ready(function() {
    load_data_emp("%%", "%%", "0");

    function load_data_emp(query, query2, page) {
        $.ajax({
            url: "fetch_emp.php",
            method: "POST",
            data: {
                query: query,
                query2: query2,
                page: page
            },
            success: function(data) {
                $("#result_data_emp").html(data);
            }
        });
    }
    $('#search_company').click(function() {
        var page = "0";
        var search_company = $(this).val();
        var emp_search = $('#emp_search').val();
        if (search_company != '') {
            load_data_emp(search_company, emp_search, page);
        } else {
            load_data_emp('%%', emp_search, page);
        }
    });
    $("#emp_search").keyup(function() {
        var page = "0";
        var emp_search = $(this).val();
        var search_company = $("#search_company").val();
        if (emp_search != "") {
            load_data_emp(search_company, emp_search, page);
        } else {
            load_data_emp(search_company, "%%", page);
        }
    });
    $(document).on("click", ".page-links_emp", function() {
        var page_emp = this.id;
        console.log(page_emp);
        var emp_search = $('#emp_search').val();
        var search_company = $("#search_company").val();
        if (search_company != "" || emp_search != "") {
            load_data_emp(search_company, emp_search, page_emp);
        } else {
            load_data_emp("%%", "%%", page_emp);
        }
    });
});
</script>