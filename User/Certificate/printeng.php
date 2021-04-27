<!-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body> -->

<?php
// if(isset($_POST["btnPrint"])){
    $path = "../../";
    include ('../../oop/obj.php');
    $border = 5;//กำหนดความหน้าของเส้น Barcode
    $height = 80;//กำหนดความสูงของ Barcode
    // $barcode = $_POST["barcode_id"];
    $generatorSVG = new Picqer\Barcode\BarcodeGeneratorJPG();
    // file_put_contents('barcode/'.$barcode.'.jpg', $generatorSVG->getBarcode($barcode, $generatorSVG::TYPE_CODE_128,$border,$height));
    require_once '../../vendor/autoload.php';

    $mpdf = new \Mpdf\Mpdf([
        'format'        => "A4",
        'mode'              => 'utf-8',
        'default_font_size' => 11,
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
            margin-top: 1cm;
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
        .three{
            margin-left: 1.27cm;
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
    LAO PEOPLE'."'S".' DEMOCRATIC REPUBLIC <br>
    PEACE INDEPENDENCE DEMOCRACY UNITY PROSPERITY <br>
    ********************
    </div>

    <div class="hundred">
        <div class="left">
        Mahosot Hospital
        </div>
        <div class="right">
        No..........................
        </div>
        <div class="left">
        Occupational Health Check Up Bureau
        </div>
        <div class="right">
        Vientiane Capital, Date..........................
        </div>
        <div class="left">
        Tel: 021-253 833,
        </div>
        <div class="right" style="visibility:hidden">
        Vientiane Capital, Date..........................
        </div>
        <div class="left">
        020 555 024 14
        </div>

        <br><br>
    </div>
        <div class="title">
        Medical Attestation
        </div>
        <br>

        <div class="info">
        Through the consultation of physician, the Director of Mahosot Hospital certifies that: <br>
        </div>
        <div class="info2">
        Name and Surname: XXXX XXXXXXX Age: XX Years, Nationality: Laos, <br>
        Religion: Buddhism, Employment ID:.............., Occupation: Employee, <br>
        Current address: Village: XXX, District, Province: XXXXX Capital, Lao PDR.
        </div>
        <br>
        <br>

        <div class="one">
        I.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     Physician Examination: <br>
        General Status: XX, Weight: XX Kg, Heigh: XXX Cm, RR: XX b/min, Pulse: XX b/min, <br>
        BP: XX/XXmmHg, Lungs: XX, Eyes: XX, Ears: XX, <br>
        Audiometry: XXX.
        </div>
<br>

        <div class="two">
        II.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     Results of Laboratory, CXR and Others: <br>
        CXR: Normal, CBC: Normal, Urine/analysis: Normal. <br>
        Biochemistry: High total cholesterol and high Triglyceride <br>
        </div>
<br>

        <div class="three">
        II.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Recommendation of physician:<br>
        The examined candidate is mentally and physically healthy, able to work normally. <br>
        Mild increased lipid profile, but no need medication.<br>
        Need to restrict diet such as fatty food, meat and
        regularly physical exercise and avoid smoking and alcoholic beverage.
        </div>
<br>
<div class="hundred">
        <div class="left">
            Director of Mahosot Hospital
        </div>
        <div class="right">
            Physician
        </div>
</div>










































</div>';

    $mpdf->WriteHTML($content);
    $mpdf->Output("","I");

// }

?>

<!--
</body>

</html> -->
