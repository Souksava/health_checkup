<?php
  $path="../../";
  include (''.$path.'oop/obj.php');
  $output2 = '';
 if(isset($_POST["query"]))
{
   $obj->select_company_package($_POST['query']);
}
else
{
   $obj->select_company_package("");
}
$output2 .='
<div class="card">
    <div class="card-header">
        <div align="center">ແພັກເກັດກວດສູຂະພາບບໍລິສັດ</div>
    </div>
    <div class="card-body">
 ';
$no_2 = 0;
if(mysqli_num_rows($company_package) > 0)
{
foreach($company_package as $row2){
$no_2 += 1;
  $output2 .= '
  <ul class="list-group">
      <li class="list-group-item">
          <label class="form-check-label" for="flexCheckDefault">
              '.$row2["pack_id"].'
          </label>
      </li>
  </ul>
  ';
 }
 $output2 .='
 <br>
  <div align="right" style="color: red;">
      <h6>ລວມ: '.$no_2.' ລາຍການ</h6>
  </div>
    <button type="submit" name="btn_load_clear" id="btn_load_clear" class="btn btn-danger" style="width: 100%"
        onclick="">
        ລ້າງລາຍການ
        <span class="" id="load_clear"></span>
    </button>
    </div>
</div>
 ';
 echo $output2;
}
else
{
 echo '<br>
<hr size="1" width="90%">
    <p align="center">ບໍ່ມີຂໍ້ມູນ</p>
<hr size="1" width="90%">
 ';
}
?>
