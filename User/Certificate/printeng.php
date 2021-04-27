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

$bio = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' and year='$year';");
$fetch_bio = mysqli_fetch_array($bio,MYSQLI_ASSOC);
$bio_conclusion = $fetch_bio["conclusion"];
$bio_remark = $fetch_bio["remark"];
if($bio_conclusion != ""){
    $bio_conclusion = "Bio: ".$bio_conclusion.", ";
}
else{
    $bio_conclusion = "";
}
if($bio_remark == ""){
    $bio_remark = "";
}
else{
    $bio_remark = $bio_remark.", ";
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

    $border = 5;//กำหนดความหน้าของเส้น Barcode
    $height = 80;//กำหนดความสูงของ Barcode
    // $barcode = $_POST["barcode_id"];
    $generatorSVG = new Picqer\Barcode\BarcodeGeneratorJPG();
    // file_put_contents('barcode/'.$barcode.'.jpg', $generatorSVG->getBarcode($barcode, $generatorSVG::TYPE_CODE_128,$border,$height));
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
            width:48%;
            float:left;

        }
        .right{
            width:40%;
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
        ເລກທີ. 1
        </div>
        <br>

        <div class="left">
        ຫ້ອງກວດສຸຂະພາບແຮງງານ ພາຍໃນ ແລະ ຕ່າງປະເທດ
        Occupational Health Check up Bureau
        </div>
        <div class="right">
        &nbsp;
        </div>
        <div class="left">
        Tel: 021-253 833,
        </div>
        <div class="right">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ນະຄອນຫຼວງວຽງຈັນ, ວັນທີ......................
        </div>
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
        '.$audio_conclusion.' CBC: Normal, Urine/analysis: Normal,Biochemistry <br>
        Cholesterol: 226 mg/dl, Triglyceride: 377 mg/dl, ນອກນັ້ນປົກກະຕິ <br>
        </div>
<br>

        <div class="three">
        III.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ຄຳເຫັນຂອງແພດຜູ້ກວດສຸຂະພາບ:<br>
        </div>
        <div class="three2">
            <div style="width: 5%;float:left;">
            -
            </div>
            <div style="width: 90%;float:left;">
            '.$audio_remark.'
            </div>
        </div>
<br>
<div class="hundred">
        <div class="left">
            ຜູ້ອຳນວຍການໂຮງໜໍມະໂຫສົດ
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