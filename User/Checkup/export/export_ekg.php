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
                <th style="width: 200px;">ບຣາໂຄດ</th>
                <th style="width: 180px;">ລະຫັດພະນັກງານ</th>
                <th style="width: 350px;">ຊື່</th>
                <th style="width: 250px;">ນາມສະກຸນ</th>
                <th style="width: 350px;">ບໍລິສັດ</th>
                <th style="width: 100px;">ປີເຂົ້າກວດ</th>
                <th style="width: 250px;">EKG</th>
                <th style="width: 387px;">ສະຫຼຸບ</th>
                <th style="width: 350px;">ຄຳແນະນຳ</th>
                <th style="width: 387px;">ສະຫຼຸບພາສາອັງກິດ</th>
                <th style="width: 350px;">ຄຳແນະນຳພາສາອັງກິດ</th>
                <th style="width: 150px;">ຜູ້ນຳເຂົ້າຂໍ້ມູນ</th>
            </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_ekg('$company','$name','$year')");
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
            <td>'.$row["ekg_name"].'</td>
            <td>'.$row["conclusion"].'</td>
            <td>'.$row["remark"].'</td>   
            <td>'.$row["ekg_en"].'</td>
            <td>'.$row["conclusion_en"].'</td>
            <td>'.$row["user_name"].'</td>
            </tr>  
        ';
        }
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=export_EKG.xls");
        echo $output;
    }

?>