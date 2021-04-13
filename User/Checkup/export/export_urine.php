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
            <th style="width: 87px;">No.</th>
            <th style="width: 150px;">Barcode</th>
            <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 350px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 250px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 187px;">Color</th>
            <th style="width: 250px;">Appearance</th>
            <th style="width: 187px;">pH</th>
            <th style="width: 250px;">Specific Gravity</th>
            <th style="width: 187px;">Protein</th>
            <th style="width: 150px;">Sugar</th>
            <th style="width: 187px;">Ketone</th>
            <th style="width: 150px;">Blood</th>
            <th style="width: 187px;">WBC/Hpf</th>
            <th style="width: 150px;">RBC/Hpf</th>
            <th style="width: 287px;">Epithelium/Hpf</th>
            <th style="width: 150px;">Conclusion</th>
            <th style="width: 187px;">Remark</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_urine('$company','$name','$year')");
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
                <td>'.$row["color"].'</td>
                <td>'.$row["appearance"].'</td>
                <td>'.$row["ph"].'</td>
                <td>'.$row["specifics"].'</td>
                <td>'.$row["protein"].'</td>
                <td>'.$row["sugar"].'</td>
                <td>'.$row["ketone"].'</td>
                <td>'.$row["blood"].'</td>
                <td>'.$row["wbc"].'</td>
                <td>'.$row["rbc"].'</td>
                <td>'.$row["epit"].'</td>
                <td>'.$row["conclusion"].'</td>
                <td>'.$row["remark"].'</td>       
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_Urine.xls");
        echo $output;
    }

?>