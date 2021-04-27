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
            <th style="width: 150px;">Barcode</th>
            <th style="width: 250px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 450px;">ຊື່</th>
            <th style="width: 250px;">ນາມສະກຸນ</th>
            <th style="width: 350px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 387px;">Color/Appeamce</th>
            <th style="width: 350px;">Stool Appearance</th>
            <th style="width: 350px;">StoolWBC</th>
            <th style="width: 287px;">StoolRBC</th>
            <th style="width: 250px;">Parasite</th>
            <th style="width: 287px;">Samonella Spp</th>
            <th style="width: 250px;">Shigella Spp</th>
            <th style="width: 287px;">Vivrio Spp</th>
            <th style="width: 450px;">Vibrio Cholera 01</th>
            <th style="width: 187px;">Conclusion</th>
            <th style="width: 150px;">Remark</th>
            <th style="width: 487px;">Conclusion EN</th>
            <th style="width: 450px;">Remark EN</th>
            <th style="width: 250px;">Username</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_se('$company','$name','$year')");
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
                <td>'.$row["stool_ap"].'</td>
                <td>'.$row["wbc"].'</td>
                <td>'.$row["rbc"].'</td>
                <td>'.$row["parasite"].'</td>
                <td>'.$row["samonella"].'</td>
                <td>'.$row["shigella"].'</td>
                <td>'.$row["vivrio"].'</td>
                <td>'.$row["vibrio"].'</td>
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
        header("Content-Disposition:attachment; filename=export_Stool_Exam.xls");
        echo $output;
    }

?>