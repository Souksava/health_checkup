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
            <th style="width: 250px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 350px;">ຊື່</th>
            <th style="width: 250px;">ນາມສະກຸນ</th>
            <th style="width: 250px;">ບໍລິສັດ</th>
            <th style="width: 250px;">ປີເຂົ້າກວດ</th>
            <th style="width: 187px;">FREE T3</th>
            <th style="width: 150px;">FREE T4</th>
            <th style="width: 187px;">TSH</th>
            <th style="width: 150px;">T3</th>
            <th style="width: 187px;">T4</th>
            <th style="width: 250px;">Conclusion</th>
            <th style="width: 287px;">Remark</th>
            <th style="width: 87px;">Conclusion EN</th>
            <th style="width: 50px;">Remark EN</th>
            <th style="width: 50px;">Username</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_thryroid('$company','$name','$year')");
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
                <td>'.$row["free_t3"].'</td>
                <td>'.$row["free_t4"].'</td>
                <td>'.$row["tsh"].'</td>
                <td>'.$row["t3"].'</td>
                <td>'.$row["t4"].'</td>
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
        header("Content-Disposition:attachment; filename=export_Thryroid.xls");
        echo $output;
    }

?>