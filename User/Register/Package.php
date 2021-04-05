<?php
  $title = "ຂໍ້ມູນແຟັກແກັດ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<div class="modal fade" id="exampleModalUpdatecompany" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">ແກ້ໄຂຂໍ້ມູນແຟັກແກັດ</h5>
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

<div class="col-xs-12 col-sm-7 input-group mb-3">
  <input type="text" aria-label="First name" class="form-control" placeholder="ID">
  <!-- <input type="text" aria-label="Last name" class="form-control" placeholder="Description"> -->
  <button class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                type="button" id="button-addon2">
                <i class="fas fa-search"></i>
            </button>
            <!-- <button class="btn btn-outline-success" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                type="button" id="button-addon2">
                
            </button> -->
            <button class="btn btn-outline-primary" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                type="button" id="button-addon2">
                ນຳເຂົ້າຂໍ້ມູນ
            </button>
</div>
        <!-- <input type="text" class="form-control" style="width: 480px;" placeholder="ຄົ້ນຫາ"><br> -->
        <div class=" col-xs-12 col-sm-7  table-responsive">
            <table class="table-bordered" style="width: 1000px;text-align: center;">
                <tr style="font-size: 18px;">
                    <th>ເຄື່ອງມື</th>
                    <th>ID</th>
                    <th>Description</th>

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
                    <td>Biochemistry</td>
                </tr>
            </table>
        </div>
        <!-- <div align="right" style="color: red;   padding-right: 700px;">
                    <h3>Total: 1ລາຍການ</h3>
                </div> -->
        <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">ກັບຄືນ</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">ໜ້າຖັດໄປ</a></li>
        </ul>
    </div>
</div>
</div>
</div>
<?php
    include ("../../header-footer/footer.php");
?>