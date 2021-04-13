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
            <th style="width: 50px;">N0.</th>
            <th style="width: 150px;">Barcode</th>
            <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 350px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 250px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 287px;">FVC(MEANS)</th>
            <th style="width: 250px;">FVC(PREDICT)</th>
            <th style="width: 287px;">FVC(%PREDICTS)</th>
            <th style="width: 250px;">FEV1(MEANS)</th>
            <th style="width: 287px;">FEV1(PREDICT)</th>
            <th style="width: 250px;">FEV1(%PREDICT)</th>
            <th style="width: 250px;">FEC1/FVC%</th>
            <th style="width: 187px;">Conclusion</th>
            <th style="width: 150px;">Remark</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_spiro('$company','$name','$year')");
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
                <td>'.$row["fvc_means"].'</td>
                <td>'.$row["fvc_predict"].'</td>
                <td>'.$row["fvc_predicts"].'</td>
                <td>'.$row["fevi_means"].'</td>
                <td>'.$row["fevi_predict"].'</td>
                <td>'.$row["fevi_predicts"].'</td>
                <td>'.$row["fevi_fvc"].'</td>
                <td>'.$row["conclusion"].'</td>
                <td>'.$row["remark"].'</td>
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_Spiro.xls");
        echo $output;
    }

?>