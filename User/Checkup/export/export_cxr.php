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
            <th style="width: 40px;">N0.</th>
            <th style="width: 80px;">Barcode</th>
            <th style="width: 120px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 200px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 150px;">ບໍລິສັດ</th>
            <th style="width: 70px;">ປີເຂົ້າກວດ</th>
            <th style="width: 87px;">Anti HAV-lgM</th>
            <th style="width: 50px;">HBsAB</th>
            <th style="width: 87px;">HBsAg</th>
            <th style="width: 50px;">Anti-HCV</th>
            <th style="width: 87px;">VDRL</th>
            <th style="width: 50px;">HIV</th>
            <th style="width: 150px;">Conclusion</th>
            <th style="width: 150px;">Remark</th>
            </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_Immunity('$company','$name','$year')");
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
            <td>'.$row["anti_hav"].'</td>
            <td>'.$row["ab"].'</td>
            <td>'.$row["ag"].'</td>
            <td>'.$row["hcv"].'</td>
            <td>'.$row["vdrl"].'</td>
            <td>'.$row["hiv"].'</td>
            <td>'.$row["conclusion"].'</td>
            <td>'.$row["remark"].'</td>     
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_Immunity.xls");
        echo $output;
    }

?>