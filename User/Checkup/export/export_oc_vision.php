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
            <th style="width: 90px;">N0.</th>
            <th style="width: 250px;">Barcode</th>
            <th style="width: 250px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 450px;">ຊື່</th>
            <th style="width: 250px;">ນາມສະກຸນ</th>
            <th style="width: 450px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 387px;">ການເບິ່ງເຫັນໄລຍະໄກ</th>
            <th style="width: 350px;">ການເບິ່ງເຫັນໄລຍະໃກ້</th>
            <th style="width: 387px;">ການເບິ່ງແນວຕັ້ງ</th>
            <th style="width: 450px;">ກວດສອບສົມດຸນຂອງກ້າາມຊີ້ນຕາ</th>
            <th style="width: 487px;">ກວດສອບຄວາມສາມາດແຍກສີ</th>
            <th style="width: 250px;">ການກວລັດສະໝີ</th>
            <th style="width: 487px;">ສະຫຼຸບ</th>
            <th style="width: 450px;">ໝາຍເຫດ</th>
            <th style="width: 487px;">Conclusion EN</th>
            <th style="width: 450px;">Remark EN</th>
            <th style="width: 450px;">Username</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_oc_vision('$company','$name','$year')");
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
                <td>'.$row["look_far"].'</td>
                <td>'.$row["look_near"].'</td>
                <td>'.$row["look_up"].'</td>
                <td>'.$row["check_eye"].'</td>
                <td>'.$row["check_color"].'</td>
                <td>'.$row["radius"].'</td>
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
        header("Content-Disposition:attachment; filename=export_oc_vision.xls");
        echo $output;
    }

?>