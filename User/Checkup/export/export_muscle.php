<?php
    if(isset($_POST['btnexport'])){
        $path = "../../../";
        include ('../../../oop/obj.php');
        $company = "%".$_POST["search_company"]."%";
        $name = "%".$_POST["search"]."%";
        $year = "%".$_POST["year2"]."%";
        $output = ' 
        <table class="table" border="1" style="width: 1500px;font-size: 18px;font-family: '."Phetsarath OT".';">
            <tr style="font-size: 18px;">
                <th style="width: 80px;">N0.</th>
                <th style="width: 150px;">Barcode</th>
                <th style="width: 200px;">ລະຫັດພະນັກງານ</th>
                <th style="width: 450px;">ຊື່</th>
                <th style="width: 350px;">ນາມສະກຸນ</th>
                <th style="width: 450px;">ບໍລິສັດ</th>
                <th style="width: 150px;">ປີເຂົ້າກວດ</th>
                <th style="width: 250px;">Muscle</th>
                <th style="width: 250px;">Conclusion</th>
                <th style="width: 450px;">Remark</th>
                <th style="width: 250px;">Muscle EN</th>
                <th style="width: 387px;">Conclusion EN</th>
                <th style="width: 250px;">Username</th>
            </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_muscle('$company','$name','$year')");
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
                <td>'.$row["muscle_name"].'</td>
                <td>'.$row["conclusion"].'</td>
                <td>'.$row["remark"].'</td>
                <td>'.$row["muscle_en"].'</td>
                <td>'.$row["conclusion_en"].'</td>
                <td>'.$row["user_name"].'</td>
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_Muscle.xls");
        echo $output;
    }

?>