<?php
    if(isset($_POST['btnexport'])){
        $path = "../../../";
        include ('../../../oop/obj.php');
        $company = "%".$_POST["search_company"]."%";
        $name = "%".$_POST["search"]."%";
        $year = "%".$_POST["year2"]."%";
        $output = ' 
        <table class="table" border="1" style="width: 80000px;font-size: 18px;font-family: '."Phetsarath OT".';">
        <tr style="font-size: 18px;">
                <th style="width: 87px;">No.</th>
                <th style="width: 50px;">Barcode</th>
                <th style="width: 50px;">ລະຫັດພະນັກງານ</th>
                <th style="width: 50px;">ຊື່</th>
                <th style="width: 50px;">ນາມສະກຸນ</th>
                <th style="width: 50px;">ບໍລິສັດ</th>
                <th style="width: 50px;">ປີເຂົ້າກວດ</th>
                <th style="width: 87px;">fasting Blood Sugar(FBS)</th>
                <th style="width: 50px;">Cholesterol(CHO)</th>
                <th style="width: 87px;">High-density lipoprotein(HDL-C)</th>
                <th style="width: 50px;">Low-density lipoprotein(LDL-C)</th>
                <th style="width: 87px;">Triglycerides(Trig)</th>
                <th style="width: 50px;">Uric acid(UA)</th>
                <th style="width: 87px;">Bun</th>
                <th style="width: 50px;">Creatinine</th>
                <th style="width: 87px;">SGOT</th>
                <th style="width: 50px;">SGPT</th>
                <th style="width: 87px;">Alk.Phosphatase</th>
                <th style="width: 50px;">GGT</th>
                <th style="width: 50px;">HBA1C</th>
                <th style="width: 87px;">Conclusion</th>
                <th style="width: 50px;">Remark</th>
                <th style="width: 87px;">Conclusion EN</th>
                <th style="width: 50px;">Remark EN</th>
                <th style="width: 50px;">Username</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_biochemistry('$company','$name','$year')");
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
                <td>'.$row["fbs"].'</td>
                <td>'.$row["cho"].'</td>
                <td>'.$row["hdl"].'</td>
                <td>'.$row["ldl"].'</td>
                <td>'.$row["trig"].'</td>
                <td>'.$row["ua"].'</td>
                <td>'.$row["bun"].'</td>
                <td>'.$row["creatinine"].'</td>
                <td>'.$row["sgot"].'</td>
                <td>'.$row["sgpt"].'</td>
                <td>'.$row["alk"].'</td>
                <td>'.$row["ggt"].'</td>
                <td>'.$row["hbac"].'</td>
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
        header("Content-Disposition:attachment; filename=export_Biochemistry.xls");
        echo $output;
    }

?>