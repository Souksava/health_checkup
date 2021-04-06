<?php 
    if(isset($_POST['export_employee'])){
        $path = "../../";
        include ('../../oop/obj.php');
        $output = ' 
        <table class="table" border="1" style="width: 3500px;font-size: 18px;font-family: '."Phetsarath OT".';">
            <tr style="font-size: 18px;">
                <th style="width: 80px;">ລຳດັບ</th>
                <th style="width: 150px;">ບຣາໂຄດ</th>
                <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
                <th style="width: 180px;">ຊື່</th>
                <th style="width: 150px;">ນາມສະກຸນ</th>
                <th style="width: 120px;">ວັນເດືອນປີເກີດ</th>
                <th style="width: 50px;">ອາຍຸ</th>
                <th style="width: 70px;">ເພດ</th>
                <th style="width: 280px;">ບໍລິສັດ</th>
                <th style="width: 250px;">ສາຂາ</th>
                <th style="width: 200px;">ພະແນກ</th>
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
                <th style="width: 100px;">ລຳດັບຄິວ</th>
                <th style="width: 100px;">ປີ</th>
                <th style="width: 100px;">ວັນທີ</th>
                <th style="width: 100px;">ເວລາ</th>
            </tr> 
        ';
        $obj->export_emp("%".$_POST["search_company"]."%","%".$_POST["emp_search"]."%");
        $no_ = 0;
        foreach($resultexport_emp as $row){
            $no_ += 1;
        $output .='
            <tr>
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
                <td>'.$row["queue"].'</td>
                <td>'.$row["year"].'</td>
            ';
            if($row["date"] != null){
                $row["date"] = date("d/m/Y",strtotime($row["date"]));
            }
            else{
                $row["date"] = "";
            }
            $output .='
                <td>'.$row["date"].'</td>
                <td>'.$row["time"].'</td>
              
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=Report_Employee_Register.xls");
        echo $output;
    } 
   
?>