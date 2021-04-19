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
   $obj->select_physical_limit("%".trim($_POST['query'])."%","%".trim($_POST['querys'])."%", "%".trim($_POST['year'])."%",$page);
}
else
{
   $obj->select_physical_limit("%%", "%%", "%%", $page);
}
// $output .= '
// <style>
//    .double_barcode:hover{
//       cursor: pointer;
//    }
// </style>
// ';
if(mysqli_num_rows($result_physical_limit) > 0)
{
 $output .= '
 <div class="table-responsive">
    <table class="table-bordered" style="width: 6000px;text-align: center;">
        <tr style="font-size: 18px;">

        <th style="width: 50px;">ເຄື່ອງມື</th>
            <th style="width: 40px;">N0.</th>
            <th style="width: 80px;">Barcode</th>
            <th style="width: 120px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 200px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 150px;">ບໍລິສັດ</th>
            <th style="width: 70px;">ປີເຂົ້າກວດ</th>
            <th style="width: 170px;">History of Presenting illness</th>
            <th style="width: 170px;">Past Medical History illness</th>
            <th style="width: 87px;">Personal</th>
            <th style="width: 50px;">Family</th>
            <th style="width: 150px;">Alcohol, Smoking illness</th>
            <th style="width: 50px;">Height</th>
            <th style="width: 87px;">Weight</th>
            <th style="width: 50px;">BMI</th>
            <th style="width: 87px;">Blood Pressure</th>
            <th style="width: 50px;">ABO</th>
            <th style="width: 87px;">Eyes</th>
            <th style="width: 50px;">Teeth/Gum</th>
            <th style="width: 87px;">Ears/Nos/Throat</th>
            <th style="width: 50px;">Lymph Nodes</th>
            <th style="width: 87px;">Thyroid Gland</th>
            <th style="width: 50px;">Extremities</th>
            <th style="width: 87px;">Skin</th>
            <th style="width: 50px;">Heart</th>
            <th style="width: 87px;">Lung</th>
            <th style="width: 50px;">Abdomen/Liver/Spleen</th>
            <th style="width: 87px;">Other</th>
            <th style="width: 50px;">Conclusion</th>
            <th style="width: 50px;">Remark</th>
        </tr>
 ';
 $no_ = $rank;
 while($row = mysqli_fetch_array($result_physical_limit))
 {
$no_ += 1;
  $output .= '
    <tr>
    <td><input type="checkbox" id="" name="id_delete[]" value="'.$row["pe_id"].'"></td>
        <td>'.$no_.'</td>
        <td>'.$row["barcode"].'</td>
        <td>'.$row["emp_id"].'</td>
        <td>'.$row["emp_name"].'</td>
        <td>'.$row["surname"].'</td>
        <td>'.$row["company"].'</td>
        <td>'.$row["year"].'</td>
        <td>'.$row["hpi"].'</td>
        <td>'.$row["pmhi"].'</td>
        <td>'.$row["personal"].'</td>
        <td>'.$row["family"].'</td>
        <td>'.$row["asi"].'</td>
        <td>'.$row["height"].'</td>
        <td>'.$row["weight"].'</td>
        <td>'.$row["bmi"].'</td>
        <td>'.$row["bp"].'</td>
        <td>'.$row["abo"].'</td>
        <td>'.$row["eye"].'</td>
        <td>'.$row["teeth"].'</td>
        <td>'.$row["ears"].'</td>
        <td>'.$row["lymph"].'</td>
        <td>'.$row["thyroid"].'</td>
        <td>'.$row["extremities"].'</td>
        <td>'.$row["hear"].'</td>
        <td>'.$row["lung"].'</td>
        <td>'.$row["als"].'</td>
        <td>'.$row["other"].'</td>
        <td>'.$row["check_other"].'</td>
        <td>'.$row["conclusion"].'</td>
        <td>'.$row["remark"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_physical_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]) || isset($_POST["querys"]) || isset($_POST["year"]))
{
   $obj->select_physical("%".trim($_POST['query'])."%","%".trim($_POST['querys'])."%", "%".trim($_POST['year'])."%");
}
else
{
   $obj->select_physical("%%", "%%", "%%");
}
 $count = mysqli_num_rows($result_physical);
 mysqli_free_result($result_physical);  
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