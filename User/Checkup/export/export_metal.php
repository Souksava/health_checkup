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
            <th style="width: 87px;">N0.</th>
            <th style="width: 150px;">Barcode</th>
            <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 350px;">ຊື່</th>
            <th style="width: 250px;">ນາມສະກຸນ</th>
            <th style="width: 350px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 187px;">Ether</th>
            <th style="width: 387px;">Ethyl Ethanoate</th>
            <th style="width: 387px;">Nickle in Blood</th>
            <th style="width: 387px;">Manganese in Blood</th>
            <th style="width: 387px;">Tin in Blood</th>
            <th style="width: 387px;">Mercury in Blood</th>
            <th style="width: 350px;">Mercury in Urine</th>
            <th style="width: 487px;">Butoxyacetic Acid in Urine</th>
            <th style="width: 350px;">Chromiun in Urine</th>
            <th style="width: 387px;">Iso Propyl Alcoho</th>
            <th style="width: 350px;">Silica</th>
            <th style="width: 550px;">Methy Hippuric acid in Urine</th>
            <th style="width: 250px;">Acetone in Urine</th>
            <th style="width: 287px;">Toluene in Urine</th>
            <th style="width: 550px;">Methyl lsobutyl Ketone in Urine</th>
            <th style="width: 287px;">Methanoi in Urine</th>
            <th style="width: 350px;">Phenolic Resin</th>
            <th style="width: 487px;">Conclusion</th>
            <th style="width: 450px;">Remark</th>
            <th style="width: 487px;">Conclusion EN</th>
            <th style="width: 450px;">Remark EN</th>
            <th style="width: 250px;">Username</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_heavy_metal('$company','$name','$year')");
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
                <td>'.$row["ether"].'</td>
                <td>'.$row["ethy"].'</td>
                <td>'.$row["nickle"].'</td>
                <td>'.$row["manganese"].'</td>
                <td>'.$row["tim"].'</td>
                <td>'.$row["blood"].'</td>
                <td>'.$row["m_i_urine"].'</td>
                <td>'.$row["b_a_u"].'</td>
                <td>'.$row["c_u"].'</td>
                <td>'.$row["alcoho"].'</td>
                <td>'.$row["silica"].'</td>
                <td>'.$row["methy"].'</td>
                <td>'.$row["a_i_urine"].'</td>
                <td>'.$row["t_i_urine"].'</td>
                <td>'.$row["methy_urine"].'</td>
                <td>'.$row["methanoi_urine"].'</td>
                <td>'.$row["phenolic_resin"].'</td>
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
        header("Content-Disposition:attachment; filename=export_Heavy_metal.xls");
        echo $output;
    }

?>