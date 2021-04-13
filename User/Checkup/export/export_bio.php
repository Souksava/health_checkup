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
            <th style="width: 87px;">N0.</th>
            <th style="width: 150px;">Barcode</th>
            <th style="width: 250px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 350px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 250px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 387px;">fasting Blood Sugar(FBS)</th>
            <th style="width: 250px;">Cholesterol(CHO)</th>
            <th style="width: 487px;">High-density lipoprotein(HDL-C)</th>
            <th style="width: 450px;">Low-density lipoprotein(LDL-C)</th>
            <th style="width: 387px;">Triglycerides(Trig)</th>
            <th style="width: 250px;">Uric acid(UA)</th>
            <th style="width: 187px;">Bun</th>
            <th style="width: 250px;">Creatinine</th>
            <th style="width: 187px;">SGOT</th>
            <th style="width: 150px;">SGPT</th>
            <th style="width: 287px;">Alk.Phosphatase</th>
            <th style="width: 150px;">GGT</th>
            <th style="width: 187px;">Conclusion</th>
            <th style="width: 150px;">Remark</th>
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
                <td>'.$row["conclusion"].'</td>
                <td>'.$row["remark"].'</td>
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_Biochemistry.xls");
        echo $output;
    }

?>