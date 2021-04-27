<?php
    if(isset($_POST['btnexport'])){
        $path = "../../../";
        include ('../../../oop/obj.php');
        $company = "%".$_POST["search_company"]."%";
        $name = "%".$_POST["search"]."%";
        $year = "%".$_POST["year"]."%";
        $output = ' 
        <table class="table" border="1" style="width: 80000px;font-size: 18px;font-family: '."Phetsarath OT".';">
        <tr style="font-size: 18px;">
            <th style="width: 87px;">N0.</th>
            <th style="width: 150px;">Barcode</th>
            <th style="width: 250px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 450px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 350px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 487px;">Hemoglobin(Hb)</th>
            <th style="width: 450px;">Hematocrit(Hct)</th>
            <th style="width: 280px;">White Blood Cell(WBC)</th>
            <th style="width: 250px;">Neutrophil(Ne)</th>
            <th style="width: 287px;">Lymphocyte(Lym)</th>
            <th style="width: 250px;">Monocyte</th>
            <th style="width: 287px;">Eosinophil(EO)</th>
            <th style="width: 250px;">Basophil(Baso)</th>
            <th style="width: 287px;">Platelets Count</th>
            <th style="width: 250px;">Red blood cell(RBC)</th>
            <th style="width: 187px;">MCV</th>
            <th style="width: 150px;">MCH</th>
            <th style="width: 187px;">MCHC</th>
            <th style="width: 450px;">Red blood cell morphology</th>
            <th style="width: 487px;">Conclusion</th>
            <th style="width: 450px;">Remark</th>
            <th style="width: 487px;">Conclusion EN</th>
            <th style="width: 450px;">Remark EN</th>
            <th style="width: 250px;">Username</th>
        </tr>
        ';
       $resultexport = mysqli_query($conn,"call select_cbc('$company','$name','$year')");
        $no_ = 0;
        foreach($resultexport as $row){
            $no_ += 1;
        $output .='
        <tr>
            <td>'.$no_.'</td>
            <td>'.$row["barcode"].'</td>
            <td>'.$row["emp_id"].'</td>
            <td>'.$row["emp_name"].'</td>
            <td>'.$row["surname"].'</td>
            <td>'.$row["company"].'</td>
            <td>'.$row["year"].'</td>
            <td>'.$row["hb"].'</td>
            <td>'.$row["hct"].'</td>
            <td>'.$row["wbc"].'</td>
            <td>'.$row["ne"].'</td>
            <td>'.$row["lym"].'</td>
            <td>'.$row["monocyte"].'</td>
            <td>'.$row["eo"].'</td>
            <td>'.$row["baso"].'</td>
            <td>'.$row["platelets"].'</td>
            <td>'.$row["rbc"].'</td>
            <td>'.$row["mvc"].'</td>
            <td>'.$row["mch"].'</td>
            <td>'.$row["mchc"].'</td>
            <td>'.$row["red_blood"].'</td>
            <td>'.$row["conclusion"].'</td>
            <td>'.$row["remark"].'</td>
            <td>'.$row["conclusion_en"].'</td>
            <td>'.$row["remark_en"].'</td>
            <td>'.$row["user_name"].'</td>
        </tr>
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_CBC.xls");
        echo $output;
    }

?>