<?php
    if(isset($_POST['btnexport'])){
        $path = "../../../";
        include ('../../../oop/obj.php');
        $company = "%".$_POST["search_company"]."%";
        $name = "%".$_POST["search"]."%";
        $year = "%".$_POST["year2"]."%";
        $output = ' 
        <table class="table" border="1" style="width: 90000px;font-size: 18px;font-family: '."Phetsarath OT".';">
        <tr style="font-size: 18px;">
            <th style="width: 90px;">N0.</th>
            <th style="width: 180px;">Barcode</th>
            <th style="width: 220px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 400px;">ຊື່</th>
            <th style="width: 350px;">ນາມສະກຸນ</th>
            <th style="width: 450px;">ບໍລິສັດ</th>
            <th style="width: 170px;">ປີເຂົ້າກວດ</th>
            <th style="width: 470px;">History of Presenting illness</th>
            <th style="width: 470px;">Past Medical History illness</th>
            <th style="width: 287px;">Personal</th>
            <th style="width: 150px;">Family</th>
            <th style="width: 450px;">Alcohol, Smoking illness</th>
            <th style="width: 150px;">Height</th>
            <th style="width: 187px;">Weight</th>
            <th style="width: 150px;">BMI</th>
            <th style="width: 250px;">Blood Pressure</th>
            <th style="width: 100px;">Pulse</th>
            <th style="width: 150px;">ABO</th>
            <th style="width: 187px;">Eyes</th>
            <th style="width: 250px;">Teeth/Gum</th>
            <th style="width: 387px;">Ears/Nos/Throat</th>
            <th style="width: 250px;">Lymph Nodes</th>
            <th style="width: 287px;">Thyroid Gland</th>
            <th style="width: 250px;">Extremities</th>
            <th style="width: 187px;">Skin</th>
            <th style="width: 150px;">Heart</th>
            <th style="width: 187px;">Lung</th>
            <th style="width: 350px;">Abdomen/Liver/Spleen</th>
            <th style="width: 287px;">Other</th>
            <th style="width: 120px;">Breat</th>
            <th style="width: 450px;">Conclusion</th>
            <th style="width: 450px;">Remark</th>


            <th style="width: 570px;">History of Presenting illness EN</th>
            <th style="width: 570px;">Past Medical History illness EN</th>
            <th style="width: 287px;">Personal EN</th>
            <th style="width: 250px;">Family EN</th>
            <th style="width: 550px;">Alcohol, Smoking illness EN</th>
            <th style="width: 187px;">Eyes EN</th>
            <th style="width: 250px;">Teeth/Gum EN</th>
            <th style="width: 487px;">Ears/Nos/Throat EN</th>
            <th style="width: 250px;">Lymph Nodes EN</th>
            <th style="width: 387px;">Thyroid Gland EN</th>
            <th style="width: 350px;">Extremities EN</th>
            <th style="width: 187px;">Skin EN</th>
            <th style="width: 150px;">Heart EN</th>
            <th style="width: 187px;">Lung EN</th>
            <th style="width: 550px;">Abdomen/Liver/Spleen EN</th>
            <th style="width: 187px;">Other EN</th>
            <th style="width: 450px;">Conclusion EN</th>
            <th style="width: 450px;">Remark EN</th>
            <th style="width: 250px;">Username</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_pe('$company','$name','$year')");
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
                <td>'.$row["hpi"].'</td>
                <td>'.$row["pmhi"].'</td>
                <td>'.$row["personal"].'</td>
                <td>'.$row["family"].'</td>
                <td>'.$row["asi"].'</td>
                <td>'.$row["height"].'</td>
                <td>'.$row["weight"].'</td>
                <td>'.$row["bmi"].'</td>
                <td>'.$row["bp"].'</td>
                <td>'.$row["pulse"].'</td>
                <td>'.$row["abo"].'</td>
                <td>'.$row["eye"].'</td>
                <td>'.$row["teeth"].'</td>
                <td>'.$row["ears"].'</td>
                <td>'.$row["lymph"].'</td>
                <td>'.$row["thyroid"].'</td>
                <td>'.$row["extremities"].'</td>
                <td>'.$row["skin"].'</td>
                <td>'.$row["hear"].'</td>
                <td>'.$row["lung"].'</td>
                <td>'.$row["als"].'</td>
                <td>'.$row["other"].'</td>
                <td>'.$row["breat"].'</td>
                <td>'.$row["conclusion"].'</td>
                <td>'.$row["remark"].'</td>
        
        
                <td>'.$row["hpi_en"].'</td>
                <td>'.$row["pmhi_en"].'</td>
                <td>'.$row["personal_en"].'</td>
                <td>'.$row["family_en"].'</td>
                <td>'.$row["asi_en"].'</td>
                <td>'.$row["eye_en"].'</td>
                <td>'.$row["teeth_en"].'</td>
                <td>'.$row["ears_en"].'</td>
                <td>'.$row["lymph_en"].'</td>
                <td>'.$row["thryroid_en"].'</td>
                <td>'.$row["extremities_en"].'</td>
                <td>'.$row["skin_en"].'</td>
                <td>'.$row["hear_en"].'</td>
                <td>'.$row["lung_en"].'</td>
                <td>'.$row["als_en"].'</td>
                <td>'.$row["other_en"].'</td>
                <td>'.$row["conclusion_en"].'</td>
                <td>'.$row["remark_en"].'</td>
                <td>'.$row["user_name"].'</td>
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_physical.xls");
        echo $output;
    }

?>