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
           $page = ($page*15)-15;
           $rank = (($page*15)-15) / 15 + 1;
        }
  }
  else{
    $page = 0;
 }
 if(isset($_POST["query"]))
{
   $highlight = $_POST['query'];
   $obj->select_company_limit("%".$_POST['query']."%",$page);
}
else
{
   $obj->select_company_limit("%%", $page);
}

if(mysqli_num_rows($result_company_limit) > 0)
{
 $output .= '
 <div class="table-responsive">
    <table class="table-bordered" style="width: 100%;text-align: center;">
        <tr style="font-size: 18px;">
            <th>ເຄື່ອງມື</th>
            <th>ລຳດັບ</th>
            <th>ລະຫັດບໍລິສັດ</th>
            <th>ຊື່ພາສາລາວ</th>
            <th>ຊື່ສະຕິກເກີ້</th>
            <th>ຊື່ພາສາອັງກິດ</th>

        </tr>
 ';
 $no_ =  $rank;
 while($row = mysqli_fetch_array($result_company_limit))
 {
$no_ += 1;
//ການ fetch table ຂຶ້ນ Modal ແມ່ນ step 1: ສ້າງຊື່ການຄິກໄວ້ table
  $output .= '
    <tr>
        <td>
            <a href="#" data-toggle="modal" data-target="#exampleModalAddPackage"
                class="fa fa-notes-medical toolcolor btnAddpackage"></a>&nbsp; &nbsp;
            <a href="#" data-toggle="modal" data-target="#exampleModalUpdatecompany"
                class="fa fa-pen toolcolor btnUpdate_com"></a>&nbsp; &nbsp;
            <a href="#" data-toggle="modal" data-target="#exampleModalDeleteCom"
                class="fa fa-trash toolcolor btnDelete_com"></a>
        </td>
        <td>'.$no_.'</td>
        <td>'.$row["com_id"].'</td>
        <td>'.$row["company"].'</td>
        <td>'.$row["sticker"].'</td>
        <td>'.$row["company_en"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_company_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]))
 {
    $obj->select_company("%".$_POST['query']."%");
 }
 else
 {
    $obj->select_company("%%");
 }

 $count = mysqli_num_rows($result_company);
 mysqli_free_result($result_company);  
 mysqli_next_result($conn);
 $a = ceil($count/15);
 if(isset($_POST['page'])){
    if($_POST['page'] > 1){
       $previous = $_POST['page'] - 1;
       echo '     
       <nav aria-label="..." class="table-responsive4">
          <ul class="pagination">
             <li class="page-item">
                <a href="#" class="btn btn-danger page-links_company" id="'.$previous.'" style="color: white!important;width: 70px;" value="'.$previous.'">ກັບຄືນ</a>
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
          <a href="#" id="'.$b.'" class="btn btn-danger page-link page-links_company" value="'.$b.'">'.$b.'</a>
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
                      <a href="#" class="btn btn-success page-links_company" id="'.$next.'" value="'.$next.'" style="color: white!important;width: 90px;" href="#">ໜ້າຖັດໄປ</a>
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
$('.result_data_company').highlight([highlight]);
$('.btnUpdate_com').on('click', function() {
    $('#exampleModalUpdatecompany').modal('show');
      $tr = $(this).closest('tr');
      var data = $tr.children("td").map(function() {
         return $(this).text();
      }).get();

      console.log(data);

      $('#com_id').val(data[2]);
      $('#company2').val(data[3]);
      $('#sticker2').val(data[4]);
      $('#company_en2').val(data[5]);
});
$('.btnDelete_com').on('click', function() {
    $('#exampleModalDeleteCom').modal('show');
      $tr = $(this).closest('tr');
      var data = $tr.children("td").map(function() {
         return $(this).text();
      }).get();

      console.log(data);

      $('#id').val(data[2]);
});
//ການ fetch table ຂຶ້ນ Modal ແມ່ນ step 2: ສ້າງ event click ຂຶ້ນ Modal ໄວ້ບ່ອນ Fetch table
$('.btnAddpackage').on('click', function() {
    $('#exampleModalAddPackage').modal('show');
      $tr = $(this).closest('tr');
      var data = $tr.children("td").map(function() {
         return $(this).text();
      }).get();

      // console.log(data);

      $('#company_id_clear_package').val(data[2]);
      $('#company_id_add').val(data[2]);
});

</script>