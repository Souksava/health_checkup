<?php
  $path="../../";
  $rank=0;
  include (''.$path.'oop/obj.php');
  $output = '';
  if(isset($_POST['page'])){
     $page = $_POST['page'];
     if($page == '' || $page == 0 || $page == 1){
        $page = 0;
        }
        else{
           $page = ($page*100)-100;
           $rank = (($page*100)-100) / 100 + 1;
        }
  }
  else{
    $page = 0;
 }
 if(isset($_POST["query"]) || isset($_POST["querys"]) || isset($_POST["year"]))
{
   $highlight = $_POST["query"];
   $highlight2 = $_POST["querys"];
   $highlight3 = $_POST["year"];
   $obj->select_ekg_limit("%".trim($_POST['query'])."%","%".trim($_POST['querys'])."%", "%".trim($_POST['year'])."%",$page);
}
else
{
   $obj->select_ekg_limit("%%", "%%", "%%", $page);
}
if(mysqli_num_rows($result_ekg_limit) > 0)
{
 $output .= '
 <div class="table-responsive">
        <table class="table-bordered" style="width: 2900px;text-align: center;">
            <tr style="font-size: 18px;">
               <th style="width: 150px;"><input type="checkbox" id="check_all" value=""></th>
                <th style="width: 80px;">N0.</th>
                <th style="width: 150px;">ບຣາໂຄດ</th>
                <th style="width: 200px;">ລະຫັດພະນັກງານ</th>
                <th style="width: 450px;">ຊື່</th>
                <th style="width: 350px;">ນາມສະກຸນ</th>
                <th style="width: 450px;">ບໍລິສັດ</th>
                <th style="width: 150px;">ປີເຂົ້າກວດ</th>
                <th style="width: 250px;">EKG</th>
                <th style="width: 387px;">ສະຫຼຸບ</th>
                <th style="width: 350px;">ຄຳແນະນຳ</th>
                <th style="width: 387px;">ສະຫຼຸບພາສາອັງອິດ</th>
                <th style="width: 350px;">ຄຳແນະນຳພາສາອັງອິດ</th>
                <th style="width: 350px;">ຜູ້ນຳເຂົ້າຂໍ້ມູນ</th>
            </tr>
 ';
 $no_ = $rank;
 while($row = mysqli_fetch_array($result_ekg_limit))
 {
$no_ += 1;
  $output .= '
    <tr>
    <td><input type="checkbox" id="" name="id_delete[]" value="'.$row["ekg_id"].'"></td>
    <td>'.$no_.'</td>
    <td>'.$row["barcode"].'</td>
    <td>'.$row["emp_id"].'</td>
    <td>'.$row["emp_name"].'</td>
    <td>'.$row["surname"].'</td>
    <td>'.$row["company"].'</td>
    <td>'.$row["year"].'</td>
    <td>'.$row["ekg_name"].'</td>
    <td>'.nl2br($row["conclusion"]).'</td>
    <td>'.nl2br($row["remark"]).'</td>
    <td>'.$row["ekg_en"].'</td>
    <td>'.nl2br($row["conclusion_en"]).'</td>
    <td>'.$row["user_name"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_ekg_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]) || isset($_POST["querys"]) || isset($_POST["year"]))
{
   $obj->select_ekg("%".trim($_POST['query'])."%","%".trim($_POST['querys'])."%", "%".trim($_POST['year'])."%");
}
else
{
   $obj->select_ekg("%%", "%%", "%%");
}
 $count = mysqli_num_rows($result_ekg);
 mysqli_free_result($result_ekg);  
 mysqli_next_result($conn);
 $a = ceil($count/100);
 if(isset($_POST['page'])){
    if($_POST['page'] > 1){
       $previous = $_POST['page'] - 1;
       echo '     
       <nav aria-label="..." class="table-responsive4">
          <ul class="pagination">
             <li class="page-item">
                <a href="#" class="btn btn-danger page-links-register" id="'.$previous.'" style="color: white!important;width: 70px;" value="'.$previous.'">ກັບຄືນ</a>
             </li>
     ';
    }
    else{
       echo' <nav aria-label="..." class="table-responsive4">
                <ul class="pagination">';
    }
 }
 else{
    echo' <nav aria-label="..." class="table-responsive4">
             <ul class="pagination">';
 }
 $i = 0;
 $page_next = 0;
 $page_next2 = 1;
 if(isset($_POST['page'])){
    $page_next = $_POST['page'];
    $page_next2 = $_POST['page'];
    if($_POST["page"] == 0 || $_POST["page"] == ''){
       $page_next2 = 1;
    }
 }
 for($b=1;$b<=$a;$b++){
    $i = $b;
    if($page_next2 == $b){
       echo '
       <li class="page-item active" aria-current="page">
          <span class="page-link">
          '.$b.'
          <span class="sr-only">(current)</span>
          </span>
       </li>
       ';
    }
    else{
       echo '
       <li class="page-item">
          <a href="#" id="'.$b.'" class="btn btn-danger page-link page-links-register" value="'.$b.'">'.$b.'</a>
       </li>
       ';
    }
 }
   if($page_next == 0){
      $page_next = 1;
   }
    if($page_next < $i){
       if($page_next == 0){
          $page_next += 1;
       }
       $next = $page_next + 1;
       echo '      

                   <li class="page-item">
                      <a href="#" class="btn btn-success page-links-register" id="'.$next.'" value="'.$next.'" style="color: white!important;width: 90px;" href="#">ໜ້າຖັດໄປ</a>
                   </li>
                </ul>
             </nav>
';

    }
    else{
       echo'';
    }
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
<script type="text/javascript">
var highlight = "<?php echo $_POST['query']; ?>";
var highlight2 = "<?php echo $_POST['querys']; ?>";
var highlight3 = "<?php echo $_POST['year']; ?>";
$('.result').highlight([highlight]);
$('.result').highlight([highlight2]);
$('.result').highlight([highlight3]);
$("#check_all").click(function () {
     $('input:checkbox').not(this).prop('checked', this.checked);
 });
</script>