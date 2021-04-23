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
    $obj->select_package_limit("%".$_POST['query']."%",$page);
 }
 else
 {
    $obj->select_package_limit("%%", $page);
 }


 if(mysqli_num_rows($resultPackage_limit) > 0)
{
 $output .= '
  <div class="table-responsive">
  <table class="table-bordered" style="width: 100%;text-align: center;">
    <tr style="font-size: 18px;">
      <th style="width: 90px;"></th>
      <th style="width:50px;">No.</th>
      <th style="width:100px;">Package</th>
      <th>Description</th>
    </tr>
 ';
 $no2_ = $rank;
 while($row = mysqli_fetch_array($resultPackage_limit))
 {
$no2_ += 1;
  $output .= '
    <tr>
        <td>
            <a href="#" data-toggle="modal" data-target="#exampleModalDelete_ID_Package"
                class="fa fa-trash toolcolor btnDelete_Package"></a>
        </td>
        <td>'.$no2_.'</td>
        <td>'.$row["pack_id"].'</td>
        <td>'.$row["pack_name"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($resultPackage_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]))
 {
    $obj->select_package("%".$_POST['query']."%");
 }
 else
 {
    $obj->select_package("%%");
 }

 $count = mysqli_num_rows($result_package_count);
 mysqli_free_result($result_package_count);  
 mysqli_next_result($conn);
 $a = ceil($count/15);
 if(isset($_POST['page'])){
    if($_POST['page'] > 1){
       $previous = $_POST['page'] - 1;
       echo '     
       <nav aria-label="..." class="table-responsive4">
          <ul class="pagination">
             <li class="page-item">
                <a href="#" class="btn btn-danger page-links_package" id="'.$previous.'" style="color: white!important;width: 70px;" value="'.$previous.'">ກັບຄືນ</a>
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
          <a href="#" id="'.$b.'" class="btn btn-danger page-link page-links_package" value="'.$b.'">'.$b.'</a>
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
                      <a href="#" class="btn btn-success page-links_package" id="'.$next.'" value="'.$next.'" style="color: white!important;width: 90px;" href="#">ໜ້າຖັດໄປ</a>
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
$('.result_data_package').highlight([highlight]);
$('.btnDelete_Package').on('click', function() {
    $('#exampleModalDelete_ID_Package').modal('show');
      $tr = $(this).closest('tr');
      var data = $tr.children("td").map(function() {
         return $(this).text();
      }).get();

      console.log(data);

      $('#delete_package').val(data[2]);
   });
</script>