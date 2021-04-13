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
   $obj->select_thryroid_limit("%".trim($_POST['query'])."%","%".trim($_POST['querys'])."%", "%".trim($_POST['year'])."%",$page);
}
else
{
   $obj->select_thryroid_limit("%%", "%%", "%%", $page);
}
// $output .= '
// <style>
//    .double_barcode:hover{
//       cursor: pointer;
//    }
// </style>
// ';
if(mysqli_num_rows($result_thry_limit) > 0)
{
 $output .= '
 <div class="table-responsive">
    <table class="table-bordered" style="width: 2500px;text-align: center;">
        <tr style="font-size: 18px;">
            <th style="width: 87px;">No.</th>
            <th style="width: 50px;">Barcode</th>
            <th style="width: 50px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 50px;">ຊື່</th>
            <th style="width: 50px;">ນາມສະກຸນ</th>
            <th style="width: 50px;">ບໍລິສັດ</th>
            <th style="width: 50px;">ປີເຂົ້າກວດ</th>
            <th style="width: 87px;">FREE T3</th>
            <th style="width: 50px;">FREE T4</th>
            <th style="width: 87px;">TSH</th>
            <th style="width: 50px;">T3</th>
            <th style="width: 87px;">T4</th>
            <th style="width: 50px;">Conclusion</th>
            <th style="width: 87px;">Remark</th>
        </tr>
 ';
 $no_ = $rank;
 while($row = mysqli_fetch_array($result_thry_limit))
 {
$no_ += 1;
  $output .= '
    <tr>
        <td>'.$no_.'</td>
        <td>'.$row["barcode"].'</td>
        <td>'.$row["emp_id"].'</td>
        <td>'.$row["emp_name"].'</td>
        <td>'.$row["surname"].'</td>
        <td>'.$row["company"].'</td>
        <td>'.$row["year"].'</td>
        <td>'.$row["free_t3"].'</td>
        <td>'.$row["free_t4"].'</td>
        <td>'.$row["tsh"].'</td>
        <td>'.$row["t3"].'</td>
        <td>'.$row["t4"].'</td>
        <td>'.$row["conclusion"].'</td>
        <td>'.$row["remark"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_thry_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]) || isset($_POST["querys"]) || isset($_POST["year"]))
{
   $obj->select_thryroid("%".trim($_POST['query'])."%","%".trim($_POST['querys'])."%", "%".trim($_POST['year'])."%");
}
else
{
   $obj->select_thryroid("%%", "%%", "%%");
}
 $count = mysqli_num_rows($result_thry);
 mysqli_free_result($result_thry);  
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
// $('.double_barcode').on('dblclick', function() {
//         $tr = $(this).closest('tr');
//         var data = $tr.children("td").map(function() {
//             return $(this).text();
//         }).get();

//         console.log(data);
//         $('#print_barcode2').val(data[0]);
//         $('#barcode_id2').val(data[3]);
//         document.getElementById("formBarcode").action = "barcode";
//         document.getElementById("formBarcode").submit();
// });

//    $('.btnDelete_register').on('click', function() {
//         $('#exampleModalDeleteRegiter').modal('show');
//         $tr = $(this).closest('tr');
//         var data = $tr.children("td").map(function() {
//             return $(this).text();
//         }).get();
//         console.log(data);
//         $('#delete_register').val(data[0]);
//     });
//     $('.btnPrint').on('click', function() {
//         $('#exampleModalPrint').modal('show');
//         $tr = $(this).closest('tr');
//         var data = $tr.children("td").map(function() {
//             return $(this).text();
//         }).get();
//         console.log(data);
//         $('#print_barcode').val(data[0]);
//         $('#barcode_id').val(data[3]);
//     });
//     $('.btnAddmorepackage').on('click', function() {
//         $tr = $(this).closest('tr');
//         var data = $tr.children("td").map(function() {
//             return $(this).text();
//         }).get();
//         console.log(data);
//         $('#reg_id').val(data[0]);
//     });
</script>