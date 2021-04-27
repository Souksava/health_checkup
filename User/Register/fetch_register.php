<?php
  $path="../../";
  $rank = 0;
  include (''.$path.'oop/obj.php');
  $output = '';
  if(isset($_POST['page'])){
     $page = $_POST['page'];
     if($page == '' || $page == 0 || $page == 1){
        $page = 0;
        }
        else{
           $page = ($page*50)-50;
           $rank = (($page*50)-50) / 50 + 1;
        }
  }
  else{
    $page = 0;
 }
 if(isset($_POST["query"]) || isset($_POST["query2"]) || isset($_POST["dates"]))
{
   $highlight = $_POST["query"];
   $highlight2 = $_POST["query2"];
   $highlight3 = date("d/m/Y",strtotime($_POST["dates"]));
   $obj->select_register_limit("%".trim($_POST['query'])."%","%".trim($_POST['query2'])."%", "%".trim($_POST['dates'])."%",$page);
}
else
{
   $obj->select_register_limit("%%", "%%", "%%", $page);
}
$output .= '
<style>
   .double_barcode:hover{
      cursor: pointer;
   }
</style>
';
if(mysqli_num_rows($result_register_limit) > 0)
{
 $output .= '
  <div class="table-responsive">
  <table class="table-bordered" style="width: 2000px;text-align: center;">
    <tr style="font-size: 18px;">
        <th style="width: 90px;">ເຄື່ອງມື</th>
        <th style="width: 70px;">No.</th>
        <th style="width: 150px;">Barcode</th>
        <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
        <th style="width: 150px;">ຊື່</th>
        <th style="width: 150px;">ນາມສະກຸນ</th>
        <th style="width: 80px;">ລຳດັບຄິວ</th>
        <th style="width: 70px;">ອາຍຸ</th>
        <th style="width: 300px;">ບໍລິສັດ</th>
        <th style="width: 80px;">Year</th>
        <th style="width: 100px;">ວັນທີລົງທະບຽນ</th>
        <th style="width: 100px;">ເວລາ</th>
        <th style="width: 100px;">ຜູ້ລົງທະບຽນ</th>
    </tr>
 ';
 $no_ = $rank;
 while($row = mysqli_fetch_array($result_register_limit))
 {
$no_ += 1;
  $output .= '
    <tr>
        <td style="display: none;">'.$row["reg_id"].'</td>
        <td>
        <a href="#" data-toggle="modal" data-target="#exampleModalPrint"
            class="fas fa-print toolcolor btnPrint"></a>&nbsp; &nbsp;
         <a href="#" data-toggle="modal" data-target="#exampleModalAddmorepackage"
            class="fas fa-notes-medical toolcolor btnAddmorepackage"></a>&nbsp; &nbsp;
        <a href="#" data-toggle="modal" data-target="#exampleModalDeleteRegiter"
            class="fa fa-trash toolcolor btnDelete_register"></a>
        </td>
        <td>'.$no_.'</td>
        <td class="double_barcode">'.$row["barcode"].'</td>
        <td>'.$row["emp_id"].'</td>
        <td class="double_barcode">'.$row["emp_name"].'</td>
        <td class="double_barcode">'.$row["surname"].'</td>
        <td>'.$row["queue"].'</td>
        <td>'.$row["age"].'</td>
        <td>'.$row["company"].'</td>
        <td>'.$row["year"].'</td>
        <td>'.date("d/m/Y",strtotime($row["date"])).'</td>
        <td>'.$row["time"].'</td>
        <td>'.$row["user_name"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_register_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]) || isset($_POST["query2"]) || isset($_POST["dates"]))
{
   $obj->select_register("%".trim($_POST['query'])."%","%".trim($_POST['query2'])."%", "%".trim($_POST['dates'])."%");
}
else
{
   $obj->select_register("%%", "%%", "%%");
}
 $count = mysqli_num_rows($result_register);
 mysqli_free_result($result_register);  
 mysqli_next_result($conn);
 $a = ceil($count/50);
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
var highlight2 = "<?php echo $_POST['query2']; ?>";
var highlight3 = "<?php echo date("d/m/Y",strtotime($_POST["dates"])); ?>";
$('.result_register').highlight([highlight]);
$('.result_register').highlight([highlight2]);
$('.result_register').highlight([highlight3]);
$('.double_barcode').on('dblclick', function() {
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function() {
            return $(this).text();
        }).get();

        console.log(data);
        $('#print_barcode2').val(data[0]);
        $('#barcode_id2').val(data[3]);
        document.getElementById("formBarcode").action = "barcode";
        document.getElementById("formBarcode").submit();
});

   $('.btnDelete_register').on('click', function() {
        $('#exampleModalDeleteRegiter').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function() {
            return $(this).text();
        }).get();
        console.log(data);
        $('#delete_register').val(data[0]);
    });
    $('.btnPrint').on('click', function() {
        $('#exampleModalPrint').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function() {
            return $(this).text();
        }).get();
        console.log(data);
        $('#print_barcode').val(data[0]);
        $('#barcode_id').val(data[3]);
    });
    $('.btnAddmorepackage').on('click', function() {
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function() {
            return $(this).text();
        }).get();
        console.log(data);
        $('#reg_id').val(data[0]);
    });
</script>