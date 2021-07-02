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
 if(isset($_POST["query"]) || isset($_POST["query2"]) || isset($_POST["query3"]) )
{
   $highlight = $_POST['query'];
   $highlight2 = $_POST['query2'];
   $highlight3 = $_POST['query3'];
   $obj->select_book_limit("%".trim($_POST['query'])."%","%".trim($_POST['query2'])."%","%".trim($_POST['query3'])."%",$page);
}
else
{
   $obj->select_book_limit("%%", "%%", "%%",$page);
}
$output .= '
<style>
   .printbook:hover{
      cursor: pointer;
   }
</style>
';
if(mysqli_num_rows($result_book_limit) > 0)
{
 $output .= '
  <div class="table-responsive">
  <table class="table-bordered" style="width: 4700px;text-align: center;">
    <tr style="font-size: 18px;">
        <th style="width: 60px;">N0.</th>
        <th style="width: 150px;">ບຣາໂຄດ</th>
        <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
        <th style="width: 350px;">ຊື່</th>
        <th style="width: 150px;">ນາມສະກຸນ</th>
        <th style="width: 350px;">ບໍລິສັດ</th>
        <th style="width: 120px;">ປີເຂົ້າກວດ</th>
        <th style="width: 150px;">ກວດຮ່າງກາຍທົ່ວໄປ</th>
        <th style="width: 150px;">ກວດເລືອດລວມ</th>
        <th style="width: 150px;">ກວດເລືອດຊີວະເຄມີ</th>
        <th style="width: 150px;">ກວດປັດສະວະ</th>
        <th style="width: 150px;">ກວດສານເສບຕິດ</th>
        <th style="width: 150px;">ກວດຕ໋ອມຄໍ</th>
        <th style="width: 150px;">ກວດອາຈົມ</th>
        <th style="width: 250px;">ກວດໂລຫະໜັກ, ສານພິດ</th>
        <th style="width: 150px;">ກວດຕ໋ອມມະເຮັງ</th>
        <th style="width: 150px;">ກວດການເບິ່ງເຫັນ</th>
        <th style="width: 250px;">ກວດສະມັດຕະພາບການໄດ້ຍິນ</th>
        <th style="width: 350px;">ກວດສອບສະມັດຕະພາບທາງປອດ</th>
        <th style="width: 150px;">ສ່ອງໄຟຟ້າຜົ້າເອິກ</th>
        <th style="width: 150px;">ພູມຄຸ້ມກັນວິທະຍາ</th>
        <th style="width: 250px;">ການແທກຄື້ນໄຟຟ້າຫົວໃຈ</th>
        <th style="width: 250px;">ກວດທົດສອບສະມັດຕະພາບກ້າມ</th>
        <th style="width: 150px;">ກວດເອໂກ້ທ້ອງ</th>
        <th style="width: 150px;">ກວດບົ່ງຊີ້ຕ໋ອມມະເຮັງ</th>
        <th style="width: 150px;">ທົດສອບສາຍຕາ</th>
    </tr>
 ';
 $no_ =  $rank;
 while($row = mysqli_fetch_array($result_book_limit))
 {
$no_ += 1;
  $output .= '
    <tr>
        <td>'.$no_.'</td>
        <td class="printbook">'.$row["barcode"].'</td>
        <td class="printbook">'.$row["emp_id"].'</td>
        <td class="printbook">'.$row["emp_name"].'</td>
        <td class="printbook">'.$row["surname"].'</td>
        <td class="printbook">'.$row["company"].'</td>
        <td class="printbook">'.$row["year"].'</td>
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
         if($row["ekg"] == 1){
            $row["ekg"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["ekg"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["muscle"] == 1){
            $row["muscle"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["muscle"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["ultra"] == 1){
            $row["ultra"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["ultra"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["tumor_gttgk"] == 1){
            $row["tumor_gttgk"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["tumor_gttgk"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
         if($row["test_vision"] == 1){
            $row["test_vision"] = "<i class='fa fa-calendar-check' style='color: green;'></i>";
         }
         else{
            $row["test_vision"] = "<i class='fa fa-exclamation-circle' style='color: red;'></i>";
         }
        $output .='
        <td class="printbook">'.$row["physic"].'</td>
        <td class="printbook">'.$row["cbc"].'</td>
        <td class="printbook">'.$row["bio"].'</td>
        <td class="printbook">'.$row["urine"].'</td>
        <td class="printbook">'.$row["meth"].'</td>
        <td class="printbook">'.$row["thry"].'</td>
        <td class="printbook">'.$row["stool"].'</td>
        <td class="printbook">'.$row["metal"].'</td>
        <td class="printbook">'.$row["tumor"].'</td>
        <td class="printbook">'.$row["vision"].'</td>
        <td class="printbook">'.$row["audio"].'</td>
        <td class="printbook">'.$row["spiro"].'</td>
        <td class="printbook">'.$row["cxr"].'</td>
        <td class="printbook">'.$row["intt"].'</td>
        <td class="printbook">'.$row["ekg"].'</td>
        <td class="printbook">'.$row["muscle"].'</td>
        <td class="printbook">'.$row["ultra"].'</td>
        <td class="printbook">'.$row["tumor_gttgk"].'</td>
        <td class="printbook">'.$row["test_vision"].'</td>
    </tr>
  ';
 }
 mysqli_free_result($result_book_limit);  
 mysqli_next_result($conn);
 $output .='
   </table>
</div>
 ';
 echo $output;
 if(isset($_POST["query"]) || isset($_POST['query2']) || isset($_POST['query3']))
 {
    $obj->select_book("%".trim($_POST['query'])."%","%".trim($_POST['query2'])."%", "%".trim($_POST['query2'])."%");
 }
 else
 {
    $obj->select_book("%%","%%","%%");
 }

 $count = mysqli_num_rows($result_book);
 mysqli_free_result($result_book);  
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
var highlight3 = "<?php echo $_POST['query3']; ?>";
$('.result_data_status').highlight([highlight]);
$('.result_data_status').highlight([highlight2]);
$('.result_data_status').highlight([highlight3]);
$('.printbook').on('click', function() {
        $tr = $(this).closest('tr');
        var data = $tr.children("td").map(function() {
            return $(this).text();
        }).get();

        console.log(data);
        $('#barcode2').val(data[1]);
        $('#yearr').val(data[6]);
        document.getElementById("formBarcode").action = "PrintEnglish";
        document.getElementById("formBarcode").submit();
});
</script>