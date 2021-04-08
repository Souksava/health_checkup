<?php
  $path="../../";
  include (''.$path.'oop/obj.php');
  $output2 = '';
 if(isset($_POST["query"]))
{
    $id = $_POST["query"];
    $get_com_ID = mysqli_query($conn,"select com_id from employee where barcode='$id'");
    $com_id = mysqli_fetch_array($get_com_ID,MYSQLI_ASSOC);
    $obj->select_company_package($com_id["com_id"]);
}
else
{
   $obj->select_company_package("");
}
$output2 .='
<div class="card">
    <div class="card-header">
        <div align="center">ລາຍການກວດສຸຂະພາບ</div>
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
            &nbsp; &nbsp;<input class="form-check-input" type="checkbox" name="pack_id[]" value="'.$row2["pack_id"].'"
                id="flexCheckDefault'.$no_2.'" checked>
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
