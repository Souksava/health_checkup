<!-- CBC ການກວດເລືອດລວມ(CBC)-->
<?php
  $title = "ການກວດເລືອດລວມ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<form action="Employee" method="POST" id="import_emp" enctype="multipart/form-data">
    <div class="modal fade" id="exampleModalimpEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ນຳເຂົ້າຂໍ້ມູນກວດຮ່າງກາຍທົ່ວໄປ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row" align="left">
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label for="">ເລືອກປີ</label>
                            <input type="text" name="year" id="datepicker2" class="form-control datepicker"
                                maxlength="4" placeholder="ປີ 20xx" aria-describedby="button-addon2">
                            <i class="fas fa-check-circle "></i>
                            <i class="fas fa-exclamation-circle "></i>
                            <small class="">Error message</small>
                        </div>
                        <div class="col-md-12 col-sm-6 form-control2">
                            <label>ຟາຍນຳເຂົ້າ</label>
                            <input type="file" name="emp_file" id="emp_file">
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
<form action="exportemployee" method="POST" id="form_export_employee" target="_blank">
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
                <input type="text" name="year" id="datepicker" class="form-control datepicker" maxlength="4"
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

            <button class="btn btn-success" name="export_employee" id="export_employee"><i
                    class="fas fa-file-export"></i>
                Export
            </button>
        </div>
    </div>
</form>
<div class="row">
    <div class="table-responsive">
        <table class="table-bordered" style="width: 8000px;text-align: center;">
            <tr style="font-size: 18px;">
                <th style="width: 87px;">ເຄື່ອງມື</th>
                <th style="width: 50px;">N0.</th>
                <th style="width: 50px;">Barcode</th>
                <th style="width: 50px;">ຊື່</th>
                <th style="width: 50px;">ນາມສະກຸນ</th>
                <th style="width: 50px;">ບໍລິສັດ</th>
                <th style="width: 50px;">ປີເຂົ້າກວດ</th>
                <th style="width: 87px;">Hemoglobin(Hb)</th>
                <th style="width: 50px;">Hematocrit(Hct)</th>
                <th style="width: 87px;">White Blood Cell(WBC)</th>
                <th style="width: 50px;">Neutrophil(Ne)</th>
                <th style="width: 87px;">Lymphocyte(Lym)</th>
                <th style="width: 50px;">Monocyte</th>
                <th style="width: 87px;">Eosinophil(EO)</th>
                <th style="width: 50px;">Basophil(Baso)</th>
                <th style="width: 87px;">Platelets Count</th>
                <th style="width: 50px;">Red blood cell(RBC)</th>
                <th style="width: 87px;">MCV</th>
                <th style="width: 50px;">MCH</th>
                <th style="width: 87px;">MCHC</th>
                <th style="width: 50px;">Red blood cell morphology</th>
                <th style="width: 87px;">Conclusion</th>
                <th style="width: 50px;">Remark</th>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</div>
<!-- <div id="result_data_status" class="result_data_status"> -->
<?php
      //  include ($path."header-footer/loading.php");
    ?>
</div>
<?php
    include ("../../header-footer/footer.php");
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