<?php
  $path="../../";
  include (''.$path.'oop/obj.php');
  $output = '';
 if(isset($_POST["query"]))
{
   $obj->select_registerdetail($_POST['query']);
   $_POST['query'];
}
else
{
   $obj->select_registerdetail("");
}
if(mysqli_num_rows($result_registerdetail) > 0)
{
$no_ = 0;
foreach($result_registerdetail as $row){
$no_ += 1;
  $output .= '
  <ul class="list-group">
    <li class="list-group-item">
        <div class="form-check">
        <input class="form-check-input" type="checkbox" name="sticker[]" value="'.$row["pack_id"].'" id="flexCheckDefault" checked>
        <label class="form-check-label" for="flexCheckDefault">
            '.$row["pack_id"].'
        </label>
        </div>
    </li>
    </ul>
  ';
 }
 $output .='
 <br>
  <div align="right" style="color: red;">
      <h6>ລວມ: '.$no_.' ລາຍການ</h6>
  </div>
 ';
 echo $output;
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
