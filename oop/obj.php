<?php
 include ('connect.php');
include('barcode/src/BarcodeGenerator.php');
include('barcode/src/BarcodeGeneratorSVG.php');
include('barcode/src/BarcodeGeneratorPNG.php');
include('barcode/src/BarcodeGeneratorJPG.php');
include('barcode/src/BarcodeGeneratorHTML.php');
include (''.$path.'/PHPExcel/Classes/PHPExcel.php');
include (''.$path.'PHPExcel/Classes/PHPExcel/IOFactory.php');
date_default_timezone_set("Asia/Bangkok");
$datenow = time();
$Date = date("Y-m-d",$datenow);
$Year = date("Y",$datenow);
$Date_barcode = date("dmy",$datenow);
$Time = date("H:i:s",$datenow);
$border = 5;//กำหนดความหน้าของเส้น Barcode
$height = 80;//กำหนดความสูงของ Barcode
class obj{
    public $conn;
    public $search;
    public static function insert_employee($barcode,$emp_id,$emp_name,$surname,$dob,$age,$gender,$company,$branch,$department,$tel,$family_stt,$nation,$ethnnic,$religion,$job,$house_no,$village,$district,$province){//Insert Employee                                 
        global $conn;
        global $border;
        global $height;
        $result = mysqli_query($conn,"call insert_employee('$barcode','$emp_id','$emp_name','$surname','$dob','$age','$gender','$company','$branch','$department','$tel','$family_stt','$nation','$ethnnic','$religion','$job','$house_no','$village','$district','$province');");
        if(!$result){ //ກວດສອບການບັນທຶກຂໍ້ມູນຖ້າເກີດຂໍ້ຜິດພາດໃຫ້ມາເຮັດວຽກຢູ່ນີ້
            echo"<script>";
            echo"window.location.href='Employee?save=fail';";
            echo"</script>";
        }
        else{//ກວດສອບການບັນທຶກຂໍ້ມູນຖ້າບໍ່ມີຂໍ້ຜິດພາດໃຫ້ມາເຮັດວຽກຢູ່ນີ້
            $generatorJPG = new Picqer\Barcode\BarcodeGeneratorJPG();
            file_put_contents('barcode/'.$barcode.'.jpg', $generatorJPG->getBarcode(''.$barcode.'', $generatorJPG::TYPE_CODE_128,$border,$height));
            echo"<script>";
            echo"window.location.href='Employee?save2=success';";
            echo"</script>";
        }
    }  
    public static function update_employee($barcode,$emp_id,$emp_name,$surname,$dob,$age,$gender,$company,$branch,$department,$tel,$family_stt,$nation,$ethnnic,$religion,$job,$house_no,$village,$district,$province,$emp_name_en,$surname_en,$village_en,$district_en,$province_en){//Insert Employee                                 
        global $conn;
        $result = mysqli_query($conn,"call update_employee('$barcode','$emp_id','$emp_name','$surname','$dob','$age','$gender','$company','$branch','$department','$tel','$family_stt','$nation','$ethnnic','$religion','$job','$house_no','$village','$district','$province','$emp_name_en','$surname_en','$village_en','$district_en','$province_en');");
        if(!$result){ //ກວດສອບການບັນທຶກຂໍ້ມູນຖ້າເກີດຂໍ້ຜິດພາດໃຫ້ມາເຮັດວຽກຢູ່ນີ້
            echo"<script>";
            echo"window.location.href='Employee?update=fail';";
            echo"</script>";
        }
        else{//ກວດສອບການບັນທຶກຂໍ້ມູນຖ້າບໍ່ມີຂໍ້ຜິດພາດໃຫ້ມາເຮັດວຽກຢູ່ນີ້
            echo"<script>";
            echo"window.location.href='Employee?update2=success';";
            echo"</script>";
        }
    }  
    public static function import_emp($file_path,$com_id){
        global $conn;
        global $Date_barcode;
        global $border;
        global $height;
        global $path;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){

                    $emp_id = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $emp_name = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $surname = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $dob = \PHPExcel_Style_NumberFormat::toFormattedString(mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue()),'YYYY-MM-DD');
                    $age = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $gender = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    // $company = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $branch = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $department = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $tel = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $family_stt = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                    $nation = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
                    $ethnic = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
                    $religion = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
                    $job = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(15, $row)->getValue());
                    $house_no = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(16, $row)->getValue());
                    $village = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(17, $row)->getValue());
                    $district = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(18, $row)->getValue());
                    $province = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(19, $row)->getValue());
                    $barcode = "";
                    $get_barcode = mysqli_query($conn,"call max_barcode_emp();");
                    if(mysqli_num_rows($get_barcode) > 0){
                        $max = mysqli_fetch_array($get_barcode,MYSQLI_ASSOC);
                        $no_ = (int)$max['barcode']+1;
                        $new_max = sprintf("%05s",$no_);
                        $barcode = "1".$Date_barcode.$new_max; 
                    }
                    else{
                        $barcode = "1".$Date_barcode."00001"; 
                    }
                    mysqli_free_result($get_barcode);  
                    mysqli_next_result($conn);
                    $result = mysqli_query($conn,"call insert_employee('$barcode','$emp_id','$emp_name','$surname','$dob','$age','$gender','$com_id','$branch','$department','$tel','$family_stt','$nation','$ethnic','$religion','$job','$house_no','$village','$district','$province')");
                    $generatorJPG = new Picqer\Barcode\BarcodeGeneratorJPG();
                    file_put_contents('barcode/'.$barcode.'.jpg', $generatorJPG->getBarcode(''.$barcode.'', $generatorJPG::TYPE_CODE_128,$border,$height));
            }
        }
        echo"<script>";
        echo"window.location.href='Employee?import=success';";
        echo"</script>";
    }
    public static function import_package($file_path){
        global $conn;
        global $path;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $pack_name = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $pack_id = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_package('$pack_id','$pack_name');");
            }
        }
        echo"<script>";
        echo"window.location.href='Package?Package=success';";
        echo"</script>";
    }
    public static function select_employee_limit($company,$search,$page){
        global $conn;
        global $result_emp;
        $result_emp = mysqli_query($conn,"call select_employee_limit('$company','$search','$page');");
    }
    public static function count_emp($company,$search){
        global $conn;
        global $resultemp_count;
        $resultemp_count = mysqli_query($conn,"call select_employee('$company','$search');");
    }
    public static function export_emp($company,$search){
        global $conn;
        global $resultexport_emp;
        $resultexport_emp = mysqli_query($conn,"call export_emp('$company','$search');");
    }
    public static function delete_emp($id){
        global $conn;
        // $check_del_emp = mysqli_query($conn,"call check_del_emp('$id');");
        $check_del_emp = mysqli_query($conn,"select * from register where barcode='$id'");
        if(mysqli_num_rows($check_del_emp) > 0){
            echo"<script>";
            echo"window.location.href='Employee?register=true';";
            echo"</script>";
        }
        else{
            // mysqli_free_result($check_del_emp);  
            // mysqli_next_result($conn);
            $result = mysqli_query($conn,"call delete_emp('$id');");
            // $result = mysqli_query($conn,"delete from employee where barcode='$id'");
            if(!$result){
                echo"<script>";
                echo"window.location.href='Employee?del=fail';";
                echo"</script>";
            }
            else{
                echo"<script>";
                echo"window.location.href='Employee?del2=success';";
                echo"</script>";
            }
        }
    }
    public static function select_package_limit($search,$page){
        global $conn;
        global $resultPackage_limit;
        $resultPackage_limit = mysqli_query($conn,"call select_package_limit('$search','$page');");
    }
    public static function select_package($search){
        global $conn;
        global $result_package_count;
        $result_package_count = mysqli_query($conn,"call select_package('$search');");
    }
    public static function del_package($id){
        global $conn;
        // $check_del_package = mysqli_query($conn,"call check_del_package('$id');");
        $check_del_package = mysqli_query($conn,"select * from registerdetail where pack_id='$id';");
        // mysqli_free_result($check_del_package);  
        // mysqli_next_result($conn);
        if(mysqli_num_rows($check_del_package) > 0){
            echo"<script>";
            echo"window.location.href='Package?package=true';";
            echo"</script>";
        }
        else{
            $result = mysqli_query($conn,"call del_package('$id');");
            if(!$result){
                echo"<script>";
                echo"window.location.href='Package?del=fail';";
                echo"</script>";
            }
            else{
                echo"<script>";
                echo"window.location.href='Package?del2=success';";
                echo"</script>";
            }
        }
    }
    public static function select_package_list(){
        global $cart_data_package_list;
        if(isset($_COOKIE['package_list'])){//ຕອນໂຫຼດກວດສອບວ່າຄຸກກີ້ມີຄ່າວ່າງຫຼືບໍ່
            $cookie_data = $_COOKIE['package_list'];//ຕັ້ງຄຸກກີ້ໃຫ້ເປັນ string
            $cart_data_package_list = json_decode($cookie_data, true);// ຕັ້ງຄຸກກີ້ໃຫ້ເປັນຮູບແບບ json
        }
    }
    public static function cookie_list($pack_id,$pack_name){
        if(isset($_COOKIE['package_list'])){//ກວດສອບວ່າຄຸກກີ້ stock_list ນັ້ນມີຄ່າຫຼືບໍ່
            $cookie_data = $_COOKIE['package_list'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
            $cart_data = json_decode($cookie_data, true);//Decode ຄ່າຄຸກກີ້ອອກມາໃຫ້ອ່ານຄ່າເປັນ Array ໄດ້ໃນຮູບແບບ json
        }
        else{
            $cart_data = array();//ຖ້າຄຸກກີ້ບໍ່ມີຄ່າຂໍ້ມູນແລ້ວຕັ້ງໂຕປ່ຽນໃຫ້ເປັນອາເລ
        }
        if(isset($_COOKIE['package_more'])){//ກວດສອບວ່າຄຸກກີ້ package_list ນັ້ນມີຄ່າຫຼືບໍ່
            $cookie_data2 = $_COOKIE['package_more'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
            $cart_data2 = json_decode($cookie_data2, true);//Decode ຄ່າຄຸກກີ້ອອກມາໃຫ້ອ່ານຄ່າເປັນ Array ໄດ້ໃນຮູບແບບ json
        }
        $item_id_list2 = array_column($cart_data2,'pack_id');
        $item_id_list = array_column($cart_data,'pack_id');//ຕັ້ງຄ່າ pack_id_list ໃຫ້ມີຄ່າເທົ່າກັບ array $cart_data['pack_id']
        if(in_array($pack_id,$item_id_list)){//ຖ້າວ່າ Serial ທີ່ປ້ອນມາທາງຄີບອດຕົງກັນກັບ Serial ທີ່ຢູ່ໃນ Array Cart_data ໃຫ້ເຮັດວຽກຈຸດນີ້
            echo"<script>";
            echo"window.location.href='register?list=same';";
            echo"</script>";
        }
        else if(in_array($pack_id,$item_id_list2)){//ຖ້າວ່າ Serial ທີ່ປ້ອນມາທາງຄີບອດຕົງກັນກັບ Serial ທີ່ຢູ່ໃນ Array Cart_data ໃຫ້ເຮັດວຽກຈຸດນີ້
            echo"<script>";
            echo"window.location.href='register?addmore=same';";
            echo"</script>";
        }
        else{
            $item_array = [//ເພີ່ມຂໍ້ມູນທີ່ຮັບມາຈາກຄີບອດເຂົ້າໄວ້ໃນຕົວປ່ຽນອາເລ $item_array
                "pack_id" => $pack_id,
                "pack_name" => $pack_name,
            ];
            $cart_data[] = $item_array;//ເພີ່ມຂໍ້ມູນຈາກ $item_array ເຂົ້າໄປໃນ $cart_data
        }
        $item_data ="";
        $item_data = json_encode($cart_data);//ປັບ item_data ໃຫ້ມັນສິ້ນສຸດການຮັບຂໍ້ມູນຈາກ $cart_data
        setcookie('package_list',$item_data,time() + (86400 * 30));//ຕັ້ງຄ່າເວລາຄຸກກີ້
        echo"<script>";
        echo"window.location.href='register';";
        echo"</script>";
    }
    public static function select_package_more(){
        global $cart_data_package_more;
        if(isset($_COOKIE['package_more'])){//ຕອນໂຫຼດກວດສອບວ່າຄຸກກີ້ມີຄ່າວ່າງຫຼືບໍ່
            $cookie_data = $_COOKIE['package_more'];//ຕັ້ງຄຸກກີ້ໃຫ້ເປັນ string
            $cart_data_package_more = json_decode($cookie_data, true);// ຕັ້ງຄຸກກີ້ໃຫ້ເປັນຮູບແບບ json
        }
    }
    public static function cookie_more($pack_id,$pack_name){
            if(isset($_COOKIE['package_more'])){//ກວດສອບວ່າຄຸກກີ້ stock_list ນັ້ນມີຄ່າຫຼືບໍ່
                $cookie_data = $_COOKIE['package_more'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
                $cart_data = json_decode($cookie_data, true);//Decode ຄ່າຄຸກກີ້ອອກມາໃຫ້ອ່ານຄ່າເປັນ Array ໄດ້ໃນຮູບແບບ json
            }
            else{
                $cart_data = array();//ຖ້າຄຸກກີ້ບໍ່ມີຄ່າຂໍ້ມູນແລ້ວຕັ້ງໂຕປ່ຽນໃຫ້ເປັນອາເລ
            }
            if(isset($_COOKIE['package_list'])){//ກວດສອບວ່າຄຸກກີ້ package_list ນັ້ນມີຄ່າຫຼືບໍ່
                $cookie_data2 = $_COOKIE['package_list'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
                $cart_data2 = json_decode($cookie_data2, true);//Decode ຄ່າຄຸກກີ້ອອກມາໃຫ້ອ່ານຄ່າເປັນ Array ໄດ້ໃນຮູບແບບ json
                $item_id_list2 = array_column($cart_data2,'pack_id');
                // $check = in_array($pack_id,$item_id_list2);
            }
        
            $item_id_list = array_column($cart_data,'pack_id');//ຕັ້ງຄ່າ pack_id_list ໃຫ້ມີຄ່າເທົ່າກັບ array $cart_data['pack_id']
            if(in_array($pack_id,$item_id_list)){//ຖ້າວ່າ Serial ທີ່ປ້ອນມາທາງຄີບອດຕົງກັນກັບ Serial ທີ່ຢູ່ໃນ Array Cart_data ໃຫ້ເຮັດວຽກຈຸດນີ້
                echo"<script>";
                echo"window.location.href='register?addmore=same';";
                echo"</script>";
            }
            else if(in_array($pack_id,$item_id_list2)){//ຖ້າວ່າ Serial ທີ່ປ້ອນມາທາງຄີບອດຕົງກັນກັບ Serial ທີ່ຢູ່ໃນ Array Cart_data ໃຫ້ເຮັດວຽກຈຸດນີ້
                echo"<script>";
                echo"window.location.href='register?list=same';";
                echo"</script>";
            }
            else{
                $item_array = [//ເພີ່ມຂໍ້ມູນທີ່ຮັບມາຈາກຄີບອດເຂົ້າໄວ້ໃນຕົວປ່ຽນອາເລ $item_array
                    "pack_id" => $pack_id,
                    "pack_name" => $pack_name,
                ];
                $cart_data[] = $item_array;//ເພີ່ມຂໍ້ມູນຈາກ $item_array ເຂົ້າໄປໃນ $cart_data
            }
            $item_data ="";
            $item_data = json_encode($cart_data);//ປັບ item_data ໃຫ້ມັນສິ້ນສຸດການຮັບຂໍ້ມູນຈາກ $cart_data
            setcookie('package_more',$item_data,time() + (86400 * 30));//ຕັ້ງຄ່າເວລາຄຸກກີ້
            echo"<script>";
            echo"window.location.href='register';";
            echo"</script>";
    }
    public static function clear_list(){
        setcookie("package_list","",time() - 3600);//ຕັ້ງຄ່າໃຫ້ຄຸກກີ້ໃຫ້ເປັນຄ່າວ່າງ
        echo"<script>";
        echo"window.location.href='register';";
        echo"</script>";
    }
    public static function clear_more(){
        setcookie("package_more","",time() - 3600);//ຕັ້ງຄ່າໃຫ້ຄຸກກີ້ໃຫ້ເປັນຄ່າວ່າງ
        echo"<script>";
        echo"window.location.href='register';";
        echo"</script>";
    }
    public static function del_list($id){
        $cookie_data = $_COOKIE['package_list'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
        $cart_data = json_decode($cookie_data, true);//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນອາເລໃນຮູບແບບ json
        foreach($cart_data as $keys => $values){//ຊອກຫາຄ່າໄອດີຢູ່ໃນອາເລ
            if($cart_data[$keys]['pack_id'] == $id){//ຖ້າໄອດີຕົງກັນໃຫ້ລົບຂໍ້ມູນ
                unset($cart_data[$keys]);//ລົບຂໍ້ມູນຢູ່ຄຸກກີ້ໝົດແຖວທີ່ມີໄອດີຕົງກັນ
                $item_data = json_encode($cart_data);//ໃຫ້ຈົບການສ້າງອາເລໃນຮູບແບບ json
                setcookie('package_list',$item_data,time() + (86400 * 30));//ຕັ້ງເວລາຄຸກກີ້
                foreach($cart_data as $keys => $values){}
                if(!$cart_data[$keys]){
                    setcookie("package_list","",time() - 3600);//ຕັ້ງຄ່າໃຫ້ຄຸກກີ້ໃຫ້ເປັນຄ່າວ່າງ
                }
                echo"<script>";
                echo"window.location.href='register';";
                echo"</script>";
            }
        }
    }
    public static function del_more($id){
        $cookie_data = $_COOKIE['package_more'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
        $cart_data = json_decode($cookie_data, true);//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນອາເລໃນຮູບແບບ json
        foreach($cart_data as $keys => $values){//ຊອກຫາຄ່າໄອດີຢູ່ໃນອາເລ
            if($cart_data[$keys]['pack_id'] == $id){//ຖ້າໄອດີຕົງກັນໃຫ້ລົບຂໍ້ມູນ
                unset($cart_data[$keys]);//ລົບຂໍ້ມູນຢູ່ຄຸກກີ້ໝົດແຖວທີ່ມີໄອດີຕົງກັນ
                $item_data = json_encode($cart_data);//ໃຫ້ຈົບການສ້າງອາເລໃນຮູບແບບ json
                setcookie('package_more',$item_data,time() + (86400 * 30));//ຕັ້ງເວລາຄຸກກີ້
                foreach($cart_data as $keys => $values){}
                if(!$cart_data[$keys]){
                    setcookie("package_more","",time() - 3600);//ຕັ້ງຄ່າໃຫ້ຄຸກກີ້ໃຫ້ເປັນຄ່າວ່າງ
                }
                echo"<script>";
                echo"window.location.href='register';";
                echo"</script>";
            }
        }
    }
    public static function get_queue(){
        global $Date;
        global $conn;
        global $queue;
        $result = mysqli_query($conn,"call get_queue('$Date');");
        if(mysqli_num_rows($result) > 0){
            $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
            $queue = $row['queue'] + 1;
        }
        else{
            $queue = 1;
        }
        mysqli_free_result($result);  
        mysqli_next_result($conn);
    }
    public static function get_reg(){
        global $conn;
        global $reg_id;
        $reg_id = "";
        $result_reg = mysqli_query($conn,"call get_reg;");
        if(mysqli_num_rows($result_reg) > 0){
            $row_reg = mysqli_fetch_array($result_reg, MYSQLI_ASSOC);
            $reg_id = $row_reg['reg_id'] + 1;
        }
        else{
            $reg_id = 1;
        }
        mysqli_free_result($result_reg);  
        mysqli_next_result($conn);

    }
    public static function new_register($reg_id,$queue,$barcode,$pack_id,$packmore){
        global $conn;
        global $Year;
        global $Date;
        global $Time;
        $ch = 0;
        $ch2 = 0;
        $check_barcode = mysqli_query($conn,"select * from register where barcode='$barcode' and year='$Year';");
        if(mysqli_num_rows($check_barcode) > 0){
            echo"<script>";
            echo"window.location.href='Employee?barcode=registed';";
            echo"</script>";
        }
        else{
            $register = mysqli_query($conn,"call insert_register('$reg_id','$barcode','$Time','$queue','$Year','$Date')");
            if(!$register){
                echo"<script>";
                echo"window.location.href='Employee?regis=fail';";
                echo"</script>";
            }
            else{
                foreach($pack_id as $pack_ids){
                    $registerdetail = mysqli_query($conn,"call insert_registerdetail('$reg_id','$pack_ids');");
                    // mysqli_free_result($registerdetail);  
                    // mysqli_next_result($conn);
                    if(!$registerdetail){
                        echo"<script>";
                        echo"window.location.href='Employee?sticker=fail&&package=$pack_ids';";
                        echo"</script>";
                        break;
                        $ch = 1;
                    }
                }
                if($ch == 0){
                    if(empty($packmore)){
                        $insert_status = mysqli_query($conn,"insert into checkup_status(barcode,year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt) values('$barcode','$Year','0','0','0','0','0','0','0','0','0','0','0','0','0','0')");
                        echo"<script>";
                        echo"window.location.href='Barcodes?register=$reg_id&&barcode=$barcode';";
                        echo"</script>";
                    }
                    else{
                        foreach($packmore as $packmores){
                            $registerdetail2 = mysqli_query($conn,"call insert_registerdetail('$reg_id','$packmores');");
                            // mysqli_free_result($registerdetail);  
                            // mysqli_next_result($conn);
                            if(!$registerdetail2){
                                echo"<script>";
                                echo"window.location.href='Employee?sticker2=fail&&morepackage=$packmores';";
                                echo"</script>";
                                $ch2 = 1;
                                break;
                            }
                        }
                        if($ch2 == 0){
                            $insert_status = mysqli_query($conn,"insert into checkup_status(barcode,year,physic,cbc,bio,urine,meth,thry,stool,metal,tumor,vision,audio,spiro,cxr,intt) values('$barcode','$Year','0','0','0','0','0','0','0','0','0','0','0','0','0','0')");
                            echo"<script>";
                            echo"window.location.href='Barcodes?register=$reg_id&&barcode=$barcode';";
                            echo"</script>";
                        }
                    }
                }
            }
        }
    }
    public static function register($reg_id,$queue,$barcode){
        global $conn;
        global $Year;
        global $Date;
        global $Time;
        $check_barcode = mysqli_query($conn,"select * from register where barcode='$barcode' and year='$Year';");
        if(mysqli_num_rows($check_barcode) > 0){
            echo"<script>";
            echo"window.location.href='Employee?barcode=registed';";
            echo"</script>";
        }
        else{
            if(isset($_COOKIE['package_list'])){//ກວດສອບວ່າຄຸກກີ້ package_list ນັ້ນມີຄ່າຫຼືບໍ່
                $cookie_data = $_COOKIE['package_list'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
                $cart_data = json_decode($cookie_data, true);//Decode ຄ່າຄຸກກີ້ອອກມາໃຫ້ອ່ານຄ່າເປັນ Array ໄດ້ໃນຮູບແບບ json
                if(!empty($cart_data)){
                    $register = mysqli_query($conn,"call insert_register('$reg_id','$barcode','$Time','$queue','$Year','$Date')");
                    if(!$register){
                        echo"<script>";
                        echo"window.location.href='register?regis=fail';";
                        echo"</script>";
                    }
                    else{
                        foreach($cart_data as $row){
                            $pack_id = $row['pack_id'];
                            $registerdetail = mysqli_query($conn,"call insert_registerdetail('$reg_id','$pack_id');");
                            // mysqli_free_result($registerdetail);  
                            // mysqli_next_result($conn);
                    
                        }
                        if(isset($_COOKIE['package_more'])){//ກວດສອບວ່າຄຸກກີ້ package_more ນັ້ນມີຄ່າຫຼືບໍ່
                            $cookie_data2 = $_COOKIE['package_more'];//ຕັ້ງຄ່າຄຸກກີ້ໃຫ້ເປັນ String
                            $cart_data2 = json_decode($cookie_data2, true);//Decode ຄ່າຄຸກກີ້ອອກມາໃຫ້ອ່ານຄ່າເປັນ Array ໄດ້ໃນຮູບແບບ json
                            if(!empty($cart_data2)){
                                foreach($cart_data2 as $row2){
                                    $pack_id2 = $row2['pack_id'];
                                    $registerdetail2 = mysqli_query($conn,"call insert_registerdetail('$reg_id','$pack_id2');");
                                    mysqli_free_result($registerdetail2);  
                                    mysqli_next_result($conn);
                                }
                                setcookie("package_more","",time() - 3600);//ຕັ້ງຄ່າໃຫ້ຄຸກກີ້ໃຫ້ເປັນຄ່າວ່າງ
                            }
                            else{
                                setcookie("package_more","",time() - 3600);//ຕັ້ງຄ່າໃຫ້ຄຸກກີ້ໃຫ້ເປັນຄ່າວ່າງ
                            }
                        }
                        else{
                            setcookie("package_more","",time() - 3600);//ຕັ້ງຄ່າໃຫ້ຄຸກກີ້ໃຫ້ເປັນຄ່າວ່າງ
                        }
                        echo"<script>";
                        echo"window.location.href='register?regis=success';";
                        echo"</script>";
                    }
                }
                else{
                    echo"<script>";
                    echo"window.location.href='register?list-register=null';";
                    echo"</script>";
                }
            }
            else{
                echo"<script>";
                echo"window.location.href='register?list-register=null';";
                echo"</script>";
            }
        }
    }
    public static function select_register_limit($company,$name,$dates,$page){
        global $conn;
        global $result_register_limit;
        $result_register_limit = mysqli_query($conn,"call select_register_limit('$company','$name','$dates','$page')");
    }
    public static function select_register($company,$name,$dates){
        global $conn;
        global $result_register;
        $result_register = mysqli_query($conn,"call select_register('$company','$name','$dates')");
    }
    public static function select_registerdetail($reg_id){
        global $conn;
        global $result_registerdetail;
        $result_registerdetail = mysqli_query($conn,"call select_registerdetail('$reg_id');");
    }
    public static function del_register($reg_id){
        global $conn;
        $result = mysqli_query($conn,"call del_register('$reg_id')");
        if(!$result){
            echo"<script>";
            echo"window.location.href='register?del=fail';";
            echo"</script>";
        }
        else{
            echo"<script>";
            echo"window.location.href='register?del2=success';";
            echo"</script>";
        }
    }
    public static function print_barcode($reg_id){
        global $conn;
        global $result_barcode;
        $result_barcode = mysqli_query($conn,"call register_print('$reg_id')");
    }
    public static function morepackage($reg_id){
        global $conn;
        global $result_morepackage;
        $result_morepackage = mysqli_query($conn,"call morepackage('$reg_id')");
    }
    public static function get_name_sticker($reg_id){
        global $conn;
        global $result_sticker;
        $result_sticker = mysqli_query($conn,"call get_name_sticker('$reg_id')");
    }
    public static function Update_package_register($reg_id,$pack_id){
        global $conn;
        global $Update_package_register;
        foreach($pack_id as $pack_ids){
            $Update_package_register = mysqli_query($conn,"INSERT INTO registerdetail(reg_id,pack_id) VALUES('$reg_id','$pack_ids');");
            if(!$Update_package_register){
                echo"<script>";
                echo"window.location.href='register?updatepackage=fail&&pack_id=$pack_ids';";
                echo"</script>";
            }
        }
        if($Update_package_register){
            echo"<script>";
            echo"window.location.href='register?updatepackage2=success';";
            echo"</script>";
        }
        
    }
    public static function insert_company($company,$company_en){
        global $conn;
        $check = mysqli_query($conn,"select * from company where company='$company'");
        if(mysqli_num_rows($check) > 0){
            echo"<script>";
            echo"window.location.href='Company?company=same;'";
            echo"</script>";
        }
        else{
            $result = mysqli_query($conn,"call insert_company('$company','$company_en');"); 
            if(!$result){
                echo"<script>";
                echo"window.location.href='Company?save=fail;'";
                echo"</script>";
            }
            else{
                echo"<script>";
                echo"window.location.href='Company?save2=success;'";
                echo"</script>";
            }
        }
    }
    public static function update_company($com_id,$company,$company_en){
        global $conn;
        $result = mysqli_query($conn,"call update_company('$com_id','$company','$company_en');"); 
        if(!$result){
            echo"<script>";
            echo"window.location.href='Company?update=fail;'";
            echo"</script>";
        }
        else{
            echo"<script>";
            echo"window.location.href='Company?update2=success;'";
            echo"</script>";
        }
    }
    public static function delete_company($com_id){
        global $conn;
        $check = mysqli_query($conn,"select * from employee where com_id='$com_id'");
        $check_package = mysqli_query($conn,"select * from company_package where com_id='$com_id'");
        if(mysqli_num_rows($check) > 0){
            echo"<script>";
            echo"window.location.href='Company?company=employee;'";
            echo"</script>";
        }
        else if(mysqli_num_rows($check_package) > 0){
            echo"<script>";
            echo"window.location.href='Company?companypackage=has;'";
            echo"</script>";
        }
        else{ 
            $result = mysqli_query($conn,"call delete_company('$com_id');"); 
            if(!$result){
                echo"<script>";
                echo"window.location.href='Company?del=fail;'";
                echo"</script>";
            }
            else{
                echo"<script>";
                echo"window.location.href='Company?del2=success;'";
                echo"</script>";
            }           
        }
    }
    public static function select_company_limit($search,$page){
        global $conn;
        global $result_company_limit;
        $result_company_limit = mysqli_query($conn,"call select_company_limit('$search','$page')");
    }
    public static function select_company($search){
        global $conn;
        global $result_company;
        $result_company = mysqli_query($conn,"call select_company('$search')");
    }
    public static function select_company_list_package($com_id){
        global $conn;
        global $list_addpackage;
        $list_addpackage = mysqli_query($conn,"call list_addpackage('$com_id')");
    }
    public static function select_company_package($com_id){
        global $conn;
        global $company_package;
        $company_package = mysqli_query($conn,"call company_package('$com_id')");
    }
    public static function clear_company_package($com_id){
        global $conn;
        global $clear_company_package;
        $clear_company_package = mysqli_query($conn,"call clear_company_package('$com_id')");
        if(!$clear_company_package){
            echo"<script>";
            echo"window.location.href='Company?clear=fail;'";
            echo"</script>";
        }
        else{
            echo"<script>";
            echo"window.location.href='Company?clear2=success;'";
            echo"</script>";
        }
    }
    public static function add_company_package($company_id_add,$pack_id){
        global $conn;
        global $insert_package_register;
        foreach($pack_id as $pack_ids){
            $insert_package_register = mysqli_query($conn,"INSERT INTO company_package(com_id,pack_id) VALUES('$company_id_add','$pack_ids');");
            if(!$insert_package_register){
                echo"<script>";
                echo"window.location.href='Company?addpackage=fail&&pack_id=$pack_ids';";
                echo"</script>";
            }
        }
        if($insert_package_register){
            echo"<script>";
            echo"window.location.href='Company?addpackage2=success';";
            echo"</script>";
        }
        
    }
    public static function dropdown_company(){
        global $conn;
        global $result_dropdown;
        $result_dropdown = mysqli_query($conn,"call dropdown_company();");
        
    }
    public static function select_checkup_status_limit($company,$year,$page){
        global $conn;
        global $result_checkup_status_limit;
        $result_checkup_status_limit = mysqli_query($conn,"call select_checkup_status_limit('$company','$year','$page');");
        
    }
    public static function select_checkup_status($company,$year){
        global $conn;
        global $result_checkup_status;
        $result_checkup_status = mysqli_query($conn,"call select_checkup_status('$company','$year');");
        
    }
}
$obj = new obj();
?>