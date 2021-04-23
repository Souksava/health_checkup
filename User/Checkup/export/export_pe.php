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
            <th style="width: 40px;">N0.</th>
            <th style="width: 180px;">Barcode</th>
            <th style="width: 120px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 200px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 150px;">ບໍລິສັດ</th>
            <th style="width: 70px;">ປີເຂົ້າກວດ</th>
            <th style="width: 300px;">History of Presenting illness</th>
            <th style="width: 300px;">Past Medical History illness</th>
            <th style="width: 100px;">Personal</th>
            <th style="width: 150px;">Family</th>
            <th style="width: 300px;">Alcohol, Smoking illness</th>
            <th style="width: 150px;">Height</th>
            <th style="width: 187px;">Weight</th>
            <th style="width: 150px;">BMI</th>
            <th style="width: 187px;">Blood Pressure</th>
            <th style="width: 187px;">Pulse</th>
            <th style="width: 150px;">ABO</th>
            <th style="width: 187px;">Eyes</th>
            <th style="width: 150px;">Teeth/Gum</th>
            <th style="width: 187px;">Ears/Nos/Throat</th>
            <th style="width: 150px;">Lymph Nodes</th>
            <th style="width: 187px;">Thyroid Gland</th>
            <th style="width: 150px;">Extremities</th>
            <th style="width: 187px;">Skin</th>
            <th style="width: 150px;">Heart</th>
            <th style="width: 187px;">Lung</th>
            <th style="width: 350px;">Abdomen/Liver/Spleen</th>
            <th style="width: 187px;">Other</th>
            <th style="width: 187px;">Breat</th>
            <th style="width: 150px;">Conclusion</th>
            <th style="width: 150px;">Remark</th>
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
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_physical.xls");
        echo $output;
    }

?>