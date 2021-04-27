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
            <th style="width: 50px;">N0.</th>
            <th style="width: 150px;">Barcode</th>
            <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
            <th style="width: 350px;">ຊື່</th>
            <th style="width: 150px;">ນາມສະກຸນ</th>
            <th style="width: 250px;">ບໍລິສັດ</th>
            <th style="width: 150px;">ປີເຂົ້າກວດ</th>
            <th style="width: 287px;">AUD_SRR_500#</th>
            <th style="width: 250px;">AUD_SRR_1000#</th>
            <th style="width: 287px;">AUD_SRR_2000#</th>
            <th style="width: 250px;">AUD_SRR_3000#</th>
            <th style="width: 287px;">AUD_SRR_AVG#</th>
            <th style="width: 250px;">AUD_HRR_4000#</th>
            <th style="width: 287px;">AUD_HRR_6000#</th>
            <th style="width: 250px;">AUD_HRR_8000#</th>
            <th style="width: 287px;">AUD_HRR_AVG#</th>
            <th style="width: 250px;">AUD_SRL_500#</th>
            <th style="width: 287px;">AUD_SRL_1000#</th>
            <th style="width: 250px;">AUD_SRL_2000#</th>
            <th style="width: 287px;">AUD_SRL_3000#</th>
            <th style="width: 250px;">AUD_SRL_AVG#</th>
            <th style="width: 287px;">AUD_HRL_4000#</th>
            <th style="width: 250px;">AUD_HRL_6000#</th>
            <th style="width: 287px;">AUD_HRL_8000#</th>
            <th style="width: 250px;">AUD_HRL_AVG#</th>
            <th style="width: 287px;">Conclusion</th>
            <th style="width: 250px;">Remark</th>
            <th style="width: 387px;">Conclusion EN</th>
            <th style="width: 350px;">Remark EN</th>
            <th style="width: 350px;">Username</th>
        </tr> 
        ';
       $resultexport = mysqli_query($conn,"call select_audio('$company','$name','$year')");
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
                <td>'.$row["r_500"].'</td>
                <td>'.$row["r_1000"].'</td>
                <td>'.$row["r_2000"].'</td>
                <td>'.$row["r_3000"].'</td>
                <td>'.$row["r_l_avg"].'</td>
                <td>'.$row["r_4000"].'</td>
                <td>'.$row["r_6000"].'</td>
                <td>'.$row["r_8000"].'</td>
                <td>'.$row["r_h_avg"].'</td>
                <td>'.$row["l_500"].'</td>
                <td>'.$row["l_1000"].'</td>
                <td>'.$row["l_2000"].'</td>
                <td>'.$row["l_3000"].'</td>
                <td>'.$row["l_l_avg"].'</td>
                <td>'.$row["l_4000"].'</td>
                <td>'.$row["l_6000"].'</td>
                <td>'.$row["l_8000"].'</td>
                <td>'.$row["l_h_avg"].'</td>
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
        header("Content-Disposition:attachment; filename=export_Audio.xls");
        echo $output;
    }

?>