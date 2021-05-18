<?php 
    $path = "../../";
    include ('../../oop/obj.php');
$barcode = $_POST["barcode"];
$year = $_POST["year"];

$pe = mysqli_query($conn,"SELECT emp_id,emp_name,surname,dob,age,gender,nation,ethnic,religion,job,department,company,village,district,province,hpi,weight,height,breat,pulse,bp,lung,hear,eye,ears,conclusion FROM employee e LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN pe p ON e.barcode=p.barcode where e.barcode='$barcode' and year='$year';");
$fetch_pe = mysqli_fetch_array($pe,MYSQLI_ASSOC);

$audio = mysqli_query($conn,"SELECT * FROM audiogram where barcode='$barcode' and year='$year';");
$fetch_audio = mysqli_fetch_array($audio,MYSQLI_ASSOC);
$audio_conclusion = $fetch_audio["conclusion"];
$audio_remark = $fetch_audio["remark"];
if($audio_conclusion != ""){
    $audio_conclusion = "Audio: ".$audio_conclusion.", ";
}
else{
    $audio_conclusion = "";
}
if($audio_remark == ""){
    $audio_remark = "";
}
else{
    $audio_remark = $audio_remark.", ";
}



$cbc = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' and year='$year';");
$fetch_cbc = mysqli_fetch_array($cbc,MYSQLI_ASSOC);
$cbc_conclusion = $fetch_cbc["conclusion"];
$cbc_remark = $fetch_cbc["remark"];
if($cbc_conclusion != ""){
    $cbc_conclusion = "CBC: ".$cbc_conclusion.", ";
}
else{
    $cbc_conclusion = "";
}
if($cbc_remark == ""){
    $cbc_remark = "";
}
else{
    $cbc_remark = $cbc_remark.", ";
}

$bio = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' and year='$year';");
$fetch_bio = mysqli_fetch_array($bio,MYSQLI_ASSOC);
$bio_conclusion = $fetch_bio["conclusion"];
$bio_remark = $fetch_bio["remark"];
if($bio_conclusion != ""){
    $bio_conclusion = "Bio: ".$bio_conclusion.". ";
}
else{
    $bio_conclusion = "";
}
if($bio_remark == ""){
    $bio_remark = "";
}
else{
    $bio_remark = $bio_remark.". ";
}


$ekg = mysqli_query($conn,"SELECT * FROM ekg where barcode='$barcode' and year='$year';");
$fetch_ekg = mysqli_fetch_array($ekg,MYSQLI_ASSOC);
$ekg_c = $fetch_ekg["ekg_name"];
$ekg_conclusion = $fetch_ekg["conclusion"];
if($ekg_c != ""){
    $ekg_c = "EKG: ".$ekg_c.", ";
}
else{
    $ekg_c = "";
}
if($ekg_conclusion == ""){
    $ekg_conclusion = "";
}
else{
    $ekg_conclusion = $ekg_conclusion.", ";
}


$heavy_metal = mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' and year='$year';");
$fetch_heavy_metal = mysqli_fetch_array($heavy_metal,MYSQLI_ASSOC);
$heavy_metal_conclusion = $fetch_heavy_metal["conclusion"];
$heavy_metal_remark = $fetch_heavy_metal["remark"];
if($heavy_metal_conclusion != ""){
    $heavy_metal_conclusion = "Metal: ".$heavy_metal_conclusion.", ";
}
else{
    $heavy_metal_conclusion = "";
}
if($heavy_metal_remark == ""){
    $heavy_metal_remark = "";
}
else{
    $heavy_metal_remark = $heavy_metal_remark.", ";
}



$immunity = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' and year='$year';");
$fetch_immunity = mysqli_fetch_array($immunity,MYSQLI_ASSOC);
$immunity_conclusion = $fetch_immunity["conclusion"];
$immunity_remark = $fetch_immunity["remark"];
if($immunity_conclusion != ""){
    $immunity_conclusion = "IMM: ".$immunity_conclusion.", ";
}
else{
    $immunity_conclusion = "";
}
if($immunity_remark == ""){
    $immunity_remark = "";
}
else{
    $immunity_remark = $immunity_remark.", ";
}



$methamphetamine = mysqli_query($conn,"SELECT * FROM methamphetamine where barcode='$barcode' and year='$year';");
$fetch_methamphetamine = mysqli_fetch_array($methamphetamine,MYSQLI_ASSOC);
$methamphetamine_conclusion = $fetch_methamphetamine["conclusion"];
$methamphetamine_remark = $fetch_methamphetamine["remark"];
if($methamphetamine_conclusion != ""){
    $methamphetamine_conclusion = "Meth: ".$methamphetamine_conclusion.", ";
}
else{
    $methamphetamine_conclusion = "";
}
if($methamphetamine_remark == ""){
    $methamphetamine_remark = "";
}
else{
    $methamphetamine_remark = $methamphetamine_remark.", ";
}



$muscle = mysqli_query($conn,"SELECT * FROM muscle where barcode='$barcode' and year='$year';");
$fetch_muscle = mysqli_fetch_array($muscle,MYSQLI_ASSOC);
$muscle_c = $fetch_muscle["muscle_name"];
$muscle_conclusion = $fetch_muscle["conclusion"];
if($muscle_c != ""){
    $muscle_c = "Muscle: ".$muscle_c.", ";
}
else{
    $muscle_c = "";
}
if($muscle_conclusion == ""){
    $muscle_conclusion = "";
}
else{
    $muscle_conclusion = $muscle_conclusion.", ";
}



$vision = mysqli_query($conn,"SELECT * FROM oc_vision where barcode='$barcode' and year='$year';");
$fetch_vision = mysqli_fetch_array($vision,MYSQLI_ASSOC);
$vision_conclusion = $fetch_vision["conclusion"];
$vision_remark = $fetch_vision["remark"];
if($vision_conclusion != ""){
    $vision_conclusion = "Vision: ".$vision_conclusion.", ";
}
else{
    $vision_conclusion = "";
}
if($vision_remark == ""){
    $vision_remark = "";
}
else{
    $vision_remark = $vision_remark.", ";
}




$se = mysqli_query($conn,"SELECT * FROM se where barcode='$barcode' and year='$year';");
$fetch_se = mysqli_fetch_array($se,MYSQLI_ASSOC);
$se_conclusion = $fetch_se["conclusion"];
$se_remark = $fetch_se["remark"];
if($se_conclusion != ""){
    $se_conclusion = "Stool Ex: ".$se_conclusion.", ";
}
else{
    $se_conclusion = "";
}
if($se_remark == ""){
    $se_remark = "";
}
else{
    $se_remark = $se_remark.", ";
}




$spirometry = mysqli_query($conn,"SELECT * FROM spirometry where barcode='$barcode' and year='$year';");
$fetch_spirometry = mysqli_fetch_array($spirometry,MYSQLI_ASSOC);
$spirometry_conclusion = $fetch_spirometry["conclusion"];
$spirometry_remark = $fetch_spirometry["remark"];
if($spirometry_conclusion != ""){
    $spirometry_conclusion = "Spiro: ".$spirometry_conclusion.", ";
}
else{
    $spirometry_conclusion = "";
}
if($spirometry_remark == ""){
    $spirometry_remark = "";
}
else{
    $spirometry_remark = $spirometry_remark.", ";
}




$thryroid = mysqli_query($conn,"SELECT * FROM thryroid where barcode='$barcode' and year='$year';");
$fetch_thryroid = mysqli_fetch_array($thryroid,MYSQLI_ASSOC);
$thryroid_conclusion = $fetch_thryroid["conclusion"];
$thryroid_remark = $fetch_thryroid["remark"];
if($thryroid_conclusion != ""){
    $thryroid_conclusion = "Thryroid: ".$thryroid_conclusion.", ";
}
else{
    $thryroid_conclusion = "";
}
if($thryroid_remark == ""){
    $thryroid_remark = "";
}
else{
    $thryroid_remark = $thryroid_remark.", ";
}



$Tumor = mysqli_query($conn,"SELECT * FROM Tumor_marker where barcode='$barcode' and year='$year';");
$fetch_Tumor = mysqli_fetch_array($Tumor,MYSQLI_ASSOC);
$Tumor_conclusion = $fetch_Tumor["conclusion"];
$Tumor_remark = $fetch_Tumor["remark"];
if($Tumor_conclusion != ""){
    $Tumor_conclusion = "Tumor: ".$Tumor_conclusion.", ";
}
else{
    $Tumor_conclusion = "";
}
if($Tumor_remark == ""){
    $Tumor_remark = "";
}
else{
    $Tumor_remark = $Tumor_remark.", ";
}

$urinalvsis = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' and year='$year';");
$fetch_urinalvsis= mysqli_fetch_array($urinalvsis,MYSQLI_ASSOC);
$urinalvsis_conclusion = $fetch_urinalvsis["conclusion"];
$urinalvsis_remark = $fetch_urinalvsis["remark"];
if($urinalvsis_conclusion != ""){
    $urinalvsis_conclusion = "Urine: ".$urinalvsis_conclusion.", ";
}
else{
    $urinalvsis_conclusion = "";
}
if($urinalvsis_remark == ""){
    $urinalvsis_remark = "";
}
else{
    $urinalvsis_remark = $urinalvsis_remark.", ";
}


$x_ray = mysqli_query($conn,"SELECT * FROM x_ray where barcode='$barcode' and year='$year';");
$fetch_x_ray= mysqli_fetch_array($x_ray,MYSQLI_ASSOC);
$x_ray_c = $fetch_x_ray["x_ray"];
$x_ray_conclusion = $fetch_x_ray["conclusion"];
if($x_ray_c != ""){
    $x_ray_c = "X-Ray: ".$x_ray_c.", ";
}
else{
    $x_ray_c = "";
}
if($x_ray_conclusion == ""){
    $x_ray_conclusion = "";
}
else{
    $x_ray_conclusion = $x_ray_conclusion.", ";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <?php
// if(isset($_POST["btnPrint"])){
    require_once '../../vendor/autoload.php';

    $mpdf = new \Mpdf\Mpdf([
        'format'        => "A4",
        'mode'              => 'utf-8',      
        'default_font_size' => 10,
        'margin_top' => 10,
        'margin_left' => 10,
        'margin_right' => 10,
        'margin_bottom' => 10,
        'default_font' => 'saysettha_ot',
    ]);
    
    $content = '
<style>
        .paper{
            width:100%;
            height:29.7cm;
            float:left;
            border:1mm ridge #FFA533;
            line-height: 1.5;

        }
        .image{
            width:15%;
            margin-left:8cm;
            margin-top:0.2cm;
        }
        .lpdr{
            text-align:center;
            font-weight:bold;
            margin-top: 5px;
        }
        .hundred{
            width:100%;
            float:left;
            margin-top: 0.1cm;
            margin-left: 1.27cm;
            margin-right: 1.27cm;
        }
        .left{
            width:40%;
            float:left;

        }
        .center{
            width:12%;
            float:left;
            text-align:right;

        }
        .right{
            width:38%;
            float:left;
            text-align:right;
         
            
        }
        .right1{
            width:51%;
            float:left;
            text-align:right;

        }
        .title{
            font-weight:bold;
            text-align:center;
        }
        .info{
            margin-left: 2.54cm;
            margin-right: 1.27cm;
        }
        .info2{
            margin-left: 1.27cm;
            margin-right: 1.27cm;
        }
        .one{
            margin-left: 1.27cm;
            margin-right: 1.27cm;
        }
        .two{
            margin-left: 1.27cm;
            margin-right: 1.27cm;
        }
        .two2{
            margin-left: 2.54cm;
            margin-right: 1.27cm;
        }
        .three{
            margin-left: 1.27cm;
            margin-right: 1.27cm;
        }
        .three2{
            width:100%;
            float:left;
            margin-left: 2.54cm;
            margin-right: 1.27cm;
        }
</style>
    ';
    // $obj->print_barcode($_POST["print_barcode"]);

    // $row = mysqli_fetch_array($result_barcode,MYSQLI_ASSOC);
    $content .='   

<div class="paper">
    <div class="image">
        <img src="../../image/Emblem.png" alt="">
    </div>
    <div class="lpdr">
    ສາທາລະນາລັດ ປະຊາທິປະໄຕ ປະຊາຊົນລາວ <br>
    ສັນຕີພາບ ເອກະລາດ ປະຊາທິປະໄຕ ເອກະພາບ ວັດທະນະຖາວອນ <br>
    ****
    </div>
    
    <div class="hundred">
        <div class="left">
        ໂຮງໝໍມະໂຫສົດ
        </div>
        <div class="right">
        ເລກທີ....
        </div>
        <br>

        <div class="left">
        ຫ້ອງກວດສຸຂະພາບແຮງງານ ພາຍໃນ ແລະ ຕ່າງປະເທດ
        Occupational Health Check up Bureau
        </div>
        <div class="right1">
        &nbsp;&nbsp;&nbsp;ນະຄອນຫຼວງວຽງຈັນ, ວັນທີ......................
        </div>
        <div class="left">
        Tel: 021-253 833
        </div>
        <br>
        <div class="left">
        020 555 024 14
        </div>

    </div>
        <div class="title">
        ໃບຢັ້ງຢືນສຸຂະພາບ
        </div>


        <div class="info">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ຜ່ານການກວດກາຕົວຈິງຂອງແພດ, ຜູ້ອຳນວຍການໂຮງໜໍມະໂຫສົດ ຢັ້ງຢືນວ່າ: <br>
        </div>
        <div class="info2">
        ຊື່ ແລະ ນາມສະກຸນ ທ້າວ/ນາງ: '.$fetch_pe["emp_name"].' '.$fetch_pe["surname"].' ອາຍຸ: '.$fetch_pe["age"].' ປີ, ເພດ: '.$fetch_pe["gender"].'<br> ສັນຊາດ: '.$fetch_pe["nation"].',ຊົນເຜົ່າ: '.$fetch_pe["ethnic"].' , ສາດສະໜາ: '.$fetch_pe["religion"].' ,
        ນ້ຳເບີບັດພ/ງ: '.$fetch_pe["emp_id"].' , ອາຊີບ: '.$fetch_pe["job"].', <br> ພະແນກ: '.$fetch_pe["department"].' , ບໍລີສັດ/ໂຮງງານ: '.$fetch_pe["company"].',
        ທີ່ຢູ່ປະຈຸບັນ ບ້ານ: '.$fetch_pe["village"].', ເມືອງ: '.$fetch_pe["district"].', ແຂວງ: '.$fetch_pe["province"].'
        </div>
        <br>
 

        <div class="one">
        I.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     ການກວດກາຂອງແພດ: <br>
        ສະພາບທົ່ວໄປ: '.$fetch_pe["hpi"].' , ນ້ຳໜັກ: '.$fetch_pe["weight"].' ກິໂລ, ລວງສູງ: '.$fetch_pe["height"].' ຊມ, ການຫາຍໃຈ: '.$fetch_pe["breat"].' ເທືອ/ນາທີ, ກຳມະຈອນ: '.$fetch_pe["pulse"].' ເທື່ອ/ນາທີ, <br>
        ຄວາມດັນເລືອດ: '.$fetch_pe["bp"].' mmHg, ປອດ: '.$fetch_pe["lung"].', ຫົວໃຈ: '.$fetch_pe["hear"].', ຕາ: '.$fetch_pe["eye"].', ຫູ: '.$fetch_pe["ears"].', ສະຫຼຸບຜົນກວດທ່ານໝໍ: '.$fetch_pe["conclusion"].'
        </div>
<br>

        <div class="two">
        II.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     ຜົນໄດ້ຂອງການກວດວິເຄາະ/ລັງສີ ແລະ ອື່ນຽ: <br>
        </div>
        <div class="two2">
        '.$audio_conclusion.''.$cbc_conclusion.''.$ekg_c.''.$heavy_metal_conclusion.''.$immunity_conclusion.''.$methamphetamine_conclusion.'
        '.$muscle_c.''.$vision_conclusion.''.$se_conclusion.''.$spirometry_conclusion.''.$thryroid_conclusion.''.$Tumor_conclusion.''.$urinalvsis_conclusion.'
        '.$x_ray_c.''.$bio_conclusion.'
        </div>
<br>

        <div class="three">
        III.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ຄຳເຫັນຂອງແພດຜູ້ກວດສຸຂະພາບ:<br>
        </div>
        <div class="three2">
        <div>
        &nbsp;ຜູ້ກ່ຽວມີສຸຂະພາບທາງດ້ານຈິດ ແລະ ຮ່່າງກາຍປົກກະຕິ ສາມາດປະກອບສ່ວນເຂົ້າໃນການເຮັດວຽກງານໄດ້ປົກກະຕິ
        </div>
            <div style="width: 5%;float:left;">
            -
            </div>
            <div style="width: 90%;float:left;">
            '.$audio_remark.''.$cbc_remark.''.$ekg_conclusion.''.$heavy_metal_remark.''.$immunity_remark.''.$methamphetamine_remark.'
            '.$muscle_conclusion.''.$vision_remark.''.$se_remark.''.$spirometry_remark.''.$thryroid_remark.''.$Tumor_remark.''.$urinalvsis_remark.'
            '.$x_ray_conclusion.''.$bio_remark.'
            </div>
        </div>
<br>
<div class="hundred">
        <div class="left">
            ຜູ້ອຳນວຍການໂຮງໜໍມະໂຫສົດ
        </div>
        <div class="center">
        ແພດກວດຢັ້ງຢືນ
    </div>
        <div class="right">
            ແພດກວດຢັ້ງຢືນ
        </div>
</div>



</div>';
    $mpdf->WriteHTML($content);
    $mpdf->Output("","I");

// }

?>


</body>

</html>