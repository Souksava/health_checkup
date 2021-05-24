<?php
public static function import_cbc($file_path,$year,$user_id){
    global $conn;
    // $objPHPExcel = PHPExcel_IOFactory::load($file_path);
    // foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
    //     $highestRow = $worksheet->getHighestRow(0);
    $objReader = PHPExcel_IOFactory::createReader(PHPExcel_IOFactory::identify($file_path));
    $objReader->setReadDataOnly(true);
    $objPHPExcel = $objReader->load($file_path);    
    $sheet = $objPHPExcel->getSheet(0); 
    $highestRow = $sheet->getHighestRow();
        for($row=2; $row<=$highestRow;$row++){
                $barcode = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(1, $row)->getValue());
                $hb = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(2, $row)->getValue());
                $hct = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(3, $row)->getValue());
                $wbc = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(4, $row)->getValue());
                $ne = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(5, $row)->getValue());
                $lym = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(6, $row)->getValue());
                $mono = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(7, $row)->getValue());
                $eo = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(8, $row)->getValue());
                $baso = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(9, $row)->getValue());
                $plate = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(10, $row)->getValue());
                $rbc = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(11, $row)->getValue());
                $mcv = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(12, $row)->getValue());
                $mch = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(13, $row)->getValue());
                $mchc = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(14, $row)->getValue());
                $red_blood = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(15, $row)->getValue());
                $conclusions = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(16, $row)->getValue());
                $remark = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(17, $row)->getValue());
                $conclusions_en = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(18, $row)->getValue());
                $remark_en = mysqli_real_escape_string($conn, $sheet->getCellByColumnAndRow(19, $row)->getValue());
                $result = mysqli_query($conn,"call insert_cbc('$barcode','$year','$hb','$hct','$wbc','$ne','$lym','$mono','$eo','$baso','$plate','$rbc','$mcv','$mch','$mchc','$red_blood','$conclusions','$remark','$conclusions_en','$remark_en','$user_id')");
                mysqli_free_result($result);  
                mysqli_next_result($conn);
                mysqli_query($conn,"update checkup_status set cbc='1' where barcode='$barcode' and year='$year'");
        }






        $sheet_bio = $objPHPExcel->getSheet(1); 
        $highestRow_bio = $sheet_bio->getHighestRow();
        for($row=2; $row<=$highestRow_bio;$row++){
            $barcode = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(1, $row)->getValue());
            $fbs = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(2, $row)->getValue());
            $cho = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(3, $row)->getValue());
            $hdl = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(4, $row)->getValue());
            $ldl = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(5, $row)->getValue());
            $trig = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(6, $row)->getValue());
            $ua = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(7, $row)->getValue());
            $bun = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(8, $row)->getValue());
            $creat = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(9, $row)->getValue());
            $sgot = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(10, $row)->getValue());
            $sgpt = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(11, $row)->getValue());
            $alk = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(12, $row)->getValue());
            $ggt = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(13, $row)->getValue());
            $hba1c = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(14, $row)->getValue());
            $conclusions = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(15, $row)->getValue());
            $remark = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(16, $row)->getValue());
            $conclusions_en = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(17, $row)->getValue());
            $remark_en = mysqli_real_escape_string($conn, $sheet_bio->getCellByColumnAndRow(18, $row)->getValue());
            $result = mysqli_query($conn,"call insert_biochemistry('$barcode','$year','$fbs','$cho','$hdl','$ldl','$trig','$ua','$bun','$creat','$sgot','$sgpt','$alk','$ggt','$hba1c','$conclusions','$remark','$conclusions_en','$remark_en','$user_id')");
            mysqli_free_result($result);  
            mysqli_next_result($conn);
        }
    // }
    echo"<script>";
    echo"window.location.href='Cbc?import=success';";
    echo"</script>";
?>