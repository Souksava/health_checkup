<?php
    $rank=0;
  $path="../../";
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
 if(isset($_POST["query"]) || isset($_POST['query2']))
{
   $highlight = $_POST['query'];
   $highlight2 = $_POST['query2'];
   $obj->select_checkup_status_limit("%".$_POST['query']."%","%".$_POST['query2']."%",$page);
}
else
{
   $obj->select_checkup_status_limit("%%", "%%",$page);
}
$output .= '
<style>
   .btnAddEmp:hover{
      cursor: pointer;
   }
</style>
';
if(mysqli_num_rows($result_checkup_status_limit) > 0)
{
 $output .= '
  <div class="table-responsive">
  <table class="table-bordered" style="width: 3000px;text-align: center;">
    <tr style="font-size: 18px;">
        <th style="width: 40px;">N0.</th>
        <th style="width: 120px;">ບຣາໂຄດ</th>
        <th style="width: 150px;">ຊື່</th>
        <th style="width: 100px;">ນາມສະກຸນ</th>
        <th style="width: 150px;">ບໍລິສັດ</th>
        <th style="width: 70px;">ປີເຂົ້າກວດ</th>
        <th style="width: 50px;">physic</th>
        <th style="width: 50px;">cbc</th>
        <th style="width: 50px;">bio</th>
        <th style="width: 50px;">runie</th>
        <th style="width: 50px;">meth</th>
        <th style="width: 50px;">thry</th>
        <th style="width: 50px;">stool</th>
        <th style="width: 50px;">metal</th>
        <th style="width: 50px;">tumor</th>
        <th style="width: 50px;">vision</th>
        <th style="width: 50px;">audio</th>
        <th style="width: 50px;">spiro</th>
        <th style="width: 50px;">cxr</th>
        <th style="width: 50px;">int</th>
    </tr>
 ';
 $no_ =  $rank;
 while($row = mysqli_fetch_array($result_checkup_status_limit))
 {
$no_ += 1;
  $output .= '
    <tr>
        <td>'.$no_.'</td>
        <td>'.$row["barcode"].'</td>
        <td>'.$row["emp_name"].'</td>
        <td>'.$row["surname"].'</td>
        <td>'.$row["company"].'</td>
        <td>'.$row["year"].'</td>
        ';
        if($row["physic"] == 1){
           $row["physic"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
        }
        else{
           $row["physic"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
        }
        if($row["cbc"] == 1){
         $row["cbc"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["cbc"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["bio"] == 1){
            $row["bio"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["bio"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["urine"] == 1){
            $row["urine"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["urine"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["meth"] == 1){
            $row["meth"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["meth"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["thry"] == 1){
            $row["thry"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["thry"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["stool"] == 1){
            $row["stool"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["stool"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["metal"] == 1){
            $row["metal"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["metal"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["tumor"] == 1){
            $row["tumor"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["tumor"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["vision"] == 1){
            $row["vision"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["vision"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["audio"] == 1){
            $row["audio"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["audio"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["spiro"] == 1){
            $row["spiro"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["spiro"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["cxr"] == 1){
            $row["cxr"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["cxr"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["intt"] == 1){
            $row["intt"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["intt"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
        $output .='
        <td>'.$row["physic"].'</td>
        <td>'.$row["cbc"].'</td>
        <td>'.$row["bio"].'</td>
        <td>'.$row["urine"].'</td>
        <td>'.$row["meth"].'</td>
        <td>'.$row["thry"].'</td>
        <td>'.$row["stool"].'</td>
        <td>'.$row["metal"].'</td>
        <td>'.$row["tumor"].'</td>
        <td>'.$row["vision"].'</td>
        <td>'.$row["audio"].'</td>
        <td>'.$row["spiro"].'</td>
        <td>'.$row["cxr"].'</td>
        <td>'.$row["intt"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_checkup_status_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]) || isset($_POST['query2']))
 {
    $obj->select_checkup_status("%".$_POST['query']."%","%".$_POST['query2']."%");
 }
 else
 {
    $obj->select_checkup_status("%%","%%");
 }

 $count = mysqli_num_rows($result_checkup_status);
 mysqli_free_result($result_checkup_status);  
 mysqli_next_result($conn);
 $a = ceil($count/100);
 if(isset($_POST['page'])){
    if($_POST['page'] > 1){
       $previous = $_POST['page'] - 1;
       echo '     
       <nav aria-label="..." class="table-responsive4">
          <ul class="pagination">
             <li class="page-item">
                <a href="#" class="btn btn-danger page-links_emp" id="'.$previous.'" style="color: white!important;width: 70px;" value="'.$previous.'">ກັບຄືນ</a>
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
    if($_POST['page'] == 0 || $_POST['page'] == ''){
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
          <a href="#" id="'.$b.'" class="btn btn-danger page-link page-links_emp" value="'.$b.'">'.$b.'</a>
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
                      <a href="#" class="btn btn-success page-links_emp" id="'.$next.'" value="'.$next.'" style="color: white!important;width: 90px;" href="#">ໜ້າຖັດໄປ</a>
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
<script>
var highlight = "<?php echo $_POST['query']; ?>";
var highlight2 = "<?php echo $_POST['query2']; ?>";
$('.result_data_status').highlight([highlight]);
$('.result_data_status').highlight([highlight2]);
</script>