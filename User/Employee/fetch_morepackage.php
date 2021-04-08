<?php
  $path="../../";
  include (''.$path.'oop/obj.php');
  $output = '';
 if(isset($_POST["query"]))
{
    $id2 = $_POST["query"];
    $get_com_ID2 = mysqli_query($conn,"select com_id from employee where barcode='$id2'");
    $com_id2 = mysqli_fetch_array($get_com_ID2,MYSQLI_ASSOC);
    $obj->select_company_list_package($com_id2["com_id"]);
}
else
{
   $obj->select_company_list_package("");
}
$output .='
    <div class="card">
    <div class="card-header">
        <div align="center">ເພີ່ມແພັກເກັດ</div>
    </div>
    <div class="card-body">
 ';
if(mysqli_num_rows($list_addpackage) > 0)
{
$no_ = 0;
foreach($list_addpackage as $row){

    $a = 0;
$no_ += 1;
  $output .= '
    <ul class="list-group">
        <li class="list-group-item">
            &nbsp; &nbsp;<input class="form-check-input" type="checkbox" name="packmore[]" value="'.$row["pack_id"].'"
                id="flexCheckDefault'.$no_.'">
            <label class="form-check-label" for="flexCheckDefault">
                '.$row["pack_id"].'
            </label>
        </li>
    </ul>
  ';
 }
 $output .='
 <br>
        <div align="right" style="color: red;">
            <h6>ລວມ: '.$no_.' ລາຍການ</h6>
        </div>
    </div>
</div>
 ';
 echo $output;
}
else
{
 echo '<br>
<hr size="1" width="90%">
    <p align="center">ແພັກເກັດນຳເຂົ້າໝົດແລ້ວ</p>
<hr size="1" width="90%">
 ';
}
?>