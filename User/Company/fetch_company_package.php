<?php
  $path="../../";
  include (''.$path.'oop/obj.php');
  $output = '';
 if(isset($_POST["query"]))
{
   $obj->select_company_list_package($_POST['query']);
}
else
{
   $obj->select_company_list_package("");
}
$output .='
    <div class="card">
    <div class="card-header">
        <div align="center">ເພີ່ມແພັກເກັດ</div>
    </div>
    <div class="card-body">
 ';
if(mysqli_num_rows($list_addpackage) > 0)
{
$no_ = 0;
foreach($list_addpackage as $row){

    $a = 0;
$no_ += 1;
  $output .= '
    <ul class="list-group">
        <li class="list-group-item">
            &nbsp; &nbsp;<input class="form-check-input" type="checkbox" name="pack_id[]" value="'.$row["pack_id"].'"
                id="flexCheckDefault'.$no_.'">
            <label class="form-check-label" for="flexCheckDefault">
                '.$row["pack_id"].'
            </label>
        </li>
    </ul>
  ';
 }
 $output .='
 <br>
  <div align="right" style="color: red;">
      <h6>ລວມ: '.$no_.' ລາຍການ</h6>
  </div>
  <button type="submit" style="width: 100%;text-align: center;"
        id="btn_load_Add_package" name="btn_load_Add_package" class="btn btn-success" onclick="">
        ເພີ່ມແພັກເພັດ
        <span class="" id="load_add_package"></span>
    </button>
    </div>
</div>
 ';
 echo $output;
}
else
{
 echo '<br>
<hr size="1" width="90%">
    <p align="center">ແພັກເກັດນຳເຂົ້າໝົດແລ້ວ</p>
<hr size="1" width="90%">
 ';
}
?>
<script>
// const myform_Form_Add_Package = document.getElementById("Form_Add_Package");
// const company_id_add = document.getElementById("company_id_add");
// const load_add_package = document.getElementById("load_add_package");
// const btn_load_Add_package = document.getElementById("btn_load_Add_package");
// myform_Form_Add_Package.addEventListener('submit', (e) => {
//     e.preventDefault();
//     checkInputs_Form_Add_Package();
// });

// function checkInputs_Form_Add_Package() {
//     setloading(load_add_package, btn_load_Add_package);
//     document.getElementById("Form_Add_Package").action = "Company";
//     document.getElementById("Form_Add_Package").submit();

// };

</script>