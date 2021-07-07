<?php
    if(isset($_POST['export_employee'])){
       $register_company = "%".$_POST["register_company"]."%";
       $register_search = "%".$_POST["register_search"]."%";
       $register_date = "%".$_POST["register_date"]."%";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<?php 
    $path="../../";
    include (''.$path.'oop/obj.php');
    $arr_package = array();
    $table_package = array();
    $getpackage = mysqli_query($conn,"call select_export_sheet_register('$register_company','$register_search','$register_date');");
    foreach($getpackage as $row){
        
        $pack_id = $row['pack_id'];
        $regis = mysqli_query($conn,"call select_employee_package_sheet('$pack_id')");
        $arr_package[] = "'".$pack_id."'"; 
        $table_package[] = "'"."tbl".$pack_id."'"; 
    }
    $arr_package = implode(",", $arr_package); 
    $table_package = implode(",", $table_package); 
    mysqli_free_result($getpackage);  
    mysqli_next_result($conn);
   ?>

<body
    onload="tablesToExcel(['tblemplyee',<?php echo $table_package; ?>],['Register',<?php echo $arr_package; ?>],'Register.xls','Excel')">
    <div style="display: none;">
        <?php  
        $arr_package = array();
        $table_package = array();
        $getpackage = mysqli_query($conn,"select d.pack_id from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id LEFT JOIN registerdetail d ON r.reg_id=d.reg_id  where c.company like '$register_company' and (e.emp_id like '$register_search' or emp_name like '$register_search' or surname LIKE '$register_search' or age LIKE '$register_search' or r.barcode like '$register_search' or sticker like '$register_search') and r.date like '$register_date' GROUP BY d.pack_id ORDER BY d.pack_id ASC;");
        foreach($getpackage as $row){
        
            $pack_id = $row['pack_id'];
            $regis2 = mysqli_query($conn,"select r.reg_id,r.barcode,e.emp_id,emp_name,surname,queue,dob,age,gender,company,branch,department,tel,family_stt,nation,ethnic,religion,job,house_no,village,district,province,current_address,road,e.email,pack_id,year,date,time,user_name from register r LEFT JOIN registerdetail d ON r.reg_id=d.reg_id left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id where d.pack_id='$pack_id' and r.date like '$register_date' and c.company like '$register_company' and (e.emp_id like '$register_search' or emp_name like '$register_search' or surname like '$register_search' or age LIKE '$register_search' or r.barcode like '$register_search' or sticker like '$register_search') ORDER BY pack_id ASC;");
            $arr_package[] = "'".$pack_id."'"; 
            $table_package[] = "'"."tbl".$pack_id."'"; 
            ?>
        <h3>table <?php echo $pack_id ?></h3>
        <table class="table table-bordered" id="tbl<?php echo $pack_id ?>">
            <tr>
                <th>ລຳດັບ</th>
                <th>ບຣາໂຄດ</th>
                <th>ລະຫັດພະນັກງານ</th>
                <th>ຊື່ພະນັກງານ</th>
                <th>ນາມສະກຸນ</th>
                <th>ວັນເດືອນປີເກີດ</th>
                <th>ອາຍຸ</th>
                <th>ເພດ</th>
                <th>ບໍລິສັດ</th>
                <th>ສາຂາ</th>
                <th>ພະແນກ</th>
                <th>ເບີໂທລະສັບ</th>
                <th>ສະຖານະຄອບຄົວ</th>
                <th>ສັນຊາດ</th>
                <th>ຊົນເຜົ່າ</th>
                <th>ສາສະໜາ</th>
                <th>ອາຊີບ</th>
                <th>ເຮືອກເລກທີ</th>
                <th>ບ້ານ</th>
                <th>ເມືອງ</th>
                <th>ແຂວງ</th>
                <th>ບ້ານຢູ່ປັດຈຸບັນ</th>
                <th>ຖະໜົນ</th>
                <th>ອີເມວ</th>
                <th>ຜູ້ລົງທະບຽນ</th>
                <th>ລຳດັບຄິວ</th>
                <th>ປີເຂົ້າກວດ</th>
                <th>ວັນທີລົງທະບຽນ</th>
                <th>ເວລາ</th>
                <th>package</th>
            </tr>
            <?php $no2_ = 0; ?>
            <?php
            foreach($regis2 as $rowregis2){
            ?>
            <tr>
            <td><?php echo $no2_ += 1; ?></td>
                <td><?php echo $rowregis2['barcode'] ?></td>
                <td><?php echo $rowregis2['emp_id'] ?></td>
                <td><?php echo $rowregis2['emp_name'] ?></td>
                <td><?php echo $rowregis2['surname'] ?></td>
                <td><?php echo $rowregis2['dob'] ?></td>
                <td><?php echo $rowregis2['age'] ?></td>
                <td><?php echo $rowregis2['gender'] ?></td>
                <td><?php echo $rowregis2['company'] ?></td>
                <td><?php echo $rowregis2['branch'] ?></td>
                <td><?php echo $rowregis2['department'] ?></td>
                <td><?php echo $rowregis2['tel'] ?></td>
                <td><?php echo $rowregis2['family_stt'] ?></td>
                <td><?php echo $rowregis2['nation'] ?></td>
                <td><?php echo $rowregis2['ethnic'] ?></td>
                <td><?php echo $rowregis2['religion'] ?></td>
                <td><?php echo $rowregis2['job'] ?></td>
                <td><?php echo $rowregis2['house_no'] ?></td>
                <td><?php echo $rowregis2['village'] ?></td>
                <td><?php echo $rowregis2['district'] ?></td>
                <td><?php echo $rowregis2['province'] ?></td>
                <td><?php echo $rowregis2['current_address'] ?></td>
                <td><?php echo $rowregis2['road'] ?></td>
                <td><?php echo $rowregis2['email'] ?></td>
                <td><?php echo $rowregis2['user_name'] ?></td>
                <td><?php echo $rowregis2['queue'] ?></td>
                <?php
                        if($rowregis2["date"] != null){
                            $rowregis2["date"] = date("d/m/Y",strtotime($rowregis2["date"]));
                        }
                        else{
                            $rowregis2["date"] = "";
                        }
                    ?>
                <td><?php echo $rowregis2['year'] ?></td>
                <td><?php echo $rowregis2['date'] ?></td>
                <td><?php echo $rowregis2['time'] ?></td>
                <td><?php echo $rowregis2['pack_id'] ?></td>
            </tr>
            <?php
            }
            ?>
        </table>
        <?php
            echo '  <hr width="100%" size="2" />';
        }
        mysqli_free_result($getpackage);  
        mysqli_next_result($conn);
        $arr_package = implode(",", $arr_package); 
        $table_package = implode(",", $table_package); 

        if(isset($_POST["register_company"]) || isset($_POST["register_search"]) || isset($_POST["register_date"]))
        {
           $obj->select_register("%".trim($_POST['register_company'])."%","%".trim($_POST['register_search'])."%","%".trim($_POST['register_date'])."%");
        }
        else
        {
           $obj->select_register("%%","%%","%%");
        }
        ?>
        <h3>table employee</h3>
        <div class="table-responsive">
            <table class="table" border="1" style="width: 3500px;font-size: 18px;font-family:'Phetsarath OT';"
                id="tblemplyee">
                <tr style="font-size: 18px;">
                    <th style="width: 70px;">No.</th>
                    <th style="width: 150px;">Barcode</th>
                    <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
                    <th style="width: 250px;">ຊື່</th>
                    <th style="width: 150px;">ນາມສະກຸນ</th>
                    <th style="width: 80px;">ວັນເດືອນປີເກີດ</th>
                    <th style="width: 80px;">ອາຍຸ</th>
                    <th style="width: 80px;">ເພດ</th>
                    <th style="width: 300px;">ບໍລິສັດ</th>
                    <th style="width: 100px;">ສາຂາ</th>
                    <th style="width: 100px;">ພະແນກ</th>
                    <th style="width: 100px;">ເບີໂທລະສັບ</th>
                    <th style="width: 80px;">ສະຖານະຄອບຄົວ</th>
                    <th style="width: 80px;">ສັນຊາດ</th>
                    <th style="width: 80px;">ຊົນເຜົ່າ</th>
                    <th style="width: 80px;">ສາສະໜາ</th>
                    <th style="width: 100px;">ອາຊີບ</th>
                    <th style="width: 80px;">ເຮືອກເລກທີ</th>
                    <th style="width: 100px;">ບ້ານ</th>
                    <th style="width: 100px;">ເມືອງ</th>
                    <th style="width: 100px;">ແຂວງ</th>
                    <th style="width: 180px;">ບ້ານຢູ່ປັດຈຸບັນ</th>
                    <th style="width: 100px;">ຖະໜົນ</th>
                    <th style="width: 160px;">ອີເມວ</th>
                    <th style="width: 80px;">ລຳດັບຄິວ</th>
                    <th style="width: 100px;">ປີເຂົ້າກວດ</th>
                    <th style="width: 160px;">ວັນທີລົງທະບຽນ</th>
                    <th style="width: 100px;">ເວລາ</th>
                </tr>
                <?php
            $no_ = 0;
        foreach($result_register as $rowemp){
            ?>
                <tr>
                    <td><?php echo $no_ += 1; ?></td>
                    <td><?php echo $rowemp['barcode'] ?></td>
                    <td><?php echo $rowemp['emp_id'] ?></td>
                    <td><?php echo $rowemp['emp_name'] ?></td>
                    <td><?php echo $rowemp['surname'] ?></td>
                    <td><?php echo $rowemp['dob'] ?></td>
                    <td><?php echo $rowemp['age'] ?></td>
                    <td><?php echo $rowemp['gender'] ?></td>
                    <td><?php echo $rowemp['company'] ?></td>
                    <td><?php echo $rowemp['branch'] ?></td>
                    <td><?php echo $rowemp['department'] ?></td>
                    <td><?php echo $rowemp['tel'] ?></td>
                    <td><?php echo $rowemp['family_stt'] ?></td>
                    <td><?php echo $rowemp['nation'] ?></td>
                    <td><?php echo $rowemp['ethnic'] ?></td>
                    <td><?php echo $rowemp['religion'] ?></td>
                    <td><?php echo $rowemp['job'] ?></td>
                    <td><?php echo $rowemp['house_no'] ?></td>
                    <td><?php echo $rowemp['village'] ?></td>
                    <td><?php echo $rowemp['district'] ?></td>
                    <td><?php echo $rowemp['province'] ?></td>
                    <td><?php echo $rowemp['current_address'] ?></td>
                    <td><?php echo $rowemp['road'] ?></td>
                    <td><?php echo $rowemp['email'] ?></td>
                    <td><?php echo $rowemp['queue'] ?></td>
                    <td><?php echo $rowemp['year'] ?></td>
                    <?php
                 if($rowemp["date"] != null){
                    $rowemp["date"] = date("d/m/Y",strtotime($rowemp["date"]));
                    }
                    else{
                    $rowemp["date"] = "";
                }
                ?>
                    <td><?php echo $rowemp['date'] ?></td>
                    <td><?php echo $rowemp['time'] ?></td>
                </tr>


                <?php
        }
        ?>
            </table>
            <?php
        echo '  <hr width="100%" size="2" />';
        mysqli_free_result($result_register);  
        mysqli_next_result($conn);

    ?>
        </div>
</body>

</html>
<script src="<?php echo $path ?>dist/js/export.js"></script>
<?php
}
?>