<?php
// if(isset($_POST["btnPrint"])){
    $path = "../../";
    include ('../../oop/obj.php');
    $barcode = $_POST["barcode"];
    $year = $_POST["year"];

    $pe = mysqli_query($conn,"SELECT emp_id,emp_name_en,surname_en,age,national_en,religion_en,occupation_en,village_en,district_en,province_en,hpi_en,pmhi_en,personal_en,family_en,asi_en,weight,height,breat,pulse,bp,lung,hear_en,eye_en,ears_en,conclusion_en,remark_en FROM employee e LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN pe p ON e.barcode=p.barcode where e.barcode='$barcode' and year='$year';");
    $fetch_pe = mysqli_fetch_array($pe,MYSQLI_ASSOC);


    $audio = mysqli_query($conn,"SELECT * FROM audiogram where barcode='$barcode' and year='$year';");
$fetch_audio = mysqli_fetch_array($audio,MYSQLI_ASSOC);
$audio_conclusion = $fetch_audio["conclusion_en"];
$audio_remark = $fetch_audio["remark_en"];
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
$cbc_conclusion = $fetch_cbc["conclusion_en"];
$cbc_remark = $fetch_cbc["remark_en"];
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
$bio_conclusion = $fetch_bio["conclusion_en"];
$bio_remark = $fetch_bio["remark_en"];
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
$ekg_c = $fetch_ekg["ekg_en"];
$ekg_conclusion = $fetch_ekg["conclusion_en"];
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
$heavy_metal_conclusion = $fetch_heavy_metal["conclusion_en"];
$heavy_metal_remark = $fetch_heavy_metal["remark_en"];
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
$immunity_conclusion = $fetch_immunity["conclusion_en"];
$immunity_remark = $fetch_immunity["remark_en"];
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
$methamphetamine_conclusion = $fetch_methamphetamine["conclusion_en"];
$methamphetamine_remark = $fetch_methamphetamine["remark_en"];
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
$muscle_c = $fetch_muscle["muscle_en"];
$muscle_conclusion = $fetch_muscle["conclusion_en"];
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
$vision_conclusion = $fetch_vision["conclusion_en"];
$vision_remark = $fetch_vision["remark_en"];
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
$se_conclusion = $fetch_se["conclusion_en"];
$se_remark = $fetch_se["remark_en"];
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
$spirometry_conclusion = $fetch_spirometry["conclusion_en"];
$spirometry_remark = $fetch_spirometry["remark_en"];
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
$thryroid_conclusion = $fetch_thryroid["conclusion_en"];
$thryroid_remark = $fetch_thryroid["remark_en"];
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
$Tumor_conclusion = $fetch_Tumor["conclusion_en"];
$Tumor_remark = $fetch_Tumor["remark_en"];
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
$urinalvsis_conclusion = $fetch_urinalvsis["conclusion_en"];
$urinalvsis_remark = $fetch_urinalvsis["remark_en"];
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
$x_ray_c = $fetch_x_ray["x_ray_en"];
$x_ray_conclusion = $fetch_x_ray["conclusion_en"];
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
        Name and Surname: '.$fetch_pe["emp_name_en"].' '.$fetch_pe["surname_en"].' Age: '.$fetch_pe["age"].' Years, Nationality: '.$fetch_pe["national_en"].', <br>
        Religion: '.$fetch_pe["religion_en"].', Employment ID: '.$fetch_pe["emp_id"].', Occupation: '.$fetch_pe["occupation_en"].', <br>
        Current address: Village: '.$fetch_pe["village_en"].', District: '.$fetch_pe["district_en"].', Province: '.$fetch_pe["province_en"].'.
        </div>
        <br>
        <br>

        <div class="one">
        I.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     Physician Examination: <br>
        General Status: '.$fetch_pe["hpi_en"].', Weight: '.$fetch_pe["weight"].' Kg, Heigh: '.$fetch_pe["height"].' Cm, RR: '.$fetch_pe["breat"].' b/min, Pulse: '.$fetch_pe["pulse"].' b/min, <br>
        BP: '.$fetch_pe["bp"].' mmHg, Lungs: '.$fetch_pe["lung_en"].', Eyes: '.$fetch_pe["eyes_en"].', Ears: '.$fetch_pe["ears_en"].', <br>
        Conclusion: '.$fetch_pe["conclusion_en"].'.
        </div>
        <br>
        <div class="two">
        II.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     Results of Laboratory, CXR and Others: <br>
        </div>
        <div class="two2">
        '.$audio_conclusion.''.$cbc_conclusion.''.$ekg_c.''.$heavy_metal_conclusion.''.$immunity_conclusion.''.$methamphetamine_conclusion.'
        '.$muscle_c.''.$vision_conclusion.''.$se_conclusion.''.$spirometry_conclusion.''.$thryroid_conclusion.''.$Tumor_conclusion.''.$urinalvsis_conclusion.'
        '.$x_ray_c.''.$bio_conclusion.'
        </div>
        <br>

        <div class="three">
        III.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Recommendation of physician:<br>
        </div>
        <div class="three2">
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
