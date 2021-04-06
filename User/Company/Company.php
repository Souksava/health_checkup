<?php
  $title = "ຂໍ້ມູນບໍລິສັດ";
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



<div class="row">
    <div class="col-xs-12 col-sm-6">
        <div class="input-group mb-3">
            <input type="text" aria-label="First name" class="form-control" placeholder="ຄົ້ນຫາ">
            <button class="btn btn-outline-secondary" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                type="button" id="button-addon2">
                <i class="fas fa-search"></i>
            </button>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6" align="right">
        <button class="btn btn-primary"><i class="fas fa-plus-circle"></i> ເພີ່ມຂໍ້ມູນ</button>
    </div>
</div>


<!-- <input type="text" class="form-control" style="width: 480px;" placeholder="ຄົ້ນຫາ"><br> -->
<div class="table-responsive">
    <table class="table-bordered" style="width: 100%;text-align: center;">
        <tr style="font-size: 18px;">
            <th>ເຄື່ອງມື</th>
            <th>ລຳດັບ</th>
            <th>ລະຫັດບໍລິສັດ</th>
            <th>ຊື່ພາສາລາວ</th>
            <th>ຊື່ພາສາອັງກິດ</th>

        </tr>
        <tr>
            <td>
                <a href="#" data-toggle="modal" data-target="#exampleModalUpdatecompany"
                    class="fa fa-pen toolcolor btnUpdateCompany"></a>&nbsp; &nbsp;
                <a href="#" data-toggle="modal" data-target="#exampleModalDelcompany"
                    class="fa fa-trash toolcolor btnDelete_com"></a>
            </td>
            <td>1</td>
            <td>001</td>
            <td>ບໍລິສັດ ທິບໂກ້ ອັດຟັນສ ລາວ ຈຳກັດ</td>
            <td>Tip ko Comopnay Co.,Ltd</td>
        </tr>
    </table>
</div>
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