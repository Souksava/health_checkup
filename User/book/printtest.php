<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="../../image/health.jpeg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <title>Health CheckUp</title>
</head>

<?php
$path = "../../";
include ('../../oop/obj.php');
$barcode = $_POST["barcode"];
$year = $_POST["year"];
$year2 = $_POST["year2"];
$year3 = $_POST["year3"];
$yearconclusion = $_POST["year4"];


$emp = mysqli_query($conn,"SELECT emp_id,emp_name,surname,dob,age,gender,nation,ethnic,religion,job,house_no,department,company,village,district,province,date,time,family_stt,tel,queue,current_address,road,email FROM employee e LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN register r on e.barcode=r.barcode where e.barcode='$barcode' and r.year='$yearconclusion';");
$fetch_emp = mysqli_fetch_array($emp,MYSQLI_ASSOC);
if(mysqli_num_rows($emp)==0)
{

    $date = "";
    $emp_name = "";
    $surname = "";
    $queue = "";
    $emp_id = "";
    $department = "";
    $company = "";
    $gender = "";
    $dob = "";
    $age = "";
    $family_stt = "";
    $nation = "";
    $ethnic = "";
    $religion = "";
    $house_no = "";
    $village = "";
    $district = "";
    $province = "";
    $tel = "";
    $current_address = "";
    $road = "";
    $email = "";
}
else
{

    $date = $fetch_emp["date"];
    $emp_name = $fetch_emp["emp_name"];
    $surname = $fetch_emp["surname"];
    $queue = $fetch_emp["queue"];
    $emp_id = $fetch_emp["emp_id"];
    $department = $fetch_emp["department"];
    $company = $fetch_emp["company"];
    $gender = $fetch_emp["gender"];
    $dob = $fetch_emp["dob"];
    $age = $fetch_emp["age"];
    $family_stt = $fetch_emp["family_stt"];
    $nation = $fetch_emp["nation"];
    $ethnic = $fetch_emp["ethnic"];
    $religion = $fetch_emp["religion"];
    $house_no = $fetch_emp["house_no"];
    $village = $fetch_emp["village"];
    $district = $fetch_emp["district"];
    $province = $fetch_emp["province"];
    $tel = $fetch_emp["tel"];
    $current_address = $fetch_emp["current_address"];
    $road = $fetch_emp["road"];
    $email = $fetch_emp["email"];
}
$pe = mysqli_query($conn,"SELECT emp_id,emp_name,surname,dob,age,gender,nation,ethnic,religion,job,department,company,village,district,province,hpi,weight,height,pulse,bp,lung,hear,eye,teeth,ears,lymph,thyroid,extremities,skin,hear,lung,als,other,conclusion,remark,personal,family,pmhi,asi,bmi,abo FROM employee e LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN pe p ON e.barcode=p.barcode where e.barcode='$barcode' and year='$yearconclusion';");
$fetch_pe = mysqli_fetch_array($pe,MYSQLI_ASSOC);
if(mysqli_num_rows($pe)==0)
{
    $hpi = "<br>";
    $pmhi = "";
    $personal = "";
    $family = "";
    $asi = "";
    $height = "";
    $weight = "";
    $bmi = "";
    $bp = "";
    $pulse = "";
    $abo = "";
    $eye = "";
    $teeth = "";
    $ears = "";
    $lymph = "";
    $thyroidpe = "";
    $extremities = "";
    $skin = "";
    $hear = "";
    $lung = "";
    $als = "";
    $other = "";
    $pe_conclusion = "";
    $pe_remark = "";
}
else 
{
    $hpi = $fetch_pe["hpi"];
    $pmhi = $fetch_pe["pmhi"];
    $personal = $fetch_pe["personal"];
    $family = $fetch_pe["family"];
    $asi = $fetch_pe["asi"];
    $height = $fetch_pe["height"];
    $weight = $fetch_pe["weight"];
    $bmi = $fetch_pe["bmi"];
    $bp = $fetch_pe["bp"];
    $pulse = $fetch_pe["pulse"];
    $abo = $fetch_pe["abo"];
    $eye = $fetch_pe["eye"];
    $teeth = $fetch_pe["teeth"];
    $ears = $fetch_pe["ears"];
    $lymph = $fetch_pe["lymph"];
    $thyroidpe = $fetch_pe["thyroid"];
    $extremities = $fetch_pe["extremities"];
    $skin = $fetch_pe["skin"];
    $hear = $fetch_pe["hear"];
    $lung = $fetch_pe["lung"];
    $als = $fetch_pe["als"];
    $other = $fetch_pe["other"];
    $pe_conclusion = "ການກວດຮ່າງກາຍທົ່ວໄປ : " . $fetch_pe["conclusion"];
    $pe_remark = $fetch_pe["remark"];
}

$imm = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$year';");
$fetch_imm = mysqli_fetch_array($imm,MYSQLI_ASSOC);
if(mysqli_num_rows($imm)==0)
{
    $hav = "";
    $ag = "";
    $ab = "";
    $hcv = "";
    $vdrl = "";
    $hiv = "";
    $hpylori = "";
    $papSmear = "";
    $immCalcium = "";
    $immPhosphorus = "";
}
else 
{
    $hav = $fetch_imm["anti_hav"];
    $ag = $fetch_imm["ag"];
    $ab = $fetch_imm["ab"];
    $hcv = $fetch_imm["hcv"];
    $vdrl = $fetch_imm["vdrl"];
    $hiv = $fetch_imm["hiv"];
    $hpylori = $fetch_imm["hpylori"];
    $papSmear = $fetch_imm["pap"];
    $immCalcium = $fetch_imm["calcium"];
    $immPhosphorus = $fetch_imm["phosphorus"];
}
$imm2 = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$year2';");
$fetch_imm2 = mysqli_fetch_array($imm2,MYSQLI_ASSOC);
if(mysqli_num_rows($imm2)==0)
{
    $hav2 = "";
    $ag2 = "";
    $ab2 = "";
    $hcv2 = "";
    $vdrl2 = "";
    $hiv2 = "";
    $hpylori2 = "";
    $papSmear2 = "";
    $immCalcium2 = "";
    $immPhosphorus2 = "";
}
else 
{
    $hav2 = $fetch_imm2["anti_hav"];
    $ag2 = $fetch_imm2["ag"];
    $ab2 = $fetch_imm2["ab"];
    $hcv2 = $fetch_imm2["hcv"];
    $vdrl2 = $fetch_imm2["vdrl"];
    $hiv2 = $fetch_imm2["hiv"];
    $hpylori2 = $fetch_imm2["hpylori"];
    $papSmear2 = $fetch_imm2["pap"];
    $immCalcium2 = $fetch_imm2["calcium"];
    $immPhosphorus2 = $fetch_imm2["phosphorus"];
}


$imm3 = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$year3';");
$fetch_imm3 = mysqli_fetch_array($imm3,MYSQLI_ASSOC);
if(mysqli_num_rows($imm3)==0)
{
    $hav3 = "";
    $ag3 = "";
    $ab3 = "";
    $hcv3 = "";
    $vdrl3 = "";
    $hiv3 = "";
    $hpylori3 = "";
    $papSmear3 = "";
    $immCalcium3 = "";
    $immPhosphorus3 = "";
}
else 
{
    $hav3 = $fetch_imm3["anti_hav"];
    $ag3 = $fetch_imm3["ag"];
    $ab3 = $fetch_imm3["ab"];
    $hcv3 = $fetch_imm3["hcv"];
    $vdrl3 = $fetch_imm3["vdrl"];
    $hiv3 = $fetch_imm3["hiv"];
    $hpylori3 = $fetch_imm2["hpylori"];
    $papSmear3 = $fetch_imm2["pap"];
    $immCalcium3 = $fetch_imm2["calcium"];
    $immPhosphorus3 = $fetch_imm2["phosphorus"];

}
$imm4 = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$yearconclusion';");
$fetch_imm4 = mysqli_fetch_array($imm4,MYSQLI_ASSOC);
if(mysqli_num_rows($imm4)==0)
{
    $imm_conclusion = "";
    $imm_remark = "";
}
else 
{
    $imm_conclusion = "ກວດທາງພູມຄຸ້ມກັນວິທະຍາ : ".$fetch_imm4["conclusion"];
    $imm_remark = $fetch_imm4["remark"];
}

$spiro = mysqli_query($conn,"SELECT * FROM spirometry where barcode='$barcode' AND year='$yearconclusion';");
$fetch_spiro = mysqli_fetch_array($spiro,MYSQLI_ASSOC);
if(mysqli_num_rows($spiro)==0)
{
    $fvc_means = "";
    $fevi_means = "";
    $fevi_fvc = "";
    $fvc_predict = "";
    $fevi_predict = "";
    $fvc_predicts = "";
    $fevi_predicts = "";
    $spiro_conclusion = "";
    $spiro_remark = "";
}
else 
{
    $fvc_means = $fetch_spiro["fvc_means"];
    $fevi_means = $fetch_spiro["fevi_means"];
    $fevi_fvc = $fetch_spiro["fevi_fvc"];
    $fvc_predict = $fetch_spiro["fvc_predict"];
    $fevi_predict = $fetch_spiro["fevi_predict"];
    $fvc_predicts = $fetch_spiro["fvc_predicts"];
    $fevi_predicts = $fetch_spiro["fevi_predicts"];
    $spiro_conclusion = "ກວດທາງພູມຄຸ້ມກັນວິທະຍາ : ".$fetch_spiro["conclusion"];
    $spiro_remark = $fetch_spiro["remark"];
}

$cbc = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$year';");
$fetch_cbc = mysqli_fetch_array($cbc,MYSQLI_ASSOC);
if(mysqli_num_rows($cbc)==0)
{
    $hb = "";
    $hct = "";
    $wbc = "";
    $ne = "";
    $lym = "";
    $monocyte = "";
    $eo = "";
    $baso = "";
    $platelets = "";
    $rbc = "";
    $mvc = "";
    $mch = "";
    $mchc = "";
    $red_blood = "";
}
else 
{
    $hb = $fetch_cbc["hb"];
    $hct = $fetch_cbc["hct"];
    $wbc = $fetch_cbc["wbc"];
    $ne = $fetch_cbc["ne"];
    $lym = $fetch_cbc["lym"];
    $monocyte = $fetch_cbc["monocyte"];
    $eo = $fetch_cbc["eo"];
    $baso = $fetch_cbc["baso"];
    $platelets = $fetch_cbc["platelets"];
    $rbc = $fetch_cbc["rbc"];
    $mvc = $fetch_cbc["mvc"];
    $mch = $fetch_cbc["mch"];
    $mchc = $fetch_cbc["mchc"];
    $red_blood = $fetch_cbc["red_blood"];
}
$cbc2 = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$year2';");
$fetch_cbc2 = mysqli_fetch_array($cbc2,MYSQLI_ASSOC);
if(mysqli_num_rows($cbc2)==0)
{
    $hb2 = "";
    $hct2 = "";
    $wbc2 = "";
    $ne2 = "";
    $lym2 = "";
    $monocyte2 = "";
    $eo2 = "";
    $baso2 = "";
    $platelets2 = "";
    $rbc2 = "";
    $mvc2 = "";
    $mch2 = "";
    $mchc2 = "";
    $red_blood2 = "";
}
else 
{
    $hb2 = $fetch_cbc2["hb"];
    $hct2 = $fetch_cbc2["hct"];
    $wbc2 = $fetch_cbc2["wbc"];
    $ne2 = $fetch_cbc2["ne"];
    $lym2 = $fetch_cbc2["lym"];
    $monocyte2 = $fetch_cbc2["monocyte"];
    $eo2 = $fetch_cbc2["eo"];
    $baso2 = $fetch_cbc2["baso"];
    $platelets2 = $fetch_cbc2["platelets"];
    $rbc2 = $fetch_cbc2["rbc"];
    $mvc2 = $fetch_cbc2["mvc"];
    $mch2 = $fetch_cbc2["mch"];
    $mchc2 = $fetch_cbc2["mchc"];
    $red_blood2 = $fetch_cbc2["red_blood"];
}
$cbc3 = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$year3';");
$fetch_cbc3 = mysqli_fetch_array($cbc3,MYSQLI_ASSOC);
if(mysqli_num_rows($cbc3)==0)
{
    $hb3 = "";
    $hct3 = "";
    $wbc3 = "";
    $ne3 = "";
    $lym3 = "";
    $monocyte3 = "";
    $eo3 = "";
    $baso3 = "";
    $platelets3 = "";
    $rbc3 = "";
    $mvc3 = "";
    $mch3 = "";
    $mchc3 = "";
    $red_blood3 = "";
}
else 
{
    $hb3 = $fetch_cbc3["hb"];
    $hct3 = $fetch_cbc3["hct"];
    $wbc3 = $fetch_cbc3["wbc"];
    $ne3 = $fetch_cbc3["ne"];
    $lym3 = $fetch_cbc3["lym"];
    $monocyte3 = $fetch_cbc3["monocyte"];
    $eo3 = $fetch_cbc3["eo"];
    $baso3 = $fetch_cbc3["baso"];
    $platelets3 = $fetch_cbc3["platelets"];
    $rbc3 = $fetch_cbc3["rbc"];
    $mvc3 = $fetch_cbc3["mvc"];
    $mch3 = $fetch_cbc3["mch"];
    $mchc3 = $fetch_cbc3["mchc"];
    $red_blood3 = $fetch_cbc3["red_blood"];
}
$cbc4 = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$yearconclusion';");
$fetch_cbc4 = mysqli_fetch_array($cbc4,MYSQLI_ASSOC);
if(mysqli_num_rows($cbc4)==0)
{
    $redblood = "";
    $cbc_conclusion = "";
    $cbc_remark = "";
}
else 
{
    $redblood = $fetch_cbc4["red_blood"];
    $cbc_conclusion = "ການກວດເລືອດລວມ : ".$fetch_cbc4["conclusion"];
    $cbc_remark = $fetch_cbc4["remark"];
}

$cxr = mysqli_query($conn,"SELECT * FROM x_ray where barcode='$barcode' AND year='$yearconclusion';");
$fetch_cxr = mysqli_fetch_array($cxr,MYSQLI_ASSOC);
if(mysqli_num_rows($cxr)==0)
{
    $x_ray = "";
    $cxr_conclusion = "";
    $cxr_remark = "";
}
else 
{
    $x_ray = $fetch_cxr["x_ray"];
    $cxr_conclusion = "ການກວດສ່ອງໄຟຟ້າຜົ້ງເອີກ : ".$fetch_cxr["conclusion"];
    $cxr_remark = $fetch_cxr["remark"];
}

$ekg = mysqli_query($conn,"SELECT * FROM ekg where barcode='$barcode' AND year='$yearconclusion';");
$fetch_ekg = mysqli_fetch_array($ekg,MYSQLI_ASSOC);
if(mysqli_num_rows($ekg)==0)
{
    $ekg_name = "";
    $ekg_conclusion = "";
    $ekg_remark = "";
}
else 
{
    $ekg_name = $fetch_ekg["ekg_name"];
    $ekg_conclusion = "ການກວດແທກຄື້ນໄຟຟ້າຫົວໃຈ : ".$fetch_ekg["conclusion"];
    $ekg_remark = $fetch_ekg["remark"];
}

$ultrasound = mysqli_query($conn,"SELECT * FROM ultrasound where barcode='$barcode' AND year='$yearconclusion';");
$fetch_ultrasound = mysqli_fetch_array($ultrasound,MYSQLI_ASSOC);
if(mysqli_num_rows($ekg)==0)
{
    $ultra_name = "";
    $ultra_conclusion = "";
    $ultra_remark = "";
}
else 
{
    $ultra_name = $fetch_ultrasound["ultra_name"];
    $ultra_conclusion = "ການກວດເອໂກ້ທ້ອງ  : ".$fetch_ultrasound["conclusion"];
    $ultra_remark = $fetch_ultrasound["remark"];
}

$bio = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$year';");
$fetch_bio = mysqli_fetch_array($bio,MYSQLI_ASSOC);
if(mysqli_num_rows($bio)==0)
{
    $fbs = "";
    $cho = "";
    $hdl = "";
    $ldl = "";
    $trig = "";
    $ua = "";
    $bun = "";
    $creatinine = "";
    $sgot = "";
    $sgpt = "";
    $alk = "";
    $ggt = "";
    $hbac = "";
}
else {

    $fbs = $fetch_bio["fbs"];
    $cho = $fetch_bio["cho"];
    $hdl = $fetch_bio["hdl"];
    $ldl = $fetch_bio["ldl"];
    $trig = $fetch_bio["trig"];
    $ua = $fetch_bio["ua"];
    $bun = $fetch_bio["bun"];
    $creatinine = $fetch_bio["creatinine"];
    $sgot = $fetch_bio["sgot"];
    $sgpt = $fetch_bio["sgpt"];
    $alk = $fetch_bio["alk"];
    $ggt = $fetch_bio["ggt"];
    $hbac = $fetch_bio["hbac"];
}
$bio2 = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$year2';");
$fetch_bio2 = mysqli_fetch_array($bio2,MYSQLI_ASSOC);
if(mysqli_num_rows($bio2)==0)
{
    $fbs2 = "";
    $cho2 = "";
    $hdl2 = "";
    $ldl2 = "";
    $trig2 = "";
    $ua2 = "";
    $bun2 = "";
    $creatinine2 = "";
    $sgot2 = "";
    $sgpt2 = "";
    $alk2 = "";
    $ggt2 = "";
    $hbac2 = "";
}
else {

    $fbs2 = $fetch_bio2["fbs"];
    $cho2 = $fetch_bio2["cho"];
    $hdl2 = $fetch_bio2["hdl"];
    $ldl2 = $fetch_bio2["ldl"];
    $trig2 = $fetch_bio2["trig"];
    $ua2 = $fetch_bio2["ua"];
    $bun2 = $fetch_bio2["bun"];
    $creatinine2 = $fetch_bio2["creatinine"];
    $sgot2 = $fetch_bio2["sgot"];
    $sgpt2 = $fetch_bio2["sgpt"];
    $alk2 = $fetch_bio2["alk"];
    $ggt2 = $fetch_bio2["ggt"];
    $hbac2 = $fetch_bio2["hbac"];
}
$bio3 = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$year3';");
$fetch_bio3 = mysqli_fetch_array($bio3,MYSQLI_ASSOC);
if(mysqli_num_rows($bio3)==0)
{
    $fbs3 = "";
    $cho3 = "";
    $hdl3 = "";
    $ldl3 = "";
    $trig3 = "";
    $ua3 = "";
    $bun3 = "";
    $creatinine3 = "";
    $sgot3 = "";
    $sgpt3 = "";
    $alk3 = "";
    $ggt3 = "";
    $hbac3 = "";
}
else {

    $fbs3 = $fetch_bio3["fbs"];
    $cho3 = $fetch_bio3["cho"];
    $hdl3 = $fetch_bio3["hdl"];
    $ldl3 = $fetch_bio3["ldl"];
    $trig3 = $fetch_bio3["trig"];
    $ua3 = $fetch_bio3["ua"];
    $bun3 = $fetch_bio3["bun"];
    $creatinine3 = $fetch_bio3["creatinine"];
    $sgot3 = $fetch_bio3["sgot"];
    $sgpt3 = $fetch_bio3["sgpt"];
    $alk3 = $fetch_bio3["alk"];
    $ggt3 = $fetch_bio3["ggt"];
    $hbac3 = $fetch_bio3["hbac"];
}
$bio4 = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$yearconclusion';");
$fetch_bio4 = mysqli_fetch_array($bio4,MYSQLI_ASSOC);
if(mysqli_num_rows($bio4)==0)
{
    $bio_conclusion = "";
    $bio_remark = "";
}
else 
{
    $bio_conclusion =  "ການກວດເລືອດຊີວະເຄມີ : ".$fetch_bio4["conclusion"];
    $bio_remark = $fetch_bio4["remark"];
}

$test_vision = mysqli_query($conn,"SELECT * FROM test_vision where barcode='$barcode' AND year='$yearconclusion';");
$fetch_test_vision = mysqli_fetch_array($test_vision,MYSQLI_ASSOC);
if(mysqli_num_rows($test_vision)==0)
{
    $r_short = "";
    $r_long = "";
    $r_tited = "";
    $r_color = "";
    $r_conclusion = "";
    $l_short = "";
    $l_long = "";
    $l_tited = "";
    $l_color = "";
    $l_conclusion = "";
    $test_vision_conclusion = "";
    $test_vision_remark = "";
}
else 
{
    $r_short = $fetch_test_vision["r_short"];
    $r_long = $fetch_test_vision["r_long"];
    $r_tited = $fetch_test_vision["r_tited"];
    $r_color = $fetch_test_vision["r_color"];
    $r_conclusion = $fetch_test_vision["r_conclusion"];
    $l_short = $fetch_test_vision["l_short"];
    $l_long = $fetch_test_vision["l_long"];
    $l_tited = $fetch_test_vision["l_tited"];
    $l_color = $fetch_test_vision["l_color"];
    $l_conclusion = $fetch_test_vision["l_conclusion"];
    $test_vision_conclusion ="ການກວດສາຍຕາ : " .$fetch_test_vision["conclusion"];
    $test_vision_remark = $fetch_test_vision["remark"];
}

$vision = mysqli_query($conn,"SELECT * FROM oc_vision where barcode='$barcode' AND year='$yearconclusion';");
$fetch_vision = mysqli_fetch_array($vision,MYSQLI_ASSOC);
if(mysqli_num_rows($vision)==0)
{
    $look_far = "";
    $check_eye = "";
    $look_near = "";
    $check_color = "";
    $look_up = "";
    $radius = "";
    $vision_conclusion = "";
    $vision_remark = "";
}
else 
{
    $look_far = $fetch_vision["look_far"];
    $check_eye = $fetch_vision["check_eye"];
    $look_near = $fetch_vision["look_near"];
    $check_color = $fetch_vision["check_color"];
    $look_up = $fetch_vision["look_up"];
    $radius = $fetch_vision["radius"];
    $vision_conclusion ="ການກວດສະມັດຕະພາບການເບີ່ງເຫັນ : " .$fetch_vision["conclusion"];
    $vision_remark = $fetch_vision["remark"];
}

$audio = mysqli_query($conn,"SELECT * FROM audiogram where barcode='$barcode' AND year='$yearconclusion';");
$fetch_audio = mysqli_fetch_array($audio,MYSQLI_ASSOC);
if(mysqli_num_rows($audio)==0)
{
    $r_500 = "";
    $r_1000 = "";
    $r_2000 = "";
    $r_3000 = "";
    $r_l_avg = "";
    $r_4000 = "";
    $r_6000 = "";
    $r_8000 = "";
    $r_h_avg = "";
    $l_500 = "";
    $l_1000 = "";
    $l_2000 = "";
    $l_3000 = "";
    $l_l_avg = "";
    $l_4000 = "";
    $l_6000 = "";
    $l_8000 = "";
    $l_h_avg = "";
    $audio_conclusion = "";
    $audio_remark = "";
}
else 
{
    $r_500 = $fetch_audio["r_500"];
    $r_1000 = $fetch_audio["r_1000"];
    $r_2000 = $fetch_audio["r_2000"];
    $r_3000 = $fetch_audio["r_3000"];
    $r_l_avg = $fetch_audio["r_l_avg"];
    $r_4000 = $fetch_audio["r_4000"];
    $r_6000 = $fetch_audio["r_6000"];
    $r_8000 = $fetch_audio["r_8000"];
    $r_h_avg = $fetch_audio["r_h_avg"];
    $l_500 = $fetch_audio["l_500"];
    $l_1000 = $fetch_audio["l_1000"];
    $l_2000 = $fetch_audio["l_2000"];
    $l_3000 = $fetch_audio["l_3000"];
    $l_l_avg = $fetch_audio["l_l_avg"];
    $l_4000 = $fetch_audio["l_4000"];
    $l_6000 = $fetch_audio["l_6000"];
    $l_8000 = $fetch_audio["l_8000"];
    $l_h_avg = $fetch_audio["l_h_avg"];
    $audio_conclusion = "ການກວດສະມັດຕະພາບການໄດ້ຍິນ : ".$fetch_audio["conclusion"];
    $audio_remark = $fetch_audio["remark"];
}

$muscle = mysqli_query($conn,"SELECT * FROM muscle where barcode='$barcode' AND year='$yearconclusion';");
$fetch_muscle = mysqli_fetch_array($muscle,MYSQLI_ASSOC);
if(mysqli_num_rows($muscle)==0)
{
    $muscle_name = "";
    $muscle_conclusion = "";
    $muscle_remark = "";
}
else 
{
    $muscle_name = $fetch_muscle["muscle_name"];
    $muscle_conclusion = "ການກວດທົດສອບສະມັດຕະພາບກ້າມ : " .$fetch_muscle["conclusion"];
    $muscle_remark = $fetch_muscle["remark"];
}


$metal = mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$year';");
$fetch_metal = mysqli_fetch_array($metal,MYSQLI_ASSOC);
if(mysqli_num_rows($metal)==0)
{
    $ether = "";
    $ethy = "";
    $nickle = "";
    $manganese = "";
    $tim = "";
    $blood = "";
    $m_i_urine = "";
    $b_a_u = "";
    $c_u = "";
    $alcoho = "";
    $silica = "";
    $methy = "";
    $a_i_urine = "";
    $t_i_urine = "";
    $methy_urine = "";
    $methanoi_urine = "";
    $phenolic_resin = "";
    $leadInBlood = "";
    $chromiumInBlood = "";
    $copperInBlood = "";
    $aluminiumInBlood = "";
    $zineInBlood = "";
    $arsenicInBlood = "";
    $xyleneInBlood = "";
    $methylEthylKetoneInUrine = "";
}
else {
    $ether = $fetch_metal["ether"];
    $ethy = $fetch_metal["ethy"];
    $nickle = $fetch_metal["nickle"];
    $manganese = $fetch_metal["manganese"];
    $tim = $fetch_metal["tim"];
    $blood = $fetch_metal["blood"];
    $m_i_urine = $fetch_metal["m_i_urine"];
    $b_a_u = $fetch_metal["b_a_u"];
    $c_u = $fetch_metal["c_u"];
    $alcoho = $fetch_metal["alcoho"];
    $silica = $fetch_metal["silica"];
    $methy = $fetch_metal["methy"];
    $a_i_urine = $fetch_metal["a_i_urine"];
    $t_i_urine = $fetch_metal["t_i_urine"];
    $methy_urine = $fetch_metal["methy_urine"];
    $methanoi_urine = $fetch_metal["methanoi_urine"];
    $phenolic_resin = $fetch_metal["phenolic_resin"];
    $leadInBlood = $fetch_metal["lead"];
    $chromiumInBlood = $fetch_metal["chromlum"];
    $copperInBlood = $fetch_metal["copper"];
    $aluminiumInBlood = $fetch_metal["alum"];
    $zineInBlood = $fetch_metal["zine"];
    $arsenicInBlood = $fetch_metal["arsenic"];
    $xyleneInBlood = $fetch_metal["xylene"];
    $methylEthylKetoneInUrine = $fetch_metal["m_e_k_i_urine"];
}
$metal2 = mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$year2';");
$fetch_metal2 = mysqli_fetch_array($metal2,MYSQLI_ASSOC);
if(mysqli_num_rows($metal2)==0)
{
    $ether2 = "";
    $ethy2 = "";
    $nickle2 = "";
    $manganese2 = "";
    $tim2 = "";
    $blood2 = "";
    $m_i_urine2 = "";
    $b_a_u2 = "";
    $c_u2 = "";
    $alcoho2 = "";
    $silica2 = "";
    $methy2 = "";
    $a_i_urine2 = "";
    $t_i_urine2 = "";
    $methy_urine2 = "";
    $methanoi_urine2 = "";
    $phenolic_resin2 = "";
    $leadInBlood2 = "";
    $chromiumInBlood2 = "";
    $copperInBlood2 = "";
    $aluminiumInBlood2 = "";
    $zineInBlood2 = "";
    $arsenicInBlood2 = "";
    $xyleneInBlood2 = "";
    $methylEthylKetoneInUrine2 = "";
}
else {
    $ether2 = $fetch_metal2["ether"];
    $ethy2 = $fetch_metal2["ethy"];
    $nickle2 = $fetch_metal2["nickle"];
    $manganese2 = $fetch_metal2["manganese"];
    $tim2 = $fetch_metal2["tim"];
    $blood2 = $fetch_metal2["blood"];
    $m_i_urine2 = $fetch_metal2["m_i_urine"];
    $b_a_u2 = $fetch_metal2["b_a_u"];
    $c_u2 = $fetch_metal2["c_u"];
    $alcoho2 = $fetch_metal2["alcoho"];
    $silica2 = $fetch_metal2["silica"];
    $methy2 = $fetch_metal2["methy"];
    $a_i_urine2 = $fetch_metal2["a_i_urine"];
    $t_i_urine2 = $fetch_metal2["t_i_urine"];
    $methy_urine2 = $fetch_metal2["methy_urine"];
    $methanoi_urine2 = $fetch_metal2["methanoi_urine"];
    $phenolic_resin2 = $fetch_metal2["phenolic_resin"];
    $leadInBlood2 = $fetch_metal2["lead"];
    $chromiumInBlood2 = $fetch_metal2["chromlum"];
    $copperInBlood2 = $fetch_metal2["copper"];
    $aluminiumInBlood2 = $fetch_metal2["alum"];
    $zineInBlood2 = $fetch_metal2["zine"];
    $arsenicInBlood2 = $fetch_metal2["arsenic"];
    $xyleneInBlood2 = $fetch_metal2["xylene"];
    $methylEthylKetoneInUrine2 = $fetch_metal2["m_e_k_i_urine"];
}
$metal3 = mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$year3';");
$fetch_metal3 = mysqli_fetch_array($metal3,MYSQLI_ASSOC);
if(mysqli_num_rows($metal3)==0)
{
    $ether3 = "";
    $ethy3 = "";
    $nickle3 = "";
    $manganese3 = "";
    $tim3 = "";
    $blood3 = "";
    $m_i_urine3 = "";
    $b_a_u3 = "";
    $c_u3 = "";
    $alcoho3 = "";
    $silica3 = "";
    $methy3 = "";
    $a_i_urine3 = "";
    $t_i_urine3 = "";
    $methy_urine3 = "";
    $methanoi_urine3 = "";
    $phenolic_resin3 = "";
    $leadInBlood3 = "";
    $chromiumInBlood3 = "";
    $copperInBlood3 = "";
    $aluminiumInBlood3 = "";
    $zineInBlood3 = "";
    $arsenicInBlood3 = "";
    $xyleneInBlood3 = "";
    $methylEthylKetoneInUrine3 = "";
}
else {
    $ether3 = $fetch_metal3["ether"];
    $ethy3 = $fetch_metal3["ethy"];
    $nickle3 = $fetch_metal3["nickle"];
    $manganese3 = $fetch_metal3["manganese"];
    $tim3 = $fetch_metal3["tim"];
    $blood3 = $fetch_metal3["blood"];
    $m_i_urine3 = $fetch_metal3["m_i_urine"];
    $b_a_u3 = $fetch_metal3["b_a_u"];
    $c_u3 = $fetch_metal3["c_u"];
    $alcoho3 = $fetch_metal3["alcoho"];
    $silica3 = $fetch_metal3["silica"];
    $methy3 = $fetch_metal3["methy"];
    $a_i_urine3 = $fetch_metal3["a_i_urine"];
    $t_i_urine3 = $fetch_metal3["t_i_urine"];
    $methy_urine3 = $fetch_metal3["methy_urine"];
    $methanoi_urine3 = $fetch_metal3["methanoi_urine"];
    $phenolic_resin3 = $fetch_metal3["phenolic_resin"];
    $leadInBlood3 = $fetch_metal3["lead"];
    $chromiumInBlood3 = $fetch_metal3["chromlum"];
    $copperInBlood3 = $fetch_metal3["copper"];
    $aluminiumInBlood3 = $fetch_metal3["alum"];
    $zineInBlood3 = $fetch_metal3["zine"];
    $arsenicInBlood3 = $fetch_metal3["arsenic"];
    $xyleneInBlood3 = $fetch_metal3["xylene"];
    $methylEthylKetoneInUrine3 = $fetch_metal3["m_e_k_i_urine"];
}
$metal4= mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$yearconclusion';");
$fetch_metal4 = mysqli_fetch_array($metal4,MYSQLI_ASSOC);
if(mysqli_num_rows($metal4)==0)
{
    $metal_conclusion = "";
    $metal_remark = "";
}
else 
{
    $metal_conclusion = "ການກວດວິເຄາະຫາທາດໂລຫະໜັກ : " .$fetch_metal4["conclusion"];
    $metal_remark = $fetch_metal4["remark"];
}

$urine = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$year';");
$fetch_urine = mysqli_fetch_array($urine,MYSQLI_ASSOC);
if(mysqli_num_rows($urine)==0)
{
    $coloru = "";
    $appearance = "";
    $ph = "";
    $specifics = "";
    $protein = "";
    $sugar = "";
    $ketone = "";
    $blood_urine = "";
    $wbc_urine = "";
    $rbc_urine = "";
    $epit = "";
}
else {
    $coloru = $fetch_urine["color"];
    $appearance = $fetch_urine["appearance"];
    $ph = $fetch_urine["ph"];
    $specifics = $fetch_urine["specifics"];
    $protein = $fetch_urine["protein"];
    $sugar = $fetch_urine["sugar"];
    $ketone = $fetch_urine["ketone"];
    $blood_urine = $fetch_urine["blood"];
    $wbc_urine = $fetch_urine["wbc"];
    $rbc_urine = $fetch_urine["rbc"];
    $epit = $fetch_urine["epit"];
}
$urine2 = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$year2';");
$fetch_urine2 = mysqli_fetch_array($urine2,MYSQLI_ASSOC);
if(mysqli_num_rows($urine2)==0)
{
    $coloru2 = "";
    $appearance2 = "";
    $ph2 = "";
    $specifics2 = "";
    $protein2 = "";
    $sugar2 = "";
    $ketone2 = "";
    $blood_urine2 = "";
    $wbc_urine2 = "";
    $rbc_urine2 = "";
    $epit2 = "";
}
else {
    $coloru2 = $fetch_urine2["color"];
    $appearance2 = $fetch_urine2["appearance"];
    $ph2 = $fetch_urine2["ph"];
    $specifics2 = $fetch_urine2["specifics"];
    $protein2 = $fetch_urine2["protein"];
    $sugar2 = $fetch_urine2["sugar"];
    $ketone2 = $fetch_urine2["ketone"];
    $blood_urine2 = $fetch_urine2["blood"];
    $wbc_urine2 = $fetch_urine2["wbc"];
    $rbc_urine2 = $fetch_urine2["rbc"];
    $epit2 = $fetch_urine2["epit"];
}
$urine3 = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$year3';");
$fetch_urine3 = mysqli_fetch_array($urine3,MYSQLI_ASSOC);
if(mysqli_num_rows($urine3)==0)
{
    $coloru3 = "";
    $appearance3 = "";
    $ph3 = "";
    $specifics3 = "";
    $protein3 = "";
    $sugar3 = "";
    $ketone3 = "";
    $blood_urine3 = "";
    $wbc_urine3 = "";
    $rbc_urine3 = "";
    $epit3 = "";
}
else {
    $coloru3 = $fetch_urine3["color"];
    $appearance3 = $fetch_urine3["appearance"];
    $ph3 = $fetch_urine3["ph"];
    $specifics3 = $fetch_urine3["specifics"];
    $protein3 = $fetch_urine3["protein"];
    $sugar3 = $fetch_urine3["sugar"];
    $ketone3 = $fetch_urine3["ketone"];
    $blood_urine3 = $fetch_urine3["blood"];
    $wbc_urine3 = $fetch_urine3["wbc"];
    $rbc_urine3 = $fetch_urine3["rbc"];
    $epit3 = $fetch_urine3["epit"];
}
$urine4 = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$yearconclusion';");
$fetch_urine4 = mysqli_fetch_array($urine4,MYSQLI_ASSOC);
if(mysqli_num_rows($urine4)==0)
{
    $urine_conclusion = "";
    $urine_remark = "";
}
else 
{
    $urine_conclusion = "ການກວດປັດສະວະ : ". $fetch_urine4["conclusion"];
    $urine_remark = $fetch_urine4["remark"];
}

$methamphetamine = mysqli_query($conn,"SELECT * FROM methamphetamine where barcode='$barcode' AND year='$year';");
$fetch_methamphetamine = mysqli_fetch_array($methamphetamine,MYSQLI_ASSOC);
if(mysqli_num_rows($methamphetamine)==0)
{
    $meth = "";

}
else {
    $meth = $fetch_methamphetamine["methamphetamine"];
}
$methamphetamine2 = mysqli_query($conn,"SELECT * FROM methamphetamine where barcode='$barcode' AND year='$year2';");
$fetch_methamphetamine2 = mysqli_fetch_array($methamphetamine2,MYSQLI_ASSOC);
if(mysqli_num_rows($methamphetamine2)==0)
{
    $meth2 = "";

}
else {
    $meth2 = $fetch_methamphetamine2["methamphetamine"];
}
$methamphetamine3 = mysqli_query($conn,"SELECT * FROM methamphetamine where barcode='$barcode' AND year='$year3';");
$fetch_methamphetamine3 = mysqli_fetch_array($methamphetamine3,MYSQLI_ASSOC);
if(mysqli_num_rows($methamphetamine3)==0)
{
    $meth3 = "";

}
else {
    $meth3 = $fetch_methamphetamine3["methamphetamine"];
}
$methamphetamine4 = mysqli_query($conn,"SELECT * FROM methamphetamine where barcode='$barcode' AND year='$yearconclusion';");
$fetch_methamphetamine4 = mysqli_fetch_array($methamphetamine4,MYSQLI_ASSOC);
if(mysqli_num_rows($methamphetamine4)==0)
{
    $meth_conclusion = "";
    $meth_remark = "";
}
else {
    $meth_conclusion = "ການກວດຫາສານເສບຕິດ : ".$fetch_methamphetamine4["conclusion"];
    $meth_remark = $fetch_methamphetamine4["remark"];
}


$thyroid = mysqli_query($conn,"SELECT * FROM thryroid where barcode='$barcode' AND year='$year';");
$fetch_thyroid = mysqli_fetch_array($thyroid,MYSQLI_ASSOC);
if(mysqli_num_rows($thyroid)==0)
{
    $free_t3 = "";
    $free_t4 = "";
    $tsh = "";
    $t3 = "";
    $t4 = "";
    $thyroid_conclusion = "";
    $thyroid_remark = "";
}
else {
    $free_t3 = $fetch_thyroid["free_t3"];
    $free_t4 = $fetch_thyroid["free_t4"];
    $tsh = $fetch_thyroid["tsh"];
    $t3 = $fetch_thyroid["t3"];
    $t4 = $fetch_thyroid["t4"];
    $thyroid_conclusion ="ການກວດຮໍໂມນຕ່ອມຄໍ : " .$fetch_thyroid["conclusion"];
    $thyroid_remark = $fetch_thyroid["remark"];
}

$stool = mysqli_query($conn,"SELECT * FROM se where barcode='$barcode' AND year='$year';");
$fetch_stool = mysqli_fetch_array($stool,MYSQLI_ASSOC);
if(mysqli_num_rows($stool)==0)
{
    $color = "";
    $stool_ap = "";
    $stoolwbc = "";
    $stoolrbc = "";
    $parasite = "";
    $samonella = "";
    $shigella = "";
    $vivrio = "";
    $vibrio = "";
    $stool_conclusion = "";
    $stool_remark = "";
}
else {
    $color = $fetch_stool["color"];
    $stool_ap = $fetch_stool["stool_ap"];
    $stoolwbc = $fetch_stool["wbc"];
    $stoolrbc = $fetch_stool["rbc"];
    $parasite = $fetch_stool["parasite"];
    $samonella = $fetch_stool["samonella"];
    $shigella = $fetch_stool["shigella"];
    $vivrio = $fetch_stool["vivrio"];
    $vibrio = $fetch_stool["vibrio"];
    $stool_conclusion ="ການກວດອາຈົມ : " .$fetch_stool["conclusion"];
    $stool_remark = $fetch_stool["remark"];
}

$tumor = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$year';");
$fetch_tumor = mysqli_fetch_array($tumor,MYSQLI_ASSOC);
if(mysqli_num_rows($tumor)==0)
{
    $afp = "";
    $cea = "";
    $psa = "";
    $ca_19 = "";
    $ca_15 = "";
    $ca_125 = "";

}
else {
    $afp = $fetch_tumor["afp"];
    $cea = $fetch_tumor["cea"];
    $psa = $fetch_tumor["psa"];
    $ca_19 = $fetch_tumor["ca_19"];
    $ca_15 = $fetch_tumor["ca_15"];
    $ca_125 = $fetch_tumor["ca_125"];
}
$tumor2 = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$year2';");
$fetch_tumor2 = mysqli_fetch_array($tumor2,MYSQLI_ASSOC);
if(mysqli_num_rows($tumor2)==0)
{
    $afp2 = "";
    $cea2 = "";
    $psa2 = "";
    $ca_192 = "";
    $ca_152 = "";
    $ca_1252 = "";

}
else {
    $afp2 = $fetch_tumor2["afp"];
    $cea2 = $fetch_tumor2["cea"];
    $psa2 = $fetch_tumor2["psa"];
    $ca_192 = $fetch_tumor2["ca_19"];
    $ca_152 = $fetch_tumor2["ca_15"];
    $ca_1252 = $fetch_tumor2["ca_125"];
}
$tumor3 = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$year3';");
$fetch_tumor3 = mysqli_fetch_array($tumor3,MYSQLI_ASSOC);
if(mysqli_num_rows($tumor3)==0)
{
    $afp3 = "";
    $cea3 = "";
    $psa3 = "";
    $ca_193 = "";
    $ca_153 = "";
    $ca_1253 = "";

}
else {
    $afp3 = $fetch_tumor3["afp"];
    $cea3 = $fetch_tumor3["cea"];
    $psa3 = $fetch_tumor3["psa"];
    $ca_193 = $fetch_tumor3["ca_19"];
    $ca_153 = $fetch_tumor3["ca_15"];
    $ca_1253 = $fetch_tumor3["ca_125"];
}
$tumor4 = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$yearconclusion';");
$fetch_tumor4 = mysqli_fetch_array($tumor4,MYSQLI_ASSOC);
if(mysqli_num_rows($tumor4)==0)
{
    $tumor_conclusion = "";
    $tumor_remark = "";
}
else {
    $tumor_conclusion ="ການກວດຕົວບົ່ງຊີ້ມະເຮັງ : ".$fetch_tumor4["conclusion"];
    $tumor_remark = $fetch_tumor4["remark"];
}




$gttgk = mysqli_query($conn,"SELECT * FROM tumor_gttgk where barcode='$barcode' AND year='$year';");
$fetch_gttgk = mysqli_fetch_array($gttgk,MYSQLI_ASSOC);
if(mysqli_num_rows($gttgk)==0)
{
    $total_bill = "";
    $drect_bill = "";
    $gttgk_protein = "";
    $ambumin = "";
    $globulin = "";
}
else {
    $total_bill = $fetch_gttgk["total_bill"];
    $drect_bill = $fetch_gttgk["drect_bill"];
    $gttgk_protein = $fetch_gttgk["protein"];
    $ambumin = $fetch_gttgk["ambumin"];
    $globulin = $fetch_gttgk["globulin"];
}
$gttgk2 = mysqli_query($conn,"SELECT * FROM tumor_gttgk where barcode='$barcode' AND year='$year2';");
$fetch_gttgk2 = mysqli_fetch_array($gttgk2,MYSQLI_ASSOC);
if(mysqli_num_rows($gttgk2)==0)
{
    $total_bill2 = "";
    $drect_bill2 = "";
    $gttgk_protein2 = "";
    $ambumin2 = "";
    $globulin2 = "";
}
else {
    $total_bill2 = $fetch_gttgk2["total_bill"];
    $drect_bill2 = $fetch_gttgk2["drect_bill"];
    $gttgk_protein2 = $fetch_gttgk2["protein"];
    $ambumin2 = $fetch_gttgk2["ambumin"];
    $globulin2 = $fetch_gttgk2["globulin"];
}
$gttgk3 = mysqli_query($conn,"SELECT * FROM tumor_gttgk where barcode='$barcode' AND year='$year3';");
$fetch_gttgk3 = mysqli_fetch_array($gttgk3,MYSQLI_ASSOC);
if(mysqli_num_rows($gttgk3)==0)
{
    $total_bill3 = "";
    $drect_bill3 = "";
    $gttgk_protein3 = "";
    $ambumin3 = "";
    $globulin3 = "";
}
else {
    $total_bill3 = $fetch_gttgk3["total_bill"];
    $drect_bill3 = $fetch_gttgk3["drect_bill"];
    $gttgk_protein3 = $fetch_gttgk3["protein"];
    $ambumin3 = $fetch_gttgk3["ambumin"];
    $globulin3 = $fetch_gttgk3["globulin"];
}
$gttgk4 = mysqli_query($conn,"SELECT * FROM tumor_gttgk where barcode='$barcode' AND year='$year4';");
$fetch_gttgk4 = mysqli_fetch_array($gttgk4,MYSQLI_ASSOC);
if(mysqli_num_rows($gttgk4)==0)
{
    $gttgk_conclusion = "";
    $gttgk_remark = "";
}
else {
    $gttgk_conclusion = $fetch_gttgk4["conclusion"];
    $gttgk_remark = $fetch_gttgk4["remark"];
}

?>


<body>


    <style>
    @media print {
        .btnprint {
            display: none;
        }
    }

    body {
        background-color: rgb(204, 204, 204);
        font-size: 12px;
        font-Family: "Phetsarath OT";
    }

    .paper {
        width: 297mm;
        height: 210mm;
        line-height: 1.8;
        background-color: white;
        color: #333BFF;

    }

    .paper-left {
        border: 0.5mm solid #D62611;
        height: 200mm;
        width: 46%;
        margin-top: 18px;
        margin-right: 35px;
        margin-left: 35px;

    }

    .paper-right {
        border: 0.5mm solid #D62611;
        height: 200mm;
        width: 46%;
        margin-top: 18px;
    }

    .title {
        font-size: 14px;
        text-align: center;
        border: 0.5mm outset #33A5FF;
        margin: 5px 5px 5px 5px;
        padding: 2px 2px 2px 2px;
        color: #16629D;
    }


    .border th {
        border: 0.5px solid #FF9C33;
    }

    .border td {
        border: 0.5px solid #FF9C33;
    }

    .pagination {
        position: absolute;
        z-index: 1;
        color: black;
    }

    .signature {
        position: absolute;
        left: 80mm;
        top: 170mm;
        z-index: 1;
    }

    .content {
        margin-top: 25px;
    }

    .date {
        font-size: 10px;
        text-align: center;
        margin-top: 3px;
        margin-left: 150px;
        margin-bottom: 50px;
        color: #16629D;
    }

    .info {
        margin-top: 20px;
        margin-left: 30px;
    }

    .btnprint {
        bottom: 50%;
        right: 10%;
        position: fixed;
        z-index: 3000;
    }
    </style>

    <button type="button" class="btn btn-primary btnprint" onclick="window.print();"><span
            class="fas fa-print">&nbsp;</span>Print</button>

    <div class="paper" style="page-break-after:always;">
        <div class="row">
            <div class="col-md-6 paper-left">
                <div class="title">
                    ສະຫຼູບຜົນ/ຂໍ້ຄິດເຫັນ/ຄຳແນະນຳ (Conclusion/Suggestion/Recommendation)
                </div>
                <div class="content">
                    <div class="row">
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($pe_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($pe_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($cbc_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($cbc_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($bio_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($bio_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($urine_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($urine_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($meth_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($meth_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($thyroid_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($thyroid_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($stool_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($stool_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($tumor_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($tumor_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($metal_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($metal_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($vision_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($vision_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($audio_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($audio_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($muscle_conclusion);?>
                        </div>
                        <!-- <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($muscle_remark);?>
                        </div> -->
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($spiro_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($spiro_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($cxr_conclusion);?>
                        </div>
                        <!-- <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($cxr_remark);?>
                        </div> -->
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($ekg_conclusion);?>
                        </div>
                        <!-- <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($ekg_remark);?>
                        </div> -->
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($ultra_conclusion);?>
                        </div>
                        <!-- <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($ultra_remark);?>
                        </div> -->
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($imm_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($imm_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($stool_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($stool_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($gttgk_conclusion);?>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <?php echo nl2br($gttgk_remark);?>
                        </div>
                    </div>
                </div>
                <div class="signature">
                    ລາຍເຊັນທ່ານໝໍ/Physician
                </div>
                <div class="pagination" style="left: 140mm;top: 195mm;">
                    12
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ປື້ມລາຍງານຜົນກວດສຸຂະພາບປະຈຳປີ (Health Check up Report)
                </div>
                <div class="date">
                    ວັນທີເຂົາຮັບການກວດ/Examination Date: <b
                        style="color: black;"><?php echo date("d/m/Y ", strtotime($date));?></b>
                </div>
                <div class="info">
                    <br>
                    <div class="row">
                        <div class="col-sm-7">
                            <div style="">
                                ຊື່ແລະນາມສະກຸນ: &nbsp;&nbsp;
                                <b style="color: black;"><?php  echo $emp_name; echo"&nbsp;"; echo $surname;?></b>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div style="">
                                ລຳດັບ: &nbsp;&nbsp; <b style="color: black;"><?php echo $queue;?></b>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div style="">
                                ລະຫັດພະນັກງານ: &nbsp;&nbsp; <b style="color: black;"><?php echo $emp_id;?></b>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div style="">
                                ພະແນກ: &nbsp;&nbsp; <b style="color: black;"><?php echo $department;?></b>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div style="">
                                ບໍລິສັດ: &nbsp;&nbsp; <b style="color: black;"><?php echo $company;?></b>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div style="">
                                ເລກປະຈຳຕົວ: &nbsp;&nbsp; <b style="color: black;"><?php echo $barcode;?></b>
                            </div>
                        </div>
                        <div class="col-sm-7" style="margin-top:20px">
                            <div style="">
                                ເພດ/Gender: <span style="margin-left:120px;color:black;"> <b><?php echo $gender;?></b>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-5" style="margin-top:20px">
                            <div style="">
                                ວັນ,ເດືອນ,ປີເກີດ: <span style="margin-left:10px">
                                    <b style="color: black;"><?php echo date("d/m/Y ", strtotime($dob));?></b> </span>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div style="">
                                ອາຍຸ/Age: <span style="margin-left:140px;color:black;"> <b><?php echo $age;?></b>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div style="">
                                ສະຖານະຄອບຄົວ: <span style="margin-left:10px">
                                    <b style="color: black;"><?php echo $family_stt;?></b> </span>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <div class="info">
                    <div class="row">
                        <div class="col-sm-7">
                            <div>
                                ສັນຊາດ/Nationality: &nbsp;&nbsp; <b style="color: black;"><?php echo $nation;?></b>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div style="">
                                ຊົນເຜົ່າ/Ethnic: &nbsp;&nbsp; <b style="color: black;"><?php echo $ethnic;?></b>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ສາດສະໜາ/Religion: &nbsp;&nbsp; <b style="color: black;"><?php echo $religion;?></b>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ທີຢູ່ປະຈຸບັນ/Current Address: &nbsp;&nbsp; <b style="color: black;"><?php echo $current_address?></b>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div>
                                ເຮືອນເລກທີ/ໜ່ວຍ/House No/Unit:
                                <span style="margin-left:30px;"><b
                                        style="color: black;"><?php echo $house_no;?></b></span>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div>
                                ຖະໜົນ/Road: &nbsp;&nbsp; <b style="color: black;"><?php echo $road;?></b>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div>
                                ບ້ານ/Village: &nbsp;&nbsp; <b style="color: black;"><?php echo $village;?></b>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div>
                                ເມືອງ/District: &nbsp;&nbsp; <b style="color: black;"><?php echo $district;?></b>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ແຂວງ/Province: &nbsp;&nbsp; <b style="color: black;"><?php echo $province;?></b>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ເບີໂທລະສັບ/Phone Number: &nbsp;&nbsp; <b style="color: black;"><?php echo $tel;?></b>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ທີ່ຢູ່ອີເມລ/Email Address: &nbsp;&nbsp; <b style="color: black;"><?php echo $email;?></b>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="pagination" style="left: 290mm;top: 195mm;">
                    1
                </div>
            </div>
        </div>
    </div>
    <!-- end paper 12-1 -->
    <!-- start paper 2-11 -->
    <div class="paper" style="page-break-after:always;">
        <div class="row">
            <div class="col-md-6 paper-left">
                <div class="title">
                    ການກວດຮ່າງກາຍທົ່ວໄປ (Physical Examination)
                </div>
                <div class="row">
                    <div class="col-sm-7">
                        ປະຫວັດພະຍາດປະຈູບັນ/History of Presenting illness :
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3" style="color: black;">
                        <?php echo $barcode;?>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <?php echo $hpi;?>
                    </div>
                    <div class="col-sm-12">
                        ປະຫວັດພະຍາດຜ່ານມາ/Past Medical History illness : <b
                            style="color: black;"><?php echo $pmhi;?></b>
                    </div>
                    <div class="col-sm-12">
                        ສ່ວນຕົວ/Personal : <b style="color: black;"> <?php echo $personal;?></b>
                    </div>
                    <div class="col-sm-12">
                        ຄອບຄົວ/Family : <b style="color: black;"> <?php echo $family;?></b>
                    </div>
                    <div class="col-sm-12">
                        ປະວັດການດື່ມສີ່ງມຶນເມົາແລະສູບຢາ/Alcohol,Smoking illness : <b
                            style="color: black;"><?php echo $asi;?></b>
                    </div>
                    <div class="col-sm-4">
                        ລວງສູງ/Height:
                    </div>
                    <div class="col-sm-1">
                        <b style="color: black;"><?php echo $height;?></b>
                    </div>
                    <div class="col-sm-1">
                        Cms.
                    </div>
                    <div class="col-sm-1">
                        &nbsp;
                    </div>
                    <div class="col-sm-3" style="text-align:left">
                        ນ້ຳໜັກ(Weight):
                    </div>
                    <div class="col-sm-2">
                        <b style="color: black;"><?php echo $weight;?></b>&nbsp;&nbsp; Kgs.
                    </div>
                    <div class="col-sm-5">
                        ດັດສະນີມວນສານຂອງຮ່າງກາຍ (BMI)
                    </div>
                    <div class="col-sm-1" style="color: black;">
                        <b><?php echo $bmi;?></b>
                    </div>
                    <div class="col-sm-1">

                    </div>
                    <div class="col-sm-3" style="text-align:left">
                        Asia Rate[18.5-23]
                    </div>
                    <div class="col-sm-5">
                        ຄວາມດັນເລືອດ (Blood Pressure)
                    </div>
                    <div class="col-sm-1" style="color: black;">
                        <b><?php echo $bp;?></b>
                    </div>
                    <div class="col-sm-1">

                    </div>
                    <div class="col-sm-4" style="text-align:left">
                        [90-139]/[60-89](mmHg)
                    </div>
                    <div class="col-sm-4">
                        ກຳມະຈອນ (Pulse)
                    </div>
                    <div class="col-sm-1" style="color: black;">
                        <b><?php echo $pulse;?></b>
                    </div>
                    <div class="col-sm-4">
                        ເທື່ອ/ນາທີ[60-100]
                    </div>
                    <div class="col-sm-5">
                        ໝວດເລືອດ ABO :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $abo;?></b>
                    </div>
                    <div class="col-sm-5">
                        ຕາ (Eyes) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $eye;?></b>
                    </div>
                    <div class="col-sm-5">
                        ແຂ້ວ/ຟັນແຂ້ວ (Teeth/Gum) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $teeth;?></b>
                    </div>
                    <div class="col-sm-5">
                        ຫູ/ດັງ/ຄໍ (Ears/Nose/Throat) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $ears;?></b>
                    </div>
                    <div class="col-sm-5">
                        ຕ່ອມນ້ຳເຫຼືອງ (Lymph Nodes) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $lymph;?></b>
                    </div>
                    <div class="col-sm-5">
                        ຕ່ອມໄທລອຍ (Thyroid Gland) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $thyroidpe;?></b>
                    </div>
                    <div class="col-sm-5">
                        ແຂນ/ຂາ (Extremities) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $extremities;?></b>
                    </div>
                    <div class="col-sm-5">
                        ຜິວໜັງ (Skin) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $skin;?></b>
                    </div>
                    <div class="col-sm-5">
                        ຫົວໃຈ (Heart) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $hear;?></b>
                    </div>
                    <div class="col-sm-5">
                        ປອດ (Lung) :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $lung;?></b>
                    </div>
                    <!-- <div class="col-sm-5">
                        ທ້ອງ/ຕັບ/ປ້າງ (Abdomen/Liver/Spleen):
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $als;?></b>
                    </div> -->
                    <div class="col-sm-5">
                        ອື່ນໆ/Other :
                    </div>
                    <div class="col-sm-5" style="color: black;">
                        <b><?php echo $other;?></b>
                    </div>
                    <br>
                    <br>
                    <div class="col-sm-12">
                        ***ສະຫຼູບແລະຄຳເຫັນຂອງແພດກວດກາ/Conclusion and Recommendation
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($pe_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($pe_remark);?></b>
                    </div>

                </div>
                <div class="pagination" style="left: 140mm;top: 407mm;">
                    2
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ(LABORATORY EXAMINATION)
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        *ກວດທາງພູມຄຸ້ມກັນວິທະຍາ
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th> </th>
                                <th> <?php echo $year; ?> <br> Results </th>
                                <th><?php echo $year2; ?> <br> Results</th>
                                <!-- <th><?php echo $year3; ?> <br> Results</th> -->
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Anti HAV-IgM</td>
                                <td></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hav;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hav2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $hav3;?></b></td> -->
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HBsAg</td>
                                <th>ກວດຫາເຊື້ອໄວຣັສບີ</th>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ag;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ag2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $ag3;?></b></td> -->
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HBsAb</td>
                                <th>ກວດຫາພູມໄວຣັສບີ</th>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ab;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ab2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $ab3;?></b></td> -->
                                <td style="text-align:center">Positive</td>
                            </tr>
                            <tr>
                                <td>Anti-HCV</td>
                                <th>ກວດຫາເຊື້ອໄວຣັສຊີ</th>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hcv;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hcv2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $hcv3;?></b></td> -->
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>VDRL</td>
                                <th>ກວດຫາເຊື້ອຊີຟີຮິດ</th>
                                <td style="text-align:center"><b style="color: black;"><?php echo $vdrl;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $vdrl2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $vdrl3;?></b></td> -->
                                <td style="text-align:center">Non-Reactive</td>
                            </tr>
                            <tr>
                                <td>HIV</td>
                                <td></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hiv;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hiv2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $hiv3;?></b></td> -->
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HPylori</td>
                                <td></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hpylori;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hpylori2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $hpylori3;?></b></td> -->
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>PAP Smear</td>
                                <td></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $papSmear;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $papSmear2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $papSmear3;?></b></td> -->
                                <td style="text-align:center">Normal</td>
                            </tr>
                            <tr>
                                <td>Calcium</td>
                                <td></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immCalcium;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immCalcium2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $immCalcium3;?></b></td> -->
                                <td style="text-align:center">( 8.0-10.0 mg/dl )</td>
                            </tr>
                            <tr>
                                <td>Phosphorus</td>
                                <td></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immPhosphorus;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immPhosphorus2;?></b></td>
                                <!-- <td style="text-align:center"><b style="color: black;"><?php echo $immPhosphorus3;?></b></td> -->
                                <td style="text-align:center">( 3.5-5.5 mg/dl )</td>
                            </tr>
                        </table>
                        <br>
                        <div class="col-sm-12">
                            ***ສະຫຼຸບຜົນກວດເລືອດເຄມີ (Biochemical Interpretation) :
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <b><?php echo nl2br($imm_conclusion);?></b>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <b><?php echo nl2br($imm_remark);?></b>
                        </div>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 407mm;">
                    11
                </div>
            </div>
        </div>
    </div>
    <!-- end paper 2-11 -->
    <!-- start paper 10-3 -->
    <div class="paper" style="page-break-after:always;">
        <div class="row">
            <div class="col-md-6 paper-left">
                <div class="title">
                    ການກວດສຸຂະພາບທາງດ້ານອາຊີບ (Occupational Health)
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        *ການກວດສອບສະມັດຕະພາບປອດ (Spirometry)
                    </div>
                    <table class="border" style="width:100%;border: 1px solid red!important;">
                        <tr style="text-align:center;">
                            <th><i>Spirometry</i></th>
                            <th style="width: 15%"><i>FVC</i></th>
                            <th style="width: 15%"><i>FEVI</i></th>
                            <th><i>FECI/FVC%</i></th>
                        </tr>
                        <tr>
                            <td> Mears.ຄ່າທີ່ແທກໄດ້</td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $fvc_means;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $fevi_means;?></b></td>
                            <td rowspan="3" style="text-align:center;"><b
                                    style="color: black;"><?php echo $fevi_fvc;?></b></td>
                        </tr>
                        <tr>
                            <td> Pred.ຄ່າທີ່ເຮັດການກວດສອບໄດ້</td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $fvc_predict;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $fevi_predict;?></b></td>
                        </tr>
                        <tr>
                            <td> %Pred.ເປີເຊັນຂອງຄ່າທີ່ກວດສອບໄດ້</td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $fvc_predicts;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $fevi_predicts;?></b></td>
                        </tr>
                    </table>
                    <div class="col-sm-12" style="margin-left:50px;">
                        ຄ່າປົກກະຕິ FVC%Pred. &nbsp;&nbsp; 80%
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        FEV1/FVC%Pred. &nbsp;&nbsp; 70%
                    </div>
                    <div class="col-sm-12">
                        *ແປຜົນສະມັດຕະພາບປອດ (Spirometry Interpretation)
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($spiro_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($spiro_remark);?></b>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                <hr>
                <div class="title">
                    ການແທກຄື່ນໄຟຟ້າຫົວໃຈ ແລະ ສ່ອງໄຟຟ້າຜົ້ງເອີກ(Electrocardiogram/Chest X-ray)
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-7">
                        *ຜົນການສ່ອງໄຟຟ້າຜົ້ງເອີກ/Chest X-ray (CXR )
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3" style="color: black;">
                        <?php echo $barcode;?>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo $x_ray;?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($cxr_conclusion);?></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($cxr_remark);?></b>
                    </div> -->
                </div>
                <br>
                <br>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        *ຜົນການແທກຄື້ນໄຟຟ້າຫົວໃຈ (EKG)
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo $ekg_name;?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ekg_conclusion);?></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ekg_remark);?></b>
                    </div> -->
                </div>
                <br>
                <br>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        *** ຜົນການກວດ ເອໂກ້ທ້ອງ ( Ultrasound )
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo $ultra_name;?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ultra_conclusion);?></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ultra_remark);?></b>
                    </div> -->
                </div>
                <div class="pagination" style="left: 140mm;top: 619mm;">
                    10
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ(LABORATORY EXAMINATION)
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        *ການກວດເລືອດລວມ (CBC)
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th><?php echo $year;?> <br> Results</th>
                                <th><?php echo $year2;?> <br> Results</th>
                                <th><?php echo $year3;?> <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Hemoglobin(Hb)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hb; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hb2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hb3; ?></b></td>
                                <td style="text-align:center">12-16 g/dl</td>
                            </tr>
                            <tr>
                                <td>Hematocrit(Hct)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hct; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hct2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hct3; ?></b></td>
                                <td style="text-align:center">35-50 (%)</td>
                            </tr>
                            <tr>
                                <td>White blood cell(WBC)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $wbc; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $wbc2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $wbc3; ?></b></td>
                                <td style="text-align:center">3.7-10.5x10^3</td>
                            </tr>
                            <tr>
                                <td>Neutrophil(Ne)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ne; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ne2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ne3; ?></b></td>
                                <td style="text-align:center">35-72 (%)</td>
                            </tr>
                            <tr>
                                <td>Lymphocyte(Lym)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $lym; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $lym2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $lym3; ?></b></td>
                                <td style="text-align:center">19-49 (%)</td>
                            </tr>
                            <tr>
                                <td>Monocyte(Mo)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $monocyte; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $monocyte2; ?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $monocyte3; ?></b>
                                </td>
                                <td style="text-align:center">0-9 (%)</td>
                            </tr>
                            <tr>
                                <td>Eosinophil(EO)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $eo; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $eo2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $eo3; ?></b></td>
                                <td style="text-align:center">0-8 (%)</td>
                            </tr>
                            <tr>
                                <td> Basophil (Baso)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $baso; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $baso2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $baso3; ?></b></td>
                                <td style="text-align:center">0-2 (%)</td>
                            </tr>
                            <tr>
                                <td>Platelets Count</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $platelets; ?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $platelets2; ?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $platelets3; ?></b>
                                </td>
                                <td style="text-align:center">140-400 x^3</td>
                            </tr>
                            <tr>
                                <td>Red blood cell(RBC)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $rbc; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $rbc2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $rbc3; ?></b></td>
                                <td style="text-align:center">4.2-5.2x10/uL</td>
                            </tr>
                            <tr>
                                <td> MCV</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mvc; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mvc2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mvc3; ?></b></td>
                                <td style="text-align:center">80-100 fL</td>
                            </tr>
                            <tr>
                                <td> MCH</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mch; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mch2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mch3; ?></b></td>
                                <td style="text-align:center">27-33 pg</td>
                            </tr>
                            <tr>
                                <td> MCHC</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mchc; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mchc2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $mchc3; ?></b></td>
                                <td style="text-align:center">32-36 g/dL</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-4">
                        Red blood cell morphology
                    </div>
                    <div class="col-sm-8" style="color: black;">
                        <b><?php echo $redblood; ?></b>
                    </div>
                    <br>
                    <br>
                    <div class="col-sm-12">
                        ***ສະຫຼຸບຜົນກວດເລືອດລວມ (CBC Interpretation)
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($cbc_conclusion); ?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($cbc_remark);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 619mm;">
                    3
                </div>
            </div>
        </div>
    </div>
    </div>

    <!-- end paper 10-3 -->
    <!-- start paper 4-9 -->
    <div class="paper" style="page-break-after:always;">
        <div class="row">
            <div class="col-md-6 paper-left">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ (LABORATORY EXAMINATION)
                </div>
                <div class="row">
                    <div class="col-sm-7" style="text-align:center;">
                        *ກວດເລືອດຊີວະເຄມີ (Biochemistry)
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3" style="color: black;">
                        <?php echo $barcode; ?>
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th><?php echo $year; ?> <br> Results</th>
                                <th><?php echo $year2; ?> <br> Results</th>
                                <th><?php echo $year3; ?> <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Fasting Blood Sugar(FBS)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $fbs; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $fbs2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $fbs3; ?></b></td>
                                <td style="text-align:center">70-110 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Cholesterol(CHO)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $cho; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $cho2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $cho3; ?></b></td>
                                <td style="text-align:center"> &lt;200 mg/dl</td>
                            </tr>
                            <tr>
                                <td>High-density lipoprotein(HDL-C)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hdl; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hdl2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hdl3; ?></b></td>
                                <td style="text-align:center">&gt;35 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Low-density lipoprotein(LDL-C)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ldl; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ldl2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ldl3; ?></b></td>
                                <td style="text-align:center">&lt;130 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Triglycerides(Trig)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $trig; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $trig2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $trig3; ?></b></td>
                                <td style="text-align:center">&lt;150 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Uric acid(UA)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ua; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ua2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ua3; ?></b></td>
                                <td style="text-align:center">2.6-7.2 mg/dl</td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ໜ້າທີ່ການຂອງໝາກ
                                    ໄຂ່ຫຼັງ(Kidney function Test)</td>
                            </tr>
                            <tr>
                                <td> BUN</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $bun; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $bun2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $bun3; ?></b></td>
                                <td style="text-align:center">5-25 mg/dl</td>
                            </tr>
                            <tr>
                                <td> Creatinine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $creatinine; ?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $creatinine2; ?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $creatinine3; ?></b>
                                </td>
                                <td style="text-align:center">0.5-1.5 mg/dl</td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ໜ້າທີ່ການຂອງຕັບ
                                    (Liver Function Test)</td>
                            </tr>
                            <tr>
                                <td>SGOT</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sgot; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sgot2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sgot3; ?></b></td>
                                <td style="text-align:center">0-45 U/L</td>
                            </tr>
                            <tr>
                                <td>SGPT</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sgpt; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sgpt2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sgpt3; ?></b></td>
                                <td style="text-align:center">0-45 U/L</td>
                            </tr>
                            <tr>
                                <td>Alk.Phosphatase</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $alk; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $alk2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $alk3; ?></b></td>
                                <td style="text-align:center">15-128 U/L</td>
                            </tr>
                            <tr>
                                <td>GGT</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ggt; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ggt2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ggt3; ?></b></td>
                                <td style="text-align:center">15-128 U/L</td>
                            </tr>
                            <tr>
                                <td>HbA1c</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hbac; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hbac2; ?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hbac3; ?></b></td>
                                <td style="text-align:center">4-6 %</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-12">
                        ***ສະຫຼຸບແປຜົນກວດເລືອດເຄມີ (Biochemical Interpretation)
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($bio_conclusion); ?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo $bio_remark;?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 140mm;top: 831mm;">
                    4
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດສະມັດຕະພາບການເບີ່ງເຫັນ (Vision test )
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        *ກວດສະມັດຕະພາບການເບີ່ງເຫັນ ( Vision test )
                    </div>
                    <table class="border" style="width:100%;border: 1px solid red!important;">
                        <tr style="text-align:center;">
                            <th>ກວດຕາ</th>
                            <th style="width: 15%">ສາຍຕາສັ້ນ</th>
                            <th style="width: 15%">ສາຍຕາຍາວ</th>
                            <th style="width: 15%">ສາຍຕາອຽງ</th>
                            <th style="width: 15%">ຕາບອດສີ</th>
                            <th style="width: 15%">ສະຫຸຼບຜົນກວດ</th>
                        </tr>
                        <tr style="text-align:center;">
                            <td>ຕາຂວາ</td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $r_short;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $r_long;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $r_tited;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $r_color;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $r_conclusion;?></b></td>
                        </tr>
                        <tr style="text-align:center;">
                            <td>ຕາຊ້າຍ</td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $l_short;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $l_long;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $l_tited;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $l_color;?></b></td>
                            <td style="text-align:center"><b style="color: black;"><?php echo $l_conclusion;?></b></td>
                        </tr>
                    </table>
                    <div class="col-sm-12">
                    <br>
                        ***ແປຜົນກວດສາຍຕາ
                    </div>
                    <div class="col-sm-12">
                        <b style="color: black;"> <?php echo nl2br($test_vision_conclusion);?>test</b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($test_vision_remark);?>test</b>
                    </div>
                    <div class="col-sm-12">
                    <br>
                    *** ແປຜົນການເບ່ິງເຫັນ ( Oc vision )
                    </div>
                    <div class="col-sm-12">
                        <b style="color: black;"> <?php echo nl2br($vision_conclusion);?>test</b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($vision_remark);?>test</b>
                    </div>

                    <br>
                    <br>

                    <table class="border" style="width:100%;border: 1px solid red!important;">
                        <tr>
                            <th colspan="10">ການກວດສະມັດຕະພາບການໄດ້ຍິນ (Audiogram)</th>
                        </tr>
                        <tr>
                            <th style="text-align:center;"><i>Speech Range</i></th>
                            <th colspan="5" style="text-align:center;"><i>Low Frequency</i></th>
                            <th colspan="4" style="text-align:center;"><i>High Frequency</i></th>
                        </tr>
                        <tr>
                            <td style="text-align:center;"><i>Frequency</i></td>
                            <td style="text-align:center;">500</td>
                            <td style="text-align:center;">1000</td>
                            <td style="text-align:center;">2000</td>
                            <td style="text-align:center;">3000</td>
                            <td style="text-align:center;">Average</td>
                            <td style="text-align:center;">4000</td>
                            <td style="text-align:center;">6000</td>
                            <td style="text-align:center;">8000</td>
                            <td style="text-align:center;">Average</td>
                        </tr>
                        <tr>
                            <td>Right Ear(ຫູຂວາ)</td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_500;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_1000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_2000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_3000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_l_avg;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_4000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_6000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_8000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $r_h_avg;?></b></td>
                        </tr>
                        <tr>
                            <td>Left Ear(ຫູຊ້າຍ)</td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_500;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_1000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_2000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_3000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_l_avg;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_4000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_6000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_8000;?></b></td>
                            <td style="text-align:center;"><b style="color: black;"><?php echo $l_h_avg;?></b></td>
                        </tr>
                    </table>
                    <div class="col-sm-12">
                        <br>
                        ***ແປຜົນການກວດສະມັດຕະພາບການໄດ້ຍິນ (Audiogram Interpretation)
                    </div>
                    <div class="col-sm-12">
                        <b style="color: black;"><?php echo nl2br($audio_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($audio_remark);?></b>
                    </div>
                    <br>
                    <br>
                    <br>
                    <hr style="color:black;">
                    <div class="col-sm-12">
                        <br>
                        *ການກວດທົດສອບສະມັດຕະພາບກ້າມ ຊີ້ນມື/ແຂນ/ຂາແລະຫຼັງ (Muscle)
                    </div>
                    <div class="col-sm-12">
                        <b style="color: black;"><?php echo $muscle_name;?></b>
                    </div>
                    <div class="col-sm-12">
                        <b style="color: black;"><?php echo nl2br($muscle_conclusion);?></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($muscle_remark);?></b>
                    </div> -->
                </div>
                <div class="pagination" style="left: 290mm;top: 831mm;">
                    9
                </div>
            </div>
        </div>
    </div>
    <!-- end paper 4-9 -->
    <!-- start paper 8-5 -->
    <div class="paper" style="page-break-after:always;">
        <div class="row">
            <div class="col-md-6 paper-left">
                <div class="title">
                    ການກວດວິເຄາະຫາທາດໂລຫະໜັກ,ສານພິດ (Heavy Metal and Toxic Substance)
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        ກວດວິເຄາະຫາທາດໂລຫະໜັກ,ສານພິດ (Heavy Metal and Toxic Substance)
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th><?php echo $year;?> <br> Results</th>
                                <th><?php echo $year2;?> <br> Results</th>
                                <th><?php echo $year3;?> <br> Results</th>
                                <th>ຄ່າປົກກະຕິ <br> Reference</th>
                            </tr>
                            <!-- <tr>
                                <td>Ether</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ether;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ether2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ether3;?></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr>
                            <tr>
                                <td>Ethyl Ethanoate</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ethy;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ethy2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ethy3;?></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr> -->
                            <tr>
                                <td>Lead in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $leadInBlood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $leadInBlood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $leadInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;60 ug/dL)</td>
                            </tr>
                            <tr>
                                <td>Chromium in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $chromiumInBlood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $chromiumInBlood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $chromiumInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;5 ug/L)</td>
                            </tr>
                            <tr>
                                <td>Nickle in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $nickle;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $nickle2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $nickle3;?></b></td>
                                <td style="text-align:center">(&lt;0.5 ug/L)</td>
                            </tr>
                            <tr>
                                <td>Manganese in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $manganese;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $manganese2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $manganese3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;1.0 ug/L)</td>
                            </tr>
                            <tr>
                                <td> Tin in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $tim;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $tim2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $tim3;?></b></td>
                                <td style="text-align:center">(&lt;14 ug/L)</td>
                            </tr>
                            <tr>
                                <td> Mercury in Blood (ກ່ອນເຂົ້າວຽກ)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $blood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $blood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $blood3;?></b></td>
                                <td style="text-align:center">(&lt;2 ug/L)</td>
                            </tr>
                            <tr>
                                <td>Copper in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $copperInBlood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $copperInBlood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $copperInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;140 ug/dL)</td>
                            </tr>
                            <tr>
                                <td>Aluminium in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $aluminiumInBlood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $aluminiumInBlood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $aluminiumInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;1 ug/dL)</td>
                            </tr>
                            <tr>
                                <td>Zine in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $zineInBlood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $zineInBlood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $zineInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;170 ug/dL)</td>
                            </tr>
                            <!-- <tr>
                                <td> Mercury in Urine (ຫຼັງເລິກວຽກ)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $m_i_urine;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $m_i_urine2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $m_i_urine3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;20ug/L)</td>
                            </tr> -->
                            <!-- <tr>
                                <td> Butoxyacetic Acid in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $b_a_u;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $b_a_u2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $b_a_u3;?></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr> -->
                            <!-- <tr>
                                <td> Chromium in Urine (ຫຼັງເລິກວຽກ)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $c_u;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $c_u2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $c_u3;?></b></td>
                                <td style="text-align:center">(&lt;5ug/gCr)</td>
                            </tr> -->
                            <tr>
                                <td> Iso Propyl Alcohol</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $alcoho;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $alcoho2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $alcoho3;?></b></td>
                                <td style="text-align:center">(&lt;40 mg/L)</td>
                            </tr>
                            <tr>
                                <td>Arsenic in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $arsenicInBlood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $arsenicInBlood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $arsenicInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;2 ug/L)</td>
                            </tr>
                            <!-- <tr>
                                <td> Silica</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $silica;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $silica2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $silica3;?></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr> -->
                            <!-- <tr>
                                <td>Methy hippuric acid in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methy;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $meth2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methy3;?></b></td>
                                <td style="text-align:center">(&lt;50mg/L)</td>
                            </tr> -->
                            <tr>
                                <td>Acetone in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $a_i_urine;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $a_i_urine2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $a_i_urine3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;50mg/L)</td>
                            </tr>
                            <tr>
                                <td> Toluene/Thinner in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $t_i_urine;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $t_i_urine2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $t_i_urine3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;2.5g/gcr</td>
                            </tr>
                            <tr>
                                <td> Methyl Isobutyl Ketone in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methy_urine;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methy_urine2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methy_urine3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;1.0mg/L)</td>
                            </tr>
                            <tr>
                                <td> Methanol in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methanoi_urine;?></b>
                                </td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $methanoi_urine2;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $methanoi_urine3;?></b></td>
                                <td style="text-align:center">(&lt;15mg/L)</td>
                            </tr>
                            <tr>
                                <td>Xylene in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $xyleneInBlood;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $xyleneInBlood2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $xyleneInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;1.5 g/gCr)</td>
                            </tr>
                            <tr>
                                <td>Methyl ethyl ketone in Urine</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methylEthylKetoneInUrine;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methylEthylKetoneInUrine2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $methylEthylKetoneInUrine3;?></b></td>
                                <td style="text-align:center">(&lt;2 mg/L)</td>
                            </tr>
                            <!-- <tr>
                                <td> Phenolic Resin</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $phenolic_resin;?></b>
                                </td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $phenolic_resin2;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $phenolic_resin3;?></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr> -->
                        </table>
                        <br>
                        <div class="co-sm-12">
                            ***ສະຫຼູບຜົນການກວດຫາສານເສບຕິດ
                        </div>
                        <div class="co-sm-12" style="color: black;">
                            <b><?php echo nl2br($metal_conclusion);?></b>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <b><?php echo nl2br($metal_remark);?></b>
                        </div>
                    </div>
                    <br>
                    <br>
                </div>
                <div class="pagination" style="left: 140mm;top: 1043mm;">
                    8
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ (LABORATORY EXAMINATION)
                </div>
                <div class="row">
                    <div class="col-sm-7">
                        *ກວດປັດສະວະ (Urinalysis)
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3" style="color: black;">
                        <?php echo $barcode;?>
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th><?php echo $year?> <br> Results</th>
                                <th><?php echo $year2?> <br> Results</th>
                                <th><?php echo $year3?> <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Color :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $coloru?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $coloru2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $coloru3?></b></td>
                                <td style="text-align:center">ເຫຼືອງ(Yellow)</td>
                            </tr>
                            <tr>
                                <td>Appearance :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $appearance?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $appearance2?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $appearance3?></b>
                                </td>
                                <td style="text-align:center">ໃສ(clear)</td>
                            </tr>
                            <tr>
                                <td>pH :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ph?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ph2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ph3?></b></td>
                                <td style="text-align:center">5-8 (ປົກກະຕິ)</td>
                            </tr>
                            <tr>
                                <td>Specific Gravity :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $specifics?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $specifics2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $specifics3?></b></td>
                                <td style="text-align:center">1.005-1.035</td>
                            </tr>
                            <tr>
                                <td>Protein :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $protein?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $protein2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $protein3?></b></td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>Sugar :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sugar?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sugar2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $sugar3?></b></td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>Ketone :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ketone?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ketone2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ketone3?></b></td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>Blood :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $blood_urine?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $blood_urine2?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $blood_urine3?></b>
                                </td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>WBC/Hpf :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $wbc_urine?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $wbc_urine2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $wbc_urine3?></b></td>
                                <td style="text-align:center">0-5cell/HPF</td>
                            </tr>
                            <tr>
                                <td>RBC/Hpf :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $rbc_urine?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $rbc_urine2?></b></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $rbc_urine3?></b></b>
                                </td>
                                <td style="text-align:center">0-3cell/HPF</td>
                            </tr>
                            <tr>
                                <td>Epithelium/Hpf :</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $epit?></b></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $epit2?></b></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $epit3?></b></b></td>
                                <td style="text-align:center">0-5cell/HPF</td>
                            </tr>
                        </table>
                        <br>
                    </div>
                    <div class="co-sm-12">
                        ***ສະຫຼູບຜົນການກວດປັດສະວະ (Urinalysis Interpretation)
                    </div>
                    <div class="co-sm-12" style="color: black;">
                        <b><?php echo nl2br($urine_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($urine_remark);?></b>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <table style="border-top: 1px solid grey;">
                        <tr>
                            <th>*ການກວດຫາສານເສບຕິດ (ຢາບ້າ) (Methamphetamine)</th>
                        </tr>
                    </table>
                    <div class="col-sm-12">
                        <table style="width:100%;">
                            <tr>
                                <th>&nbsp;</th>
                                <th><?php echo $year ?> <br> Results</th>
                                <th><?php echo $year2 ?> <br> Results</th>
                                <th><?php echo $year3 ?> <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Methamphetamine :</td>
                                <td><b style="color: black;"><?php echo $meth ?></b></td>
                                <td><b style="color: black;"><?php echo $meth2 ?></b></td>
                                <td><b style="color: black;"><?php echo $meth3 ?></b></td>
                            </tr>
                        </table>
                        <br>
                    </div>

                    <div class="co-sm-12">
                        ***ສະຫຼູບຜົນການກວດຫາສານເສບຕິດ
                    </div>
                    <div class="co-sm-12" style="color: black;">
                        <b><?php echo nl2br($meth_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($meth_remark);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 1043mm;">
                    5
                </div>
            </div>
        </div>
    </div>
    <!-- end paper 8-5 -->
    <!-- start paper 6-7 -->
    <div class="paper" style="page-break-after:always;">
        <div class="row">
            <div class="col-md-6 paper-left">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ (LABORATORY EXAMINATION)
                </div>
                <div class="row">
                    <div class="col-sm-7">
                        *ກວດຮໍໂມນຕ່ອມຄໍ [Thryroid]
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3" style="color: black;">
                        <?php echo $barcode;?>
                    </div>
                    <div class="col-sm-12">
                        <table width="100%">
                            <tr>
                                <th colspan="2" style="text-align:center;">ລາຍການ (Items)</th>
                                <th width="20%">ຫົວໜ່ວຍ</th>
                                <th width="20%">ຄ່າປົກກະຕິ</th>
                            </tr>
                            <tr>
                                <td>FREE T3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td><b style="color: black;"><?php echo $free_t3;?></b></td>
                                <td>pg/ml</td>
                                <td>2.0-4.4 pg/ml</td>
                            </tr>
                            <tr>
                                <td>FREE T4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td><b style="color: black;"><?php echo $free_t4;?></b></td>
                                <td>ng/dl</td>
                                <td>0.93-1.7 ng/dl</td>
                            </tr>
                            <tr>
                                <td>TSH &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td><b style="color: black;"><?php echo $tsh;?></b></td>
                                <td>ulU/ml</td>
                                <td>0.27-4.20 ulU/ml</td>
                            </tr>
                            <tr>
                                <td>T3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=</td>
                                <td><b style="color: black;"><?php echo $t3;?></b></td>
                                <td>ng/dl</td>
                                <td>80-200 ng/dl</td>
                            </tr>
                            <tr>
                                <td>T4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td><b style="color: black;"><?php echo $t4;?></b></td>
                                <td>ng/dl</td>
                                <td>5.1-14.1 ng/dl</td>
                            </tr>
                        </table>
                        <br>
                    </div>
                    <div class="col-sm-12">
                        ***ສະຫຼຸບຜົນການກວດຮໍໂມນຕອມຄໍ (Thryroid Interpretation)
                    </div>
                    <div class="col-sm-12">
                        <b style="color: black;"><?php echo nl2br($thyroid_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($meth_remark);?></b>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <table style="border-top:1px solid grey;">
                        <tr>
                            <th>&nbsp;&nbsp;&nbsp;&nbsp;*ກວດອາຈົມ
                                (Stool Examination)</th>
                        </tr>
                    </table>
                    <div class="col-sm-6">
                        Stool Color =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $color;?></b>
                    </div>
                    <div class="col-sm-6">
                        Appearance =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $stool_ap;?></b>
                    </div>
                    <!-- <div class="col-sm-6">
                        StoolWBC =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $stoolwbc;?></b>
                    </div>
                    <div class="col-sm-6">
                        StoolRBC =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $stoolrbc;?></b>
                    </div> -->
                    <div class="col-sm-6">
                        Parasite =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $parasite;?></b>
                    </div>
                    <div class="col-sm-6">
                        Samonella Spp =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $samonella;?></b>
                    </div>
                    <div class="col-sm-6">
                        Shigella Spp =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $shigella;?></b>
                    </div>
                    <div class="col-sm-6">
                        Vibrio Spp =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $vivrio;?></b>
                    </div>
                    <div class="col-sm-6">
                        Vibrio Cholera 01 =
                    </div>
                    <div class="col-sm-6" style="color: black;">
                        <b><?php echo $vibrio?></b>
                    </div>
                    <div class="col-sm-12">
                        <br>
                        <br>
                        ***ສະຫຼຸບກວດອາຈົມ (Stool Interpretation)
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($stool_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($stool_remark);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 140mm;top: 1255mm;">
                    6
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ (LABORATORY EXAMINATION)
                </div>
                <br>
                <br>
                <div class="row">
                    <div class="col-sm-7">
                        *ກວດຕົວບົ່ງຊີ້ມະເຮັງ (Tumor Marker)
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3" style="color: black;">
                        <?php echo $barcode?>
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th><?php echo $year?> <br> Results</th>
                                <th><?php echo $year2?> <br> Results</th>
                                <th><?php echo $year3?> <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Alpha-Fetoprotein (AFP)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $afp?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $afp2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $afp3?></b></td>
                                <td style="text-align:center">0 - 7 ng/ml</td>
                            </tr>
                            <tr>
                                <td>Carcino Embrionic Antigen (CEA)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $cea?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $cea2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $cea3?></b></td>
                                <td style="text-align:center">0 - 5 ng/ml</td>
                            </tr>
                            <tr>
                                <td>Prostate-Specific Antigen (PSA)</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $psa?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $psa2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $psa3?></b></td>
                                <td style="text-align:center">0 - 5 ng/ml</td>
                            </tr>
                            <tr>
                                <td>CA 19-9</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_19?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_192?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_193?></b></td>
                                <td style="text-align:center">0 - 37 ng/ml</td>
                            </tr>
                            <tr>
                                <td>CA 15-3</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_15?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_152?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_153?></b></td>
                                <td style="text-align:center">0 - 37 ng/ml</td>
                            </tr>
                            <tr>
                                <td>CA 125</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_125?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_1252?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ca_1253?></b></td>
                                <td style="text-align:center">0 - 35 ng/ml</td>
                            </tr>
                        </table>
                        <br>
                    </div>


                    <div class="col-sm-12">
                        ***ແປຜົນກວດຕົວບົ່ງຊີ້ມະເຮັງ (Tumor Marker Interpretation)
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($tumor_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($tumor_remark);?></b>
                    </div>
                </div>
                <br>
                <br>
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະອື່ນໆ ( GTTGK )
                </div>
                <div class="row">
                    <div class="col-sm-7">
                        *ກວດຕົວບົ່ງຊີ້ມະເຮັງ (Tumor Marker)
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3" style="color: black;">
                        <?php echo $barcode?>
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th><?php echo $year?> <br> Results</th>
                                <th><?php echo $year2?> <br> Results</th>
                                <th><?php echo $year3?> <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Total Billirubin </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $total_bill?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $total_bill2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $total_bill3?></b></td>
                                <td style="text-align:center">0.5 - 1.5 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Drect Billirubin</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $drect_bill?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $drect_bill2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $drect_bill3?></b></td>
                                <td style="text-align:center">0.1 - 0.5 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Total protein</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $gttgk_protein?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $gttgk_protein2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $gttgk_protein3?></b></td>
                                <td style="text-align:center">5.5 - 8.0 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Ambumin</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ambumin?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ambumin2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ambumin3?></b></td>
                                <td style="text-align:center">3.0 - 5.3 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Globulin</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $globulin?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $globulin2?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $globulin3?></b></td>
                                <td style="text-align:center">2.0 - 3.5 mg/dl</td>
                            </tr>
                        </table>
                        <br>
                    </div>
                    <div class="col-sm-12">
                        ***ແປຜົນການກວດ
                        <!-- ***ແປຜົນກວດຕົວບົ່ງຊີ້ມະເຮັງ (Tumor Marker Interpretation) -->
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($gttgk_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($gttgk_remark);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 1255mm;">
                    7
                </div>
            </div>
        </div>
    </div>
    <!-- end paper 6-7 -->




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
    </script>
</body>

</html>