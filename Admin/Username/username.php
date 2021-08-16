<?php
  $title = "ຂໍ້ມູນພະນັກງານ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<!-- employee -->
<form action="Username" method="POST" id="form_delete_emp">
    <div class="modal fade" id="exampleModalDeleteEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ລົບຂໍ້ມູນຜູ້ໃຊ້</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p align="center">ທ່ານຕ້ອງການລົບຂໍ້ມູນຜູ້ໃຊ້ ຫຼື ບໍ່ ?</p>
                    <input type="hidden" name="id" id="id">
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
<form action="Username" method="POST" id="formUpdateEmp" enctype="multipart/form-data">
    <div class="modal fade" id="exampleModalUpdateEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ແກ້ໄຂຂໍ້ມູນຜູ້ໃຊ້</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ລະຫັດພະນັກງານ</label>
                            <input type="hidden" name="user_id" id="user_id" placeholder="">
                            <input type="text" name="staff_id2" id="staff_id2" placeholder="ລະຫັດພະນັກງານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ຜູ້ໃຊ້</label>
                            <input type="text" name="user_name2" id="user_name2" placeholder="ຊື່ຜູ້ໃຊ້">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ອີເມວ</label>
                            <input type="text" name="email2" id="email2" placeholder="ອີເມວ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ລະຫັດຜ່ານ</label>
                            <input type="password" name="pass2" id="pass2" placeholder="ລະຫັດຜ່ານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສະຖານະ</label>
                            <select name="stt_id2" id="stt_id2">
                                <option value="">ເລືອກສະຖານະ</option>
                                <?php 
                                    $status = mysqli_query($conn,"select * from user_status");
                                    foreach($status as $user_stt){
                                ?>
                                <option value="<?php echo $user_stt["stt_id"] ?>"><?php echo $user_stt["stt_name"] ?>
                                </option>
                                <?php
                                    }
                                ?>
                            </select>
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຮູບພາບ</label>
                            <input type="file" name="profile_path2" id="profile_path2" onchange="loadFile2(event)" accept=".jpg, .jpeg, .png">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <img src="../../image/camera.jpg" id="output2" width="100%" height="250">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="Btn_Update_emp" id="Btn_Update_emp" class="btn btn-outline-success"
                        onclick="">
                        ແກ້ໄຂ
                        <span class="" id="load_update_emp"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>

<form action="Username" method="POST" id="formSaveEmp" enctype="multipart/form-data">
    <div class="modal fade" id="exampleModalInsertEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ເພີ່ມຂໍ້ມູນຜູ້ໃຊ້ລະບົບ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ລະຫັດພະນັກງານ</label>
                            <input type="text" name="staff_id" id="staff_id" placeholder="ລະຫັດພະນັກງານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ຜູ້ໃຊ້</label>
                            <input type="text" name="user_name" id="user_name" placeholder="ຊື່ຜູ້ໃຊ້">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ອີເມວ</label>
                            <input type="text" name="email" id="email" placeholder="ອີເມວ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ລະຫັດຜ່ານ</label>
                            <input type="password" name="pass" id="pass" placeholder="ລະຫັດຜ່ານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສະຖານະ</label>
                            <select name="stt_id" id="stt_id">
                                <option value="">ເລືອກສະຖານະ</option>
                                <?php 
                                    $status = mysqli_query($conn,"select * from user_status");
                                    foreach($status as $user_stt){
                                ?>
                                <option value="<?php echo $user_stt["stt_id"] ?>"><?php echo $user_stt["stt_name"] ?>
                                </option>
                                <?php
                                    }
                                ?>
                            </select>
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຮູບພາບ</label>
                            <input type="file" name="profile_path" id="profile_path" onchange="loadFile(event)" accept=".jpg, .jpeg, .png">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <img src="../../image/camera.jpg" id="output" width="100%" height="250">
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btn_loadSave" id="btn_loadSave" class="btn btn-outline-primary"
                        onclick="">
                        ເພີ່ມຂໍ້ມູນ
                        <span class="" id="load_save_emp"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>
<!-- End Employee -->
<div class="row">
    <div class="col-xs-12 col-sm-6">
        <div class="input-group mb-3">
            <input type="text" name="search" id="search" class="form-control" placeholder="ຄົ້ນຫາ"
                aria-describedby="button-addon2">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6" align="right">
        <button class="btn btn-primary" data-toggle="modal" data-target="#exampleModalInsertEmp" type="button">
            <i class="fas fa-plus-circle"></i> ເພີ່ມຂໍ້ມູນ</button>
    </div>
</div>
<div id="result_data" class="result_data">
    <?php
       // include ($path."header-footer/loading.php");
    ?>
</div>
<?php
    if(isset($_POST['user_name'])){
        $obj->insert_username(trim($_POST["staff_id"]),trim($_POST["user_name"]),trim($_POST["email"]),trim($_POST["pass"]),trim($_POST["stt_id"]),$_FILES["profile_path"]["name"]);
    }
    if(isset($_POST['user_id'])){
        $obj->update_username(trim($_POST["user_id"]),trim($_POST["staff_id2"]),trim($_POST["user_name2"]),trim($_POST["email2"]),trim($_POST["pass2"]),trim($_POST["stt_id2"]),$_FILES["profile_path2"]["name"]);
    }
    if(isset($_POST["id"])){
        $obj->del_username($_POST["id"]);
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
      if(isset($_GET["update"])=="fail"){
        echo'<script type="text/javascript">
        swal("", "ແກ້ໄຂຂໍ້ມູນຜິດພາດ !", "error");
        </script>';
      }  
      if(isset($_GET["update2"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ແກ້ໄຂຂໍ້ມູນສຳເລັດ !", "success");
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
      if(isset($_GET["email"])=="same"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດເພີ່ມຂໍ້ມູນໄດ້ເນື່ອງຈາກອີ່ເມວນີ້ມີຢູ່ແລ້ວກະລຸາໃສ່ອີເມວທີ່ແຕກຕ່າງ !", "info");
        </script>';
      }  
      if(isset($_GET["staffid"])=="same"){
        echo'<script type="text/javascript">
        swal("", "ລະຫັດພະນັກງານນີ້ມີຢູ່ແລ້ວ ກະລຸນາໃສ່ລະຫັດພະນັກງານທີ່ແຕກຕ່າງ !", "info");
        </script>';
      }  
      if(isset($_GET["register"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການລົງທະບຽນພະນັກງານແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["audio"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Audio ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["bio"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Biochemistry ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["ekg"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ EKG ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["metal"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Heavy Metal ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["imm"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Immunity ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["meth"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Methamphetamine ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["muscle"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Muscle ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["vision"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ OC Vision ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["pe"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ PE ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["se"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ SE ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["spiro"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Spirometry ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["thryroid"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Thryroid ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["tumor"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Tumor Marker ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["urine"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ Urinalvsis ແລ້ວ !", "error");
        </script>';
      }  
      if(isset($_GET["xray"])=="has"){
        echo'<script type="text/javascript">
        swal("", "ບໍ່ສາມາດລົບຂໍ້ມູນໄດ້ ເນື່ອງຈາກຜູ້ໃຊ້ນີ້ໄປເຄີຍທຳການປ້ອນຂໍ້ມູນ X-Ray ແລ້ວ !", "error");
        </script>';
      }  

    include ("../../header-footer/footer.php");
?>
<script>
const myform_formSaveEmp = document.getElementById("formSaveEmp");
const staff_id = document.getElementById("staff_id");
const user_name = document.getElementById("user_name");
const email = document.getElementById("email");
const pass = document.getElementById("pass");
const stt_id = document.getElementById("stt_id");
const load_save_emp = document.getElementById("load_save_emp");
const btn_loadSave = document.getElementById("btn_loadSave");
myform_formSaveEmp.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_formSaveEmp();
});

function checkInputs_formSaveEmp() {
    const staff_idValue = staff_id.value.trim();
    const user_nameValue = user_name.value.trim();
    const emailValue = email.value.trim();
    const passValue = pass.value.trim();
    const stt_idValue = stt_id.value.trim();
    if (staff_idValue === "") {
        setErrorFor(staff_id, 'ກະລຸນາປ້ອນຊື່ພະນັກງານ');
    } else {
        setSuccessFor(staff_id);
    }
    if (user_nameValue === "") {
        setErrorFor(user_name, 'ກະລຸນາປ້ອນຊື່ຢູ່ໃຊ້');
    } else {
        setSuccessFor(user_name);
    }
    if (emailValue === "") {
        setErrorFor(email, 'ກະລຸນາປ້ອນອີເມວ');
    }
    else if (!isEmail(emailValue)) {
    setErrorFor(email, 'ຮູບແບບອີເມວບໍ່ຖືກຕ້ອງ')
    }
    else {
        setSuccessFor(email);
    }
    if (passValue === "") {
        setErrorFor(pass, 'ກະລຸນາປ້ອນລະຫັດຜ່ານ');
    } else {
        setSuccessFor(pass);
    }
    if (stt_idValue === "") {
        setErrorFor(stt_id, 'ກະລຸນາປ້ອນຊື່ບໍລິສັດ');
    } else {
        setSuccessFor(stt_id);
    }
    if (staff_idValue !== "" && user_nameValue !== "" && emailValue !== "" && stt_idValue !== "" && passValue !== "") {
        setloading(load_save_emp, btn_loadSave);
        document.getElementById("formSaveEmp").action = "Username";
        document.getElementById("formSaveEmp").submit();
    }
}


const myform_formUpdateEmp = document.getElementById("formUpdateEmp");
const staff_id2 = document.getElementById("staff_id2");
const user_name2 = document.getElementById("user_name2");
const email2 = document.getElementById("email2");
const pass2 = document.getElementById("pass2");
const stt_id2 = document.getElementById("stt_id2");
const load_update_emp = document.getElementById("load_update_emp");
const Btn_Update_emp = document.getElementById("Btn_Update_emp");
myform_formUpdateEmp.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_formUpdateEmp();
});

function checkInputs_formUpdateEmp() {
    const staff_id2Value = staff_id2.value.trim();
    const user_name2Value = user_name2.value.trim();
    const email2Value = email2.value.trim();
    const pass2Value = pass2.value.trim();
    const stt_id2Value = stt_id2.value.trim();
    if (staff_id2Value === "") {
        setErrorFor(staff_id2, 'ກະລຸນາປ້ອນຊື່ພະນັກງານ');
    } else {
        setSuccessFor(staff_id2);
    }
    if (user_name2Value === "") {
        setErrorFor(user_name2, 'ກະລຸນາປ້ອນຊື່ຢູ່ໃຊ້');
    } else {
        setSuccessFor(user_name2);
    }
    if (email2Value === "") {
        setErrorFor(email2, 'ກະລຸນາປ້ອນອີເມວ');
    }
    else if (!isEmail(email2Value)) {
    setErrorFor(email2, 'ຮູບແບບອີເມວບໍ່ຖືກຕ້ອງ')
    }
    else {
        setSuccessFor(email2);
    }
    if (pass2Value === "") {
        setErrorFor(pass2, 'ກະລຸນາປ້ອນລະຫັດຜ່ານ');
    } else {
        setSuccessFor(pass2);
    }
    if (stt_id2Value === "") {
        setErrorFor(stt_id2, 'ກະລຸນາປ້ອນຊື່ບໍລິສັດ');
    } else {
        setSuccessFor(stt_id2);
    }
    if (staff_id2Value !== "" && user_name2Value !== "" && email2Value !== "" && stt_id2Value !== "" && pass2Value !== "") {
        setloading(load_update_emp, Btn_Update_emp);
        document.getElementById("formUpdateEmp").action = "Username";
        document.getElementById("formUpdateEmp").submit();
    }
}



const myform_form_delete_emp = document.getElementById("form_delete_emp");
const id = document.getElementById("id");
const load_Del_emp = document.getElementById("load_Del_emp");
const btnDel_emp = document.getElementById("btnDel_emp");
myform_form_delete_emp.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_form_delete_emp();
});

function checkInputs_form_delete_emp() {


        setloading(load_Del_emp, btnDel_emp);
        document.getElementById("form_delete_emp").action = "Username";
        document.getElementById("form_delete_emp").submit();

}

</script>


<script>
$(document).ready(function() {
    load_data("%%", "0");

    function load_data(query, page) {
        $.ajax({
            url: "fetch_username.php",
            method: "POST",
            data: {
                query: query,
                page: page
            },
            success: function(data) {
                $("#result_data").html(data);
            }
        });
    }
    $('#search').keyup(function() {
        var page = "0";
        var search = $('#search').val();
        if (search != '') {
            load_data(search, page);
        } else {
            load_data('%%', page);
        }
    });
    $(document).on("click", ".page-links_emp", function() {
        var page = this.id;
        console.log(page_emp);
        var search = $('#search').val();
        if (search != "") {
            load_data(search, page);
        } else {
            load_data("%%", page);
        }
    });
});
</script>
<script>
var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
    output.onload = function() {
        URL.revokeObjectURL(output.src) // free memory
    }
};
var loadFile2 = function(event) {
    var output2 = document.getElementById('output2');
    output2.src = URL.createObjectURL(event.target.files[0]);
    output2.onload = function() {
        URL.revokeObjectURL(output2.src) // free memory
    }
};
</script>