<?php
  $title = "ຂໍ້ມູນພະນັກງານ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<!-- employee -->
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
<form action="Employee" method="POST" id="formUpdateEmp">
    <div class="modal fade" id="exampleModalUpdateEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ແກ້ໄຂຂໍ້ມູນພະນັກງານ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ລະຫັດພະນັກງານ</label>
                            <input type="hidden" name="barcode2" id="barcode2">
                            <input type="text" name="emp_id2" id="emp_id2" placeholder="ລະຫັດພະນັກງານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ພະນັກງານ</label>
                            <input type="text" name="emp_name2" id="emp_name2" placeholder="ຊື່ພະນັກງານ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ນາມສະກຸນ</label>
                            <input type="text" name="surname2" id="surname2" placeholder="ນາມສະກຸນ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ວັນເດືອນປີເກີດ</label>
                            <input type="date" name="dob2" id="dob2">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ອາຍຸ</label>
                            <input type="text" name="age2" id="age2" placeholder="ອາຍຸ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເພດ</label>
                            <select name="gender2" id="gender2">
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
                            <select name="company2" id="company2">
                                <option value="">ເລືອກບໍລິສັດ</option>
                                <?php 
                                    $obj->dropdown_company();
                                    foreach($result_dropdown as $com_update){
                                ?>
                                <option value="<?php echo $com_update["com_id"] ?>"><?php echo $com_update["company"] ?>
                                </option>
                                <?php
                                    }
                                    mysqli_free_result($result_dropdown);  
                                    mysqli_next_result($conn);
                                ?>
                            </select>
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສາຂາ</label>
                            <input type="text" name="branch2" id="branch2" placeholder="ສາຂາ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ພະແນກ</label>
                            <input type="text" name="department2" id="department2" placeholder="ພະແນກ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເບີໂທລະສັບ</label>
                            <input type="text" name="tel2" id="tel2" placeholder="ເບີໂທລະສັບ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສະຖານະຄອບຄົວ</label>
                            <input type="text" name="family_stt2" id="family_stt2" placeholder="ສະຖານະຄອບຄົວ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສັນຊາດ</label>
                            <input type="text" name="nation2" id="nation2" placeholder="ສັນຊາດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊົນເຜົ່າ</label>
                            <input type="text" name="ethnic2" id="ethnic2" placeholder="ຊົນເຜົ່າ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສາສະໜາ</label>
                            <input type="text" name="religion2" id="religion2" placeholder="ສາສະໜາ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ອາຊີບ</label>
                            <input type="text" name="job2" id="job2" placeholder="ອາຊີບ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເຮືອກເລກທີ</label>
                            <input type="text" name="home_no2" id="home_no2" placeholder="ເຮືອກເລກທີ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ບ້ານຢູ່ປັດຈຸບັນ</label>
                            <input type="text" name="village2" id="village2" placeholder="ບ້ານຢູ່ປັດຈຸບັນ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເມືອງ</label>
                            <input type="text" name="district2" id="district2" placeholder="ເມືອງ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ແຂວງ</label>
                            <input type="text" name="province2" id="province2" placeholder="ແຂວງ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>



                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຊື່ພາສາອັງກິດ</label>
                            <input type="text" name="emp_name_en" id="emp_name_en" placeholder="ຊື່ພາສາອັງກິດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ນາມສະກຸນພາສາອັງກິດ</label>
                            <input type="text" name="surname_en" id="surname_en" placeholder="ນາມສະກຸນພາສາອັງກິດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສັນຊາດ</label>
                            <input type="text" name="national_en" id="national_en" placeholder="ສັນຊາດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ສາດສະໜາ</label>
                            <input type="text" name="religion_en" id="religion_en" placeholder="ສາດສະໜາ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ອາຊີບ</label>
                            <input type="text" name="occupation_en" id="occupation_en" placeholder="ອາຊີບ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ບ້ານພາສາອັງກິດ</label>
                            <input type="text" name="village_en" id="village_en" placeholder="ບ້ານພາສາອັງກິດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ເມືອງພາສາອັງກິດ</label>
                            <input type="text" name="district_en" id="district_en" placeholder="ເມືອງພາສາອັງກິດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ແຂວງພາສາອັງກິດ</label>
                            <input type="text" name="province_en" id="province_en" placeholder="ແຂວງພາສາອັງກິດ">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
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

<form action="Employee" method="POST" id="formSaveEmp">
    <div class="modal fade" id="exampleModalInsertEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
                            <select name="company" id="company">
                                <option value="">ເລືອກບໍລິສັດ</option>
                                <?php 
                                    $obj->dropdown_company();
                                    foreach($result_dropdown as $com_insert){
                                ?>
                                <option value="<?php echo $com_insert["com_id"] ?>"><?php echo $com_insert["company"] ?>
                                </option>
                                <?php
                                    }
                                    mysqli_free_result($result_dropdown);  
                                    mysqli_next_result($conn);
                                ?>
                            </select>
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
                            <input type="text" name="family_stt" id="family_stt" placeholder="ສະຖານະຄອບຄົວ">
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
                            <input type="text" name="ethnnic" id="ethnnic" placeholder="ຊົນເຜົ່າ">
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
                            <input type="text" name="house_no" id="house_no" placeholder="ເຮືອກເລກທີ">
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
                    <button type="submit" name="btn_loadSave" id="btn_loadSave" class="btn btn-outline-primary"
                        onclick="">
                        ເພີ່ມພະນັກງານ
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
</div>
<div id="result_data" class="result_data">
    <?php
       // include ($path."header-footer/loading.php");
    ?>
</div>
<?php
    if(isset($_POST['emp_name'])){
        $obj->insert_employee($barcode,$_POST["emp_id"],$_POST["emp_name"],$_POST["surname"],$_POST["dob"],$_POST["age"],$_POST["gender"],$_POST["company"],$_POST["branch"],$_POST["department"],$_POST["tel"],$_POST["family_stt"],$_POST["nation"],$_POST["ethnnic"],$_POST["religion"],$_POST["job"],$_POST["house_no"],$_POST["village"],$_POST["district"],$_POST["province"]);
    }
    if(isset($_POST['barcode2'])){
        $obj->update_employee($_POST["barcode2"],$_POST["emp_id2"],$_POST["emp_name2"],$_POST["surname2"],$_POST["dob2"],$_POST["age2"],$_POST["gender2"],$_POST["company2"],$_POST["branch2"],$_POST["department2"],$_POST["tel2"],$_POST["family_stt2"],$_POST["nation2"],$_POST["ethnic2"],$_POST["religion2"],$_POST["job2"],$_POST["home_no2"],$_POST["village2"],$_POST["district2"],$_POST["province2"],$_POST["emp_name_en"],$_POST["surname_en"],$_POST["village_en"],$_POST["district_en"],$_POST["province_en"],$_POST["national_en"],$_POST["religion_en"],$_POST["occupation_en"]);
    }
    if(isset($_POST["emp_id_del"])){
        $obj->delete_emp($_POST["emp_id_del"]);
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
    include ("../../header-footer/footer.php");
?>
<script>
const myform_formSaveEmp = document.getElementById("formSaveEmp");
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
const family_stt = document.getElementById("family_stt");
const nation = document.getElementById("nation");
const ethnnic = document.getElementById("ethnnic");
const religion = document.getElementById("religion");
const job = document.getElementById("job");
const house_no = document.getElementById("house_no");
const village = document.getElementById("village");
const district = document.getElementById("district");
const province = document.getElementById("province");
const load_save_emp = document.getElementById("load_save_emp");
const btn_loadSave = document.getElementById("btn_loadSave");
myform_formSaveEmp.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_formSaveEmp();
});

function checkInputs_formSaveEmp() {
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
    const family_sttValue = family_stt.value.trim();
    const nationValue = nation.value.trim();
    const ethnnicValue = ethnnic.value.trim();
    const religionValue = religion.value.trim();
    const jobValue = job.value.trim();
    const house_noValue = house_no.value.trim();
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
        setloading(load_save_emp, btn_loadSave);
        document.getElementById("formSaveEmp").action = "Employee";
        document.getElementById("formSaveEmp").submit();
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
    load_data_emp("%%", "0");

    function load_data_emp(query, page) {
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
    $('#search').click(function() {
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