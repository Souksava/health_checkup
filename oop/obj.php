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
    public static function update_employee($barcode,$emp_id,$emp_name,$surname,$dob,$age,$gender,$company,$branch,$department,$tel,$family_stt,$nation,$ethnnic,$religion,$job,$house_no,$village,$district,$province,$emp_name_en,$surname_en,$village_en,$district_en,$province_en,$national_en,$religion_en,$occupation_en){//Insert Employee                                 
        global $conn;
        $result = mysqli_query($conn,"call update_employee('$barcode','$emp_id','$emp_name','$surname','$dob','$age','$gender','$company','$branch','$department','$tel','$family_stt','$nation','$ethnnic','$religion','$job','$house_no','$village','$district','$province','$emp_name_en','$surname_en','$village_en','$district_en','$province_en','$national_en','$religion_en','$occupation_en');");
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
    public static function select_physical($company,$name,$year){
        global $conn;
        global $result_physical;
        $result_physical = mysqli_query($conn,"call select_pe('$company','$name','$year');");
        
    }
    public static function select_physical_limit($company,$name,$year,$page){
        global $conn;
        global $result_physical_limit;
        $result_physical_limit = mysqli_query($conn,"call select_pe_limit('$company','$name','$year','$page');");
        
    }

    public static function select_immunity($company,$name,$year){
        global $conn;
        global $result_immunity;
        $result_immunity = mysqli_query($conn,"call select_immunity('$company','$name','$year');");
    }
    public static function select_immunity_limit($company,$name,$year,$page){
        global $conn;
        global $result_immunity_limit;
        $result_immunity_limit = mysqli_query($conn,"call select_immunity_limit('$company','$name','$year','$page');");
    }
    public static function select_x_ray($company,$name,$year){
        global $conn;
        global $result_x_ray;
        $result_x_ray = mysqli_query($conn,"call select_x_ray('$company','$name','$year');");
    }
    public static function select_x_ray_limit($company,$name,$year,$page){
        global $conn;
        global $result_x_ray_limit;
        $result_x_ray_limit = mysqli_query($conn,"call select_x_ray_limit('$company','$name','$year','$page');");
    }
    public static function select_spiro($company,$name,$year){
        global $conn;
        global $result_spiro;
        $result_spiro = mysqli_query($conn,"call select_spiro('$company','$name','$year');");
    }
    public static function select_spiro_limit($company,$name,$year,$page){
        global $conn;
        global $result_spiro_limit;
        $result_spiro_limit = mysqli_query($conn,"call select_spiro_limit('$company','$name','$year','$page');");
    }
    public static function select_audio($company,$name,$year){
        global $conn;
        global $result_audio;
        $result_audio = mysqli_query($conn,"call select_audio('$company','$name','$year');");
    }
    public static function select_audio_limit($company,$name,$year,$page){
        global $conn;
        global $result_audio_limit;
        $result_audio_limit = mysqli_query($conn,"call select_audio_limit('$company','$name','$year','$page');");
    }
    public static function select_oc_vision($company,$name,$year){
        global $conn;
        global $result_oc_vision;
        $result_oc_vision = mysqli_query($conn,"call select_oc_vision('$company','$name','$year');");
    }
    public static function select_oc_vision_limit($company,$name,$year,$page){
        global $conn;
        global $result_oc_vision_limit;
        $result_oc_vision_limit = mysqli_query($conn,"call select_oc_vision_limit('$company','$name','$year','$page');");
    }
    public static function select_cbc($company,$name,$year){
        global $conn;
        global $result_cbc;
        $result_cbc = mysqli_query($conn,"call select_cbc('$company','$name','$year');");
    }
    public static function select_cbcl_limit($company,$name,$year,$page){
        global $conn;
        global $result_cbc_limit;
        $result_cbc_limit = mysqli_query($conn,"call select_cbc_limit('$company','$name','$year','$page');");
        
    }
    public static function select_biochemistry($company,$name,$year){
        global $conn;
        global $result_biochemistry;
        $result_biochemistry = mysqli_query($conn,"call select_biochemistry('$company','$name','$year');");
        
    }
    public static function select_biochemistry_limit($company,$name,$year,$page){
        global $conn;
        global $result_biochemistry_limit;
        $result_biochemistry_limit = mysqli_query($conn,"call select_biochemistry_limit('$company','$name','$year','$page');");
        
    }
    public static function select_urine($company,$name,$year){
        global $conn;
        global $result_urine;
        $result_urine = mysqli_query($conn,"call select_urine('$company','$name','$year');");
        
    }
    public static function select_urine_limit($company,$name,$year,$page){
        global $conn;
        global $result_urine_limit;
        $result_urine_limit = mysqli_query($conn,"call select_urine_limit('$company','$name','$year','$page');");
        
    }
    public static function select_metham($company,$name,$year){
        global $conn;
        global $result_metham;
        $result_metham = mysqli_query($conn,"call select_metham('$company','$name','$year');");
        
    }
    public static function select_metham_limit($company,$name,$year,$page){
        global $conn;
        global $result_metham_limit;
        $result_metham_limit = mysqli_query($conn,"call select_metham_limit('$company','$name','$year','$page');");
        
    }
    public static function select_thryroid($company,$name,$year){
        global $conn;
        global $result_thry;
        $result_thry = mysqli_query($conn,"call select_thryroid('$company','$name','$year');");
        
    }
    public static function select_thryroid_limit($company,$name,$year,$page){
        global $conn;
        global $result_thry_limit;
        $result_thry_limit = mysqli_query($conn,"call select_thryroid_limit('$company','$name','$year','$page');");
        
    }
    public static function select_se($company,$name,$year){
        global $conn;
        global $result_se;
        $result_se = mysqli_query($conn,"call select_se('$company','$name','$year');");
        
    }
    public static function select_se_limit($company,$name,$year,$page){
        global $conn;
        global $result_se_limit;
        $result_se_limit = mysqli_query($conn,"call select_se_limit('$company','$name','$year','$page');");
        
    }
    public static function select_heavy_metal($company,$name,$year){
        global $conn;
        global $result_heavy_metal;
        $result_heavy_metal = mysqli_query($conn,"call select_heavy_metal('$company','$name','$year');");
        
    }
    public static function select_heavy_metal_limit($company,$name,$year,$page){
        global $conn;
        global $result_heavy_metal_limit;
        $result_heavy_metal_limit = mysqli_query($conn,"call select_heavy_metal_limit('$company','$name','$year','$page');");
        
    }
    public static function select_tumor_marker($company,$name,$year){
        global $conn;
        global $result_tumor_marker;
        $result_tumor_marker = mysqli_query($conn,"call select_tumor_marker('$company','$name','$year');");
        
    }
    public static function select_tumor_marker_limit($company,$name,$year,$page){
        global $conn;
        global $result_tumor_marker_limit;
        $result_tumor_marker_limit = mysqli_query($conn,"call select_tumor_marker_limit('$company','$name','$year','$page');");
    }


    public static function import_pe($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $hpis = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $pmhis = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $personals = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $familys = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $asis = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $heights = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $weights = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $bmis = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $bps = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $pulses = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                    $abos = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
                    $eyes = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
                    $teeths = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
                    $ears = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(15, $row)->getValue());
                    $lymphs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(16, $row)->getValue());
                    $thyroids = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(17, $row)->getValue());
                    $extremitiess = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(18, $row)->getValue());
                    $skin = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(19, $row)->getValue());
                    $hears = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(20, $row)->getValue());
                    $lungs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(21, $row)->getValue());
                    $alss = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(22, $row)->getValue());
                    $others = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(23, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(24, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(25, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_pe('$barcode','$year','$hpis','$pmhis','$personals','$familys','$asis','$heights','$weights','$bmis','$bps','$pulses','$abos','$eyes','$teeths','$ears','$lymphs','$thyroids','$extremitiess','$skin','$hears','$lungs','$alss','$others','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set physic='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Physical?import=success';";
        echo"</script>";
    }
    public static function update_pe($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                $hpis = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                $pmhis = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                $personals = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                $familys = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                $asis = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                $eyes = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                $teeths = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                $ears = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                $lymphs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                $thyroids = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                $extremitiess = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
                $skin = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
                $hears = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
                $lungs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(15, $row)->getValue());
                $alss = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(16, $row)->getValue());
                $others = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(17, $row)->getValue());
                $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(18, $row)->getValue());
                $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(19, $row)->getValue());
                $result = mysqli_query($conn,"call update_pe('$barcode','$year','$hpis','$pmhis','$personals','$familys','$asis','$eyes','$teeths','$ears','$lymphs','$thyroids','$extremitiess','$skin','$hears','$lungs','$alss','$others','$conclusions','$remarks')");
                mysqli_free_result($result);  
                mysqli_next_result($conn);
        }
    }
    echo"<script>";
    echo"window.location.href='Physical?import=success';";
    echo"</script>";
    }



public static function import_thry($file_path,$year){
    global $conn;
    $objPHPExcel = PHPExcel_IOFactory::load($file_path);
    foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
        $highestRow = $worksheet->getHighestRow();
        for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $free_t3s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $free_t4s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $tshs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $t3s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $t4s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_thyroid('$barcode','$year','$free_t3s','$free_t4s','$tshs','$t3s','$t4s','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set thry='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Thryroid?import=success';";
        echo"</script>";
    }
    public static function import_se($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){

                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $colors = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $wbcs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $rbcs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $parasites = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $samonellas = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $shigellas = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $vivrios = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $vibrios = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_se('$barcode','$year','$colors','$wbcs','$rbcs','$parasites','$samonellas','$shigellas','$vivrios','$vibrios','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set stool='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Stool?import=success';";
        echo"</script>";
    }
    public static function import_metal($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){

                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $ethers = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $ethys = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $nickles = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $manganeses = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $tims = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $bloods = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $m_i_urines = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $b_a_us = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $c_us = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $alcohos = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                    $silicas = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
                    $methys = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
                    $a_i_urines = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
                    $t_i_urines = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(15, $row)->getValue());
                    $methy_urines = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(16, $row)->getValue());
                    $methanoi_urines = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(17, $row)->getValue());
                    $phenolic_resins = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(18, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(19, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(20, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_heavy_metal('$barcode','$year','$ethers','$ethys','$nickles','$manganeses','$tims','$bloods','$m_i_urines','$b_a_us','$c_us','$alcohos','$silicas','$methys','$a_i_urines','$t_i_urines','$methy_urines','$methanoi_urines','$phenolic_resins','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set metal='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Heavy?import=success';";
        echo"</script>";
    }
    public static function import_tumor($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){

                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $afps = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $ceas = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $psas = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $ca_19s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $ca_15s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $ca_125 = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_tumor_marker('$barcode','$year','$afps','$ceas','$psas','$ca_19s','$ca_15s','$ca_125','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set tumor='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Tumor?import=success';";
        echo"</script>";
    }
    public static function import_oc_vision($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){

                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $look_fars = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $look_nears = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $look_ups = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $check_eyes = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $check_colors = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $radiuss = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_oc_vision('$barcode','$year','$look_fars','$look_nears','$look_ups','$check_eyes','$check_colors','$radiuss','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set vision='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Vision?import=success';";
        echo"</script>";
    }
    
    public static function import_audio($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){

                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $r_500s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_1000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_2000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_3000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_l_avgs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_4000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_6000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_8000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $r_h_avgs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());

                    $l_500s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_1000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_2000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_3000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_l_avgs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_4000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_6000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_8000s = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $l_h_avgs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_audio('$barcode','$year','$r_500s','$r_1000s','$r_2000s','$r_3000s','$r_l_avgs','$r_4000s','$r_6000s','$r_8000s','$r_h_avgs','$l_500s','$l_1000s','$l_2000s','$l_3000s','$l_l_avgs','$l_4000s','$l_6000s','$l_8000s','$l_h_avgs','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set audio='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Audio?import=success';";
        echo"</script>";
    }
    public static function import_spiro($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){

                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $fvc_meansd = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $fvc_predictd = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $fvc_predictsd = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $fevi_meansd = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $fevi_predictd = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $fevi_predictsd = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $fevi_fvcd = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $remarks = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_spiro('$barcode','$year','$fvc_meansd','$fvc_predictd','$fvc_predictsd','$fevi_meansd','$fevi_predictd','$fevi_predictsd','$fevi_fvcd','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set spiro='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Spiro?import=success';";
        echo"</script>";
    }
    
    public static function import_immunity($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $anti_hav = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $ab = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $ag = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $hcv = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $vdrl = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $hiv = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $remark = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_immunity('$barcode','$year','$anti_hav','$ab','$ag','$hcv','$vdrl','$hiv','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set intt='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Immunity?import=success';";
        echo"</script>";
    }

    public static function import_x_ray($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $x_ray = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $remark = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_x_ray('$barcode','$year','$x_ray','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set cxr='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='x-ray?import=success';";
        echo"</script>";
    }
    public static function import_urine($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $color = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $appearan = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $specific = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $protein = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $sugar = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $ketone = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $blood = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $wbc = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $rbc = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $ph = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                    $epit = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
                    $remark = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_urine('$barcode','$year','$color','$appearan','$specific','$protein','$sugar','$ketone','$blood','$wbc','$rbc','$ph','$epit','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set urine='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Urine?import=success';";
        echo"</script>";
    }
    public static function import_metham($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $meth = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $remark = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_metham('$barcode','$year','$meth','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set meth='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Methamphetamine?import=success';";
        echo"</script>";
    }
    public static function import_biochemistry($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $fbs = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $cho = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $hdl = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $ldl = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $trig = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $ua = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $bun = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $creat = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $sgot = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $sgpt = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                    $alk = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
                    $ggt = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
                    $remark = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(15, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_biochemistry('$barcode','$year','$fbs','$cho','$hdl','$ldl','$trig','$ua','$bun','$creat','$sgot','$sgpt','$alk','$ggt','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set bio='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Biochemistry?import=success';";
        echo"</script>";
    }
    public static function import_cbc($file_path,$year){
        global $conn;
        $objPHPExcel = PHPExcel_IOFactory::load($file_path);
        foreach($objPHPExcel->getWorksheetIterator() as $worksheet){
            $highestRow = $worksheet->getHighestRow();
            for($row=2; $row<=$highestRow;$row++){
                    $barcode = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(1, $row)->getValue());
                    $hb = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(2, $row)->getValue());
                    $hct = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(3, $row)->getValue());
                    $wbc = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(4, $row)->getValue());
                    $ne = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(5, $row)->getValue());
                    $lym = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(6, $row)->getValue());
                    $mono = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(7, $row)->getValue());
                    $eo = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(8, $row)->getValue());
                    $baso = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(9, $row)->getValue());
                    $plate = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(10, $row)->getValue());
                    $rbc = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(11, $row)->getValue());
                    $mcv = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(12, $row)->getValue());
                    $mch = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(13, $row)->getValue());
                    $mchc = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(14, $row)->getValue());
                    $red_blood = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(15, $row)->getValue());
                    $conclusions = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(16, $row)->getValue());
                    $remark = mysqli_real_escape_string($conn, $worksheet->getCellByColumnAndRow(17, $row)->getValue());
                    $result = mysqli_query($conn,"call insert_cbc('$barcode','$year','$hb','$hct','$wbc','$ne','$lym','$mono','$eo','$baso','$plate','$rbc','$mcv','$mch','$mchc','$red_blood','$conclusions','$remarks')");
                    mysqli_free_result($result);  
                    mysqli_next_result($conn);
                    mysqli_query($conn,"update checkup_status set cbc='1' where barcode='$barcode' and year='$year'");
            }
        }
        echo"<script>";
        echo"window.location.href='Cbc?import=success';";
        echo"</script>";
    }

}
$obj = new obj();
?>