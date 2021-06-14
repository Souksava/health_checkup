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
            <th style="width: 90px;">No.</th>
            <th style="width: 150px;">ບຣາໂຄດ</th>
            <th style="width: 250px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 450px;">ຊື່</th>
            <th style="width: 250px;">ນາມສະກຸນ</th>
            <th style="width: 450px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 350px;">ຕາຂວາ ສາຍຕາສັ້ນ</th>
            <th style="width: 300px;">ຕາຂວາ ສາຍຕາຍາວ</th>
            <th style="width: 300px;">ຕາຂວາ ສາຍຕາອຽງ</th>
            <th style="width: 150px;">ຕາຂວາ ຕາບອດສີ</th>
            <th style="width: 187px;">ສະຫຼູບຕາຂວາ</th>
            <th style="width: 350px;">ຕາຊ້າຍ ສາຍຕາສັ້ນ</th>
            <th style="width: 300px;">ຕາຊ້າຍ ສາຍຕາຍາວ</th>
            <th style="width: 300px;">ຕາຊ້າຍ ສາຍຕາອຽງ</th>
            <th style="width: 150px;">ຕາຊ້າຍ ຕາບອດສີ</th>
            <th style="width: 187px;">ສະຫຼູບຕາຊ້າຍ</th>
            <th style="width: 387px;">ສະຫຼຸບ</th>
            <th style="width: 350px;">ຄຳແນະນຳ</th>
            <th style="width: 387px;">ສະຫຼຸບພາສາອັງອິດ</th>
            <th style="width: 350px;">ຄຳແນະນຳພາສາອັງອິດ</th>
            <th style="width: 350px;">ຜູ້ນຳເຂົ້າຂໍ້ມູນ</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_test_vision('$company','$name','$year')");
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
                <td>'.$row["r_short"].'</td>
                <td>'.$row["r_long"].'</td>
                <td>'.$row["r_tited"].'</td>
                <td>'.$row["r_color"].'</td>
                <td>'.$row["r_conclusion"].'</td>
                <td>'.$row["l_short"].'</td>
                <td>'.$row["l_long"].'</td>
                <td>'.$row["r_tited"].'</td>
                <td>'.$row["l_color"].'</td>
                <td>'.$row["l_conclusion"].'</td>
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
        header("Content-Disposition:attachment; filename=export_test_vision.xls");
        echo $output;
    }

?>