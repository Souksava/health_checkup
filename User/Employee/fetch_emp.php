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
           $page = ($page*50)-50;
           $rank = (($page*50)-50) / 50 + 1;
        }
  }
  else{
    $page = 0;
 }
 if(isset($_POST["query"]) || isset($_POST['query2']))
{
   $highlight = $_POST['query'];
   $highlight2 = $_POST['query2'];
   $obj->select_employee_limit("%".$_POST['query']."%","%".$_POST['query2']."%",$page);
}
else
{
   $obj->select_employee_limit("%%", "%%",$page);
}

if(mysqli_num_rows($result_emp) > 0)
{
 $output .= '
  <div class="table-responsive">
  <table class="table-bordered" style="width: 3000px;text-align: center;">
    <tr style="font-size: 18px;">
        <th style="width: 70px;">ເຄື່ອງມື</th>
        <th style="width: 50px;">N0.</th>
        <th style="width: 150px;">ບຣາໂຄດ</th>
        <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
        <th style="width: 200px;">ຊື່</th>
        <th style="width: 150px;">ນາມສະກຸນ</th>
        <th style="width: 120px;">ວັນເດືອນປີເກີດ</th>
        <th style="width: 50px;">ອາຍຸ</th>
        <th style="width: 70px;">ເພດ</th>
        <th style="width: 280px;">ບໍລິສັດ</th>
        <th style="width: 250px;">ສາຂາ</th>
        <th style="width: 300px;">ພະແນກ</th>
        <th style="width: 180px;">ເບີໂທລະສັບ</th>
        <th style="width: 130px;">ສະຖານະຄອບຄົວ</th>
        <th style="width: 100px;">ສັນຊາດ</th>
        <th style="width: 120px;">ຊົນເຜົ່າ</th>
        <th style="width: 100px;">ສາສະໜາ</th>
        <th style="width: 150px;">ອາຊີບ</th>
        <th style="width: 150px;">ເຮືອກເລກທີ</th>
        <th style="width: 180px;">ບ້ານຢູ່ປັດຈຸບັນ</th>
        <th style="width: 180px;">ເມືອງ</th>
        <th style="width: 180px;">ແຂວງ</th>
    </tr>
 ';
 $no_ =  $rank;
 while($row = mysqli_fetch_array($result_emp))
 {
$no_ += 1;
  $output .= '
    <tr>
        <td>
            <a href="#" data-toggle="modal" data-target="#exampleModalRegisterEmp"
                class="fas fa-registered toolcolor btnAddEmp"></a>&nbsp; &nbsp;
            <a href="#" data-toggle="modal" data-target="#exampleModalDeleteEmp"
                class="fa fa-trash toolcolor btnDel_Emp"></a>
        </td>
        <td>'.$no_.'</td>
        <td>'.$row["barcode"].'</td>
        <td>'.$row["emp_id"].'</td>
        <td>'.$row["emp_name"].'</td>
        <td>'.$row["surname"].'</td>
        <td>'.date("d/m/Y",strtotime($row["dob"])).'</td>
        <td>'.$row["age"].'</td>
        <td>'.$row["gender"].'</td>
        <td>'.$row["company"].'</td>
        <td>'.$row["branch"].'</td>
        <td>'.$row["department"].'</td>
        <td>'.$row["tel"].'</td>
        <td>'.$row["family_stt"].'</td>
        <td>'.$row["nation"].'</td>
        <td>'.$row["ethnic"].'</td>
        <td>'.$row["religion"].'</td>
        <td>'.$row["job"].'</td>
        <td>'.$row["house_no"].'</td>
        <td>'.$row["village"].'</td>
        <td>'.$row["district"].'</td>
        <td>'.$row["province"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_emp);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]) || isset($_POST['query2']))
 {
    $obj->count_emp("%".$_POST['query']."%","%".$_POST['query2']."%");
 }
 else
 {
    $obj->count_emp("%%","%%");
 }

 $count = mysqli_num_rows($resultemp_count);
 mysqli_free_result($resultemp_count);  
 mysqli_next_result($conn);
 $a = ceil($count/50);
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
<script type="text/javascript">
var highlight = "<?php echo $_POST['query']; ?>";
var highlight2 = "<?php echo $_POST['query2']; ?>";
$('.result_data_emp').highlight([highlight]);
$('.result_data_emp').highlight([highlight2]);
$('.btnDel_Emp').on('click', function() {
    $('#exampleModalDeleteEmp').modal('show');
      $tr = $(this).closest('tr');
      var data = $tr.children("td").map(function() {
         return $(this).text();
      }).get();

      console.log(data);

      $('#emp_id_del').val(data[2]);
   });
   $('.btnAddEmp').on('click', function() {
        $('#exampleModalRegisterEmp').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function() {
            return $(this).text();
        }).get();
        console.log(data);
        $('#register_barcode').val(data[2]);
    });
</script>