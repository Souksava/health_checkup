<?php
  $title = "ລົງທະບຽນ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<!-- Modal -->
<!-- Company -->
<div class="modal fade" id="exampleModalUpdatecompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
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
                        <input type="text" name="company" id="company" placeholder="ຊື່ບໍລີສັດ" class="form-control">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-success" onclick="">
                    ແກ້ໄຂ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModalDelcompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
                <p align="center">ທ່ານຕ້ອງການລົບຂໍ້ມູນ ຫຼື ບໍ່ ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-danger" onclick="">
                    ລົບ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModalAddcompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ເພີ່ມແພັກເກັດ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p align="center">ທ່ານຕ້ອງການເພີ່ມແພັກເກັດໃຫ້ບໍລິສັດນີ້ ຫຼື ບໍ່ ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-primary" onclick="">
                    ຕ້ອງການ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModalimpCompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ນຳເຂົ້າຂໍ້ມູນບໍລິສັດ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row" align="left">
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ຟາຍນຳເຂົ້າ</label>
                        <input type="file" name="company_file" id="company_file" class="form-control">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-primary" onclick="">
                    ນຳເຂົ້າຂໍ້ມູນ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

<!-- End Company -->

<!-- employee -->
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
                        <label>ຟາຍນຳເຂົ້າ</label>
                        <input type="file" name="company_file" id="company_file" class="form-control">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="emp_Update" id="emp_Update" class="btn btn-outline-primary" onclick="">
                    ນຳເຂົ້າຂໍ້ມູນ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModalAddEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
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
                <p align="center">ທ່ານຕ້ອງການລົງທະບຽນພະນັກງານຄົນນີ້ ຫຼື ບໍ່ ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-primary" onclick="">
                    ລົງທະບຽນ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

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
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-danger" onclick="">
                    ລົບ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

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
                        <input type="text" name="company" id="company" placeholder="ລະຫັດພະນັກງານ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ຊື່ພະນັກງານ</label>
                        <input type="text" name="company" id="company" placeholder="ຊື່ພະນັກງານ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ນາມສະກຸນ</label>
                        <input type="text" name="company" id="company" placeholder="ນາມສະກຸນ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ວັນເດືອນປີເກີດ</label>
                        <input type="date" name="company" id="company">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ອາຍຸ</label>
                        <input type="text" name="company" id="company" placeholder="ອາຍຸ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ເພດ</label>
                        <select name="" id="">
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
                        <select name="" id="">
                            <option value="">ເລືອກບໍລິສັດ</option>
                            <option value="ຍິງ">ທິບໂກ້</option>
                            <option value="ຊາຍ">ມັງກອນ</option>
                        </select>
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ສາຂາ</label>
                        <input type="text" name="company" id="company" placeholder="ສາຂາ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ພະແນກ</label>
                        <input type="text" name="company" id="company" placeholder="ພະແນກ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ເບີໂທລະສັບ</label>
                        <input type="text" name="company" id="company" placeholder="ເບີໂທລະສັບ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ສະຖານະຄອບຄົວ</label>
                        <input type="text" name="company" id="company" placeholder="ສະຖານະຄອບຄົວ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ສັນຊາດ</label>
                        <input type="text" name="company" id="company" placeholder="ສັນຊາດ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ຊົນເຜົ່າ</label>
                        <input type="text" name="company" id="company" placeholder="ຊົນເຜົ່າ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ສາສະໜາ</label>
                        <input type="text" name="company" id="company" placeholder="ສາສະໜາ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ອາຊີບ</label>
                        <input type="text" name="company" id="company" placeholder="ອາຊີບ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ເຮືອກເລກທີ</label>
                        <input type="text" name="company" id="company" placeholder="ເຮືອກເລກທີ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ບ້ານຢູ່ປັດຈຸບັນ</label>
                        <input type="text" name="company" id="company" placeholder="ບ້ານຢູ່ປັດຈຸບັນ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ເມືອງ</label>
                        <input type="text" name="company" id="company" placeholder="ເມືອງ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ແຂວງ</label>
                        <input type="text" name="company" id="company" placeholder="ແຂວງ">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-success" onclick="">
                    ແກ້ໄຂ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>
<!-- End Employee -->

<!-- Package -->
<div class="modal fade" id="exampleModalDeletePackage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
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
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-danger" onclick="">
                    ລົບ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModalUpdatePackage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ແກ້ໄຂຂໍ້ມູນແພັກເກັດການກວດ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="row" align="left">
                    <div class="col-md-12 col-sm-6 form-control2">
                        <label>ຊື່ແພັກເກັດການກວດ</label>
                        <input type="text" name="company" id="company" placeholder="ຊື່ແພັກເກັດການກວດ"
                            class="form-control">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-success" onclick="">
                    ແກ້ໄຂ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModalAddPackage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ເພີ່ມລາຍການກວດ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p align="center">ທ່ານຕ້ອງການເພີ່ມແພັກເກັດເຂົ້າໃນລາຍການກວດ ຫຼື ບໍ່ ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-primary" onclick="">
                    ເພີ່ມ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>
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
                        <input type="file" name="company_file" id="company_file" class="form-control">
                        <i class="fas fa-check-circle "></i>
                        <i class="fas fa-exclamation-circle "></i>
                        <small class="">Error message</small>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="emp_Update" id="emp_Update" class="btn btn-outline-primary" onclick="">
                    ນຳເຂົ້າຂໍ້ມູນ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>
<!-- End Package -->

<!-- Company Package -->
<div class="modal fade" id="exampleModalDeletePackageCom" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ລົບຂໍ້ມູນແພັກເກັດການກວດ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p align="center">ທ່ານຕ້ອງການລົບແພັກເກັດລົງທະບຽນ ຫຼື ບໍ່ ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-danger" onclick="">
                    ລົບ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>
<!-- End Company Package -->
<!-- List -->
<div class="modal fade" id="exampleModalDeleteList" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ລົບລາຍການແພັກເກັດ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p align="center">ທ່ານຕ້ອງການລົບລາຍການແພັກເກັດ ຫຼື ບໍ່ ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-danger" onclick="">
                    ລົບ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>
<!-- End List -->
<!-- Update Register -->
<div class="modal fade" id="exampleModalDeleteRegiter" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ລົບການລົງທະບຽນ</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p align="center">ທ່ານຕ້ອງການລົບລາຍການລົບລົງທະບຽນ ຫຼື ບໍ່ ?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                <button type="submit" name="Com_Update" id="Com_Update" class="btn btn-outline-danger" onclick="">
                    ລົບ
                    <span class="" id="load_save"></span>
                </button>
            </div>
        </div>
    </div>
</div>
<!-- End Update Register -->
<!-- End Modal -->
<div class="row">
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        ຂໍ້ມູນບໍລິສັດ
                    </div>
                    <div class="col-xs-12 col-sm-6" align="right">
                        <a href="#" data-toggle="modal" data-target="#exampleModalimpCompany">ນຳເຂົ້າຂໍ້ມູນ</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <input type="text" class="form-control" placeholder="ຄົ້ນຫາ"><br>
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 780px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>ເຄື່ອງມື</th>
                            <th>ID</th>
                            <th>ຊື່ພາສາລາວ</th>
                            <th>ຊື່ພາສາອັງກິດ</th>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#exampleModalAddcompany"
                                    class="fas fa-plus-circle toolcolor btnAddPackage"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalUpdatecompany"
                                    class="fa fa-pen toolcolor btnUpdateCompany"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalDelcompany"
                                    class="fa fa-trash toolcolor btnDelete_com"></a>
                            </td>
                            <td>001</td>
                            <td>ບໍລິສັດ ທິບໂກ້ ອັດຟັນສ ລາວ ຈຳກັດ</td>
                            <td>Tip ko Comopnay Co.,Ltd</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        ຂໍ້ມູນຜູ້ເຂົ້າກວດ
                    </div>
                    <div class="col-xs-12 col-sm-6" align="right">
                        <a href="#" data-toggle="modal" data-target="#exampleModalimpEmp">ນຳເຂົ້າຂໍ້ມູນ</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <input type="text" class="form-control" placeholder="ຄົ້ນຫາ"><br>
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 3000px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>ເຄື່ອງມື</th>
                            <th>N0.</th>
                            <th>ບຣາໂຄດ</th>
                            <th>ລະຫັດພະນັກງານ</th>
                            <th>ຊື່</th>
                            <th>ນາມສະກຸນ</th>
                            <th>ວັນເດືອນປີເກີດ</th>
                            <th>ອາຍຸ</th>
                            <th>ເພດ</th>
                            <th>ບໍລິສັດ</th>
                            <th>ສາຂາ</th>
                            <th>ພະແນກ</th>
                            <th>ເບີໂທລະສັບ</th>
                            <th>ສະຖານະຄອບຄົວ</th>
                            <th>ສັນຊາດ</th>
                            <th>ຊົນເຜົ່າ</th>
                            <th>ສາສະໜາ</th>
                            <th>ອາຊີບ</th>
                            <th>ເຮືອກເລກທີ</th>
                            <th>ບ້ານຢູ່ປັດຈຸບັນ</th>
                            <th>ເມືອງ</th>
                            <th>ແຂວງ</th>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#exampleModalAddEmp"
                                    class="fas fa-plus-circle toolcolor btnAddEmp"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                                    class="fa fa-pen toolcolor btnUpdateEmp"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalDeleteEmp"
                                    class="fa fa-trash toolcolor btnDelEmp"></a>
                            </td>
                            <td>1</td>
                            <td>001</td>
                            <td></td>
                            <td>ທ່ານ ທົງໄຊ</td>
                            <td>ພູນຊັບທະວີກິດ</td>
                            <td></td>
                            <td></td>
                            <td>ຊາຍ</td>
                            <td>100092323099</td>
                            <td>001</td>
                            <td></td>
                            <td>ທ່ານ ທົງໄຊ</td>
                            <td>ພູນຊັບທະວີກິດ</td>
                            <td></td>
                            <td></td>
                            <td>ຊາຍ</td>
                            <td>ພູນຊັບທະວີກິດ</td>
                            <td></td>
                            <td></td>
                            <td>ຊາຍ</td>
                            <td>ຊາຍ</td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-xs-12 col-sm-6">
                        ຂໍ້ມູນແພັກເກັດການກວດສຸຂະພາບ
                    </div>
                    <div class="col-xs-12 col-sm-6" align="right">
                        <a href="#" data-toggle="modal" data-target="#exampleModalimpPackage">ນຳເຂົ້າຂໍ້ມູນ</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <input type="text" class="form-control" placeholder="ຄົ້ນຫາ"><br>
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 500px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>ເຄື່ອງມື</th>
                            <th>ID</th>
                            <th>Description</th>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#exampleModalAddPackage"
                                    class="fas fa-plus-circle toolcolor btnAddPackage"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalUpdatePackage"
                                    class="fa fa-pen toolcolor btnUpdatePackage"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalDeletePackage"
                                    class="fa fa-trash toolcolor btnDeletePackage"></a>
                            </td>
                            <td>CLOT</td>
                            <td>Biochemistry</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="card">
            <div class="card-header">
                ລາຍການແພັກເກັດການກວດສຸຂະພາບ
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 470px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>No.</th>
                            <th>Package</th>
                            <th>Description</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Urine</td>
                            <td>Urinalvsis</td>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#exampleModalDeleteList"
                                    class="fa fa-trash toolcolor btnDelete_List"></a>
                            </td>
                        </tr>
                    </table>
                </div><br>
                <div align="right" style="color: red;">
                    <h3>Total: 3 ລາຍການ</h3>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="card">
            <div class="card-header">
                ແພັກເກັດການກວດສຸຂະພາບບໍລິສັດ
            </div>
            <div class="card-body">
                <input type="text" class="form-control" placeholder="ຄົ້ນຫາ"><br>
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 750px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>ເຄື່ອງມື</th>
                            <th>No.</th>
                            <th>ເລກທີທະບຽນແພັກເກັດ</th>
                            <th>ບໍລິສັດ</th>
                            <th>ປີລົງທະບຽນ</th>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#exampleModalUpdate"
                                    class="fa fa-info toolcolor btnUpdate_cust"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalDeletePackageCom"
                                    class="fa fa-trash toolcolor btnDelete_cust"></a>
                            </td>
                            <td>1</td>
                            <td>001</td>
                            <td>Mangkone</td>
                            <td>2021</td>
                        </tr>
                    </table>
                </div><br>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="card">
            <div class="card-header">
                ລາຍລະອຽດການລົງທະບຽນແພັກເກັດ
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 470px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>No.</th>
                            <th>Company</th>
                            <th>Package</th>
                            <th>Package Name</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mangkone</td>
                            <td>Urine</td>
                            <td>Urinalvsis</td>
                        </tr>
                    </table>
                </div><br>
                <div align="right" style="color: red;">
                    <h3>Total: 3 ລາຍການ</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 col-sm-6">
        <div class="card">
            <div class="card-header">
                ປັບປຸງແພັກເກັດການກວດສຸຂະພາບ
            </div>
            <div class="card-body">
                <input type="text" class="form-control" placeholder="ຄົ້ນຫາ"><br>
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 750px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>ເຄື່ອງມື</th>
                            <th>No.</th>
                            <th>ID</th>
                            <th>Company</th>
                            <th>Year</th>
                            <th>Queue</th>
                        </tr>
                        <tr>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#exampleModalUpdate"
                                    class="fas fa-print toolcolor btnUpdate_cust"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalUpdate"
                                    class="fas fa-plus-circle toolcolor btnUpdate_cust"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalUpdate"
                                    class="fa fa-info toolcolor btnUpdate_cust"></a>&nbsp; &nbsp;
                                <a href="#" data-toggle="modal" data-target="#exampleModalDeleteRegiter"
                                    class="fa fa-trash toolcolor btnDelete_register"></a>
                            </td>
                            <td>1</td>
                            <td>100093423099</td>
                            <td>Mangkone</td>
                            <td>2021</td>
                            <td>1</td>
                        </tr>
                    </table>
                </div><br>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6">
        <div class="card">
            <div class="card-header">
                ລາຍລະອຽດການລົງທະບຽນ
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table-bordered" style="width: 750px;text-align: center;">
                        <tr style="font-size: 18px;">
                            <th>No.</th>
                            <th>Company</th>
                            <th>Package</th>
                            <th>Package Name</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Mangkone</td>
                            <td>Urine</td>
                            <td>Urinalvsis</td>
                        </tr>
                    </table>
                </div><br>
                <div align="right" style="color: red;">
                    <h3>Total: 3 ລາຍການ</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
    include ("../../header-footer/footer.php");
?>