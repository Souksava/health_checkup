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
                <th style="width: 90px;">N0.</th>
                <th style="width: 180px;">Barcode</th>
                <th style="width: 220px;">ລະຫັດພະນັກງານ</th>
                <th style="width: 400px;">ຊື່</th>
                <th style="width: 250px;">ນາມສະກຸນ</th>
                <th style="width: 350px;">ບໍລິສັດ</th>
                <th style="width: 170px;">ປີເຂົ້າກວດ</th>
                <th style="width: 287px;">Anti HAV-lgM</th>
                <th style="width: 250px;">HBsAB</th>
                <th style="width: 287px;">HBsAg</th>
                <th style="width: 250px;">Anti-HCV</th>
                <th style="width: 287px;">VDRL</th>
                <th style="width: 250px;">HIV</th>
                <th style="width: 187px;">Hpylori</th>
                <th style="width: 150px;">PAP Smear</th>
                <th style="width: 187px;">Calcium</th>
                <th style="width: 150px;">Phosphorus</th>
                <th style="width: 450px;">Conclusion</th>
                <th style="width: 150px;">Remark</th>
                <th style="width: 487px;">Conclusion EN</th>
                <th style="width: 450px;">Remark EN</th>
                <th style="width: 450px;">Username</th>
            
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
                <td>'.$row["hpylori"].'</td>
                <td>'.$row["pap"].'</td>
                <td>'.$row["calcium"].'</td>
                <td>'.$row["phosphorus"].'</td>
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
        header("Content-Disposition:attachment; filename=export_Immunity.xls");
        echo $output;
    }

?>