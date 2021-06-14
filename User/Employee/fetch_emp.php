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
   $obj->select_employee_limit("%".$_POST['query']."%","%".$_POST['query2']."%",$page);
}
else
{
   $obj->select_employee_limit("%%", "%%",$page);
}
$output .= '
<style>
   .btnAddEmp:hover{
      cursor: pointer;
   }
</style>
';
if(mysqli_num_rows($result_emp) > 0)
{
 $output .= '
  <div class="table-responsive">
  <table class="table-bordered" style="width: 4500px;text-align: center;">
    <tr style="font-size: 18px;">
        <th style="width: 87px;">ເຄື່ອງມື</th>
        <th style="width: 50px;">N0.</th>
        <th style="width: 150px;">ບຣາໂຄດ</th>
        <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
        <th style="width: 250px;">ຊື່</th>
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
        <th style="width: 200px;">ຊື່ພາສາອັງກິດ</th>
        <th style="width: 200px;">ນາມສະກຸນອັງກິດ</th>
        <th style="width: 100px;">ສັນຊາດ</th>
        <th style="width: 150px;">ສາດສະໜາ</th>
        <th style="width: 100px;">ອາຊີບ</th>
        <th style="width: 200px;">ບ້ານພາສາອັງກິດ</th>
        <th style="width: 200px;">ເມືອງພາສາອັງກິດ</th>
        <th style="width: 200px;">ແຂວງພາສາອັງກິດ</th>
        <th style="width: 200px;">ບ້ານຢູ່ປັດຈຸບັນ</th>
        <th style="width: 200px;">ຖະໜົນ</th>
        <th style="width: 200px;">ອີເມວ</th>
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
            <a href="#" data-toggle="modal" data-target="#exampleModalUpdateEmp"
                class="fas fa-pen toolcolor btnUpdateEmp"></a>&nbsp; &nbsp;
            <a href="#" data-toggle="modal" data-target="#exampleModalDeleteEmp"
                class="fa fa-trash toolcolor btnDel_Emp"></a>
        </td>
        <td>'.$no_.'</td>
        <td class="btnAddEmp" data-toggle="modal" data-target="#exampleModalRegisterEmp">'.$row["barcode"].'</td>
        <td class="btnAddEmp" data-toggle="modal" data-target="#exampleModalRegisterEmp">'.$row["emp_id"].'</td>
        <td class="btnAddEmp" data-toggle="modal" data-target="#exampleModalRegisterEmp">'.$row["emp_name"].'</td>
        <td class="double_barcode">'.$row["surname"].'</td>
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
        <td style="display: none;">'.$row["com_id"].'</td>
        <td style="display: none;">'.$row["dob"].'</td>
        <td>'.$row["emp_name_en"].'</td>
        <td>'.$row["surname_en"].'</td>
        <td>'.$row["national_en"].'</td>
        <td>'.$row["religion_en"].'</td>
        <td>'.$row["occupation_en"].'</td>
        <td>'.$row["village_en"].'</td>
        <td>'.$row["district_en"].'</td>
        <td>'.$row["province_en"].'</td>
        <td>'.$row["current_address"].'</td>
        <td>'.$row["road"].'</td>
        <td>'.$row["email"].'</td>
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
        $('#barcode_register').val(data[2]);
         $('#barcode_addmore').val(data[2]);
    });
    $('.btnUpdateEmp').on('click', function() {
        $('#exampleModalUpdateEmp').modal('show');
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function() {
            return $(this).text();
        }).get();
        console.log(data);
        $('#barcode2').val(data[2]);
        $('#emp_id2').val(data[3]);
        $('#emp_name2').val(data[4]);
        $('#surname2').val(data[5]);
        $('#dob2').val(data[23]);
        $('#age2').val(data[7]);
        $('#gender2').val(data[8]);
        $('#company2').val(data[22]);
        $('#branch2').val(data[10]);
        $('#department2').val(data[11]);
        $('#tel2').val(data[12]);
        $('#family_stt2').val(data[13]);
        $('#nation2').val(data[14]);
        $('#ethnic2').val(data[15]);
        $('#religion2').val(data[16]);
        $('#job2').val(data[17]);
        $('#home_no2').val(data[18]);
        $('#village2').val(data[19]);
        $('#district2').val(data[20]);
        $('#province2').val(data[21]);
        $('#emp_name_en').val(data[24]);
        $('#surname_en').val(data[25]);
        $('#national_en').val(data[26]);
        $('#religion_en').val(data[27]);
        $('#occupation_en').val(data[28]);
        $('#village_en').val(data[29]);
        $('#district_en').val(data[30]);
        $('#province_en').val(data[31]);
        $('#current_address').val(data[32]);
        $('#road').val(data[33]);
        $('#email').val(data[34]);
    });
</script>
