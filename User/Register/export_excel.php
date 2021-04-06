<?php 
    if(isset($_POST['export_employee'])){
        $path = "../../";
        include ('../../oop/obj.php');
        $output = ' 
        <div class="table-responsive">
            <table class="table" border="1" style="width: 3500px;font-size: 18px;font-family: '."Phetsarath OT".';">
            <tr style="font-size: 18px;">
                <th style="width: 70px;">No.</th>
                <th style="width: 150px;">Barcode</th>
                <th style="width: 150px;">ລະຫັດພະນັກງານ</th>
                <th style="width: 250px;">ຊື່</th>
                <th style="width: 150px;">ນາມສະກຸນ</th>
                <th style="width: 80px;">ລຳດັບຄິວ</th>
                <th style="width: 80px;">ອາຍຸ</th>
                <th style="width: 300px;">ບໍລິສັດ</th>
                <th style="width: 100px;">Year</th>
                <th style="width: 160px;">ວັນທີລົງທະບຽນ</th>
                <th style="width: 100px;">ເວລາ</th>
            </tr>
        ';
        if(isset($_POST["register_company"]) || isset($_POST["register_search"]) || isset($_POST["register_date"]))
        {
           $obj->select_register("%".trim($_POST['register_company'])."%","%".trim($_POST['register_search'])."%","%".trim($_POST['register_date'])."%");
        }
        else
        {
           $obj->select_register("%%","%%","%%");
        }
        $no_ = 0;
        foreach($result_register as $row){
            $no_ += 1;
        $output .='
            <tr>
            <td>'.$no_.'</td>
            <td class="double_barcode">'.$row["barcode"].'</td>
            <td>'.$row["emp_id"].'</td>
            <td class="double_barcode">'.$row["emp_name"].'</td>
            <td class="double_barcode">'.$row["surname"].'</td>
            <td>'.$row["queue"].'</td>
            <td>'.$row["age"].'</td>
            <td>'.$row["company"].'</td>
            <td>'.$row["year"].'</td>
            ';
            if($row["date"] != null){
                $row["date"] = date("d/m/Y",strtotime($row["date"]));
            }
            else{
                $row["date"] = "";
            }
            $output .='
                <td>'.$row["date"].'</td>
                <td>'.$row["time"].'</td>
              
            </tr>  
        ';
        }
        $output .= '
        <tr style="color: red;">
            <td colspan="11" align="right"><h3>ລວມທັງໝົດ: '.$no_.' ລາຍການ</h3></td>
        </tr>';
        $output .= '</table>';
        header("Content-Type: application/xls");
        header("Content-Disposition:attachment; filename=Register.xls");
        echo $output;
    } 
   
?>