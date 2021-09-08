<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="../../image/health.jpeg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">

    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <title>Health CheckUp</title>
</head>

<?php
$path = "../../";
include ('../../oop/obj.php');
$barcode = $_POST["barcode2"];
$year = $_POST["yearr"] - 2 ;
$year2 = $_POST["yearr"] - 1;
$year3 = $_POST["yearr"];
$yearconclusion = $_POST["yearr"];


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

$pe_conclusion = "";
    $pe_remark = "";
$pe = mysqli_query($conn,"SELECT emp_id,emp_name,surname,dob,age,gender,nation,ethnic,religion,job,department,company,village,district,province,hpi,weight,height,pulse,bp,lung,hear,eye,teeth,ears,lymph,thyroid,extremities,skin,hear,lung,als,other,conclusion,remark,personal,family,pmhi,asi,bmi,abo FROM employee e LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN pe p ON e.barcode=p.barcode where e.barcode='$barcode' and year='$yearconclusion';");
$fetch_pe = mysqli_fetch_array($pe,MYSQLI_ASSOC);
if(mysqli_num_rows($pe) > 0)
{
    $hpi = $fetch_pe["hpi"];
    $pmhi = $fetch_pe["pmhi"];
    $personal = $fetch_pe["personal"];
    $family = $fetch_pe["family"];
    $asi = $fetch_pe["asi"];
    $height = round($fetch_pe["height"],1);
    $weight = round($fetch_pe["weight"],1);
    $bmi = round($fetch_pe["bmi"],1);
    $bp = $fetch_pe["bp"];
    $pulse = round($fetch_pe["pulse"],1);
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
    $pe_conclusion2 = $fetch_pe["conclusion"];
    if ($fetch_pe["conclusion"] == "") {
        echo "";
    }else{
        $pe_conclusion = "ການກວດຮ່າງກາຍທົ່ວໄປ : " . $fetch_pe["conclusion"];
    }
    if ($fetch_pe["remark"] == "") {
        echo "";
    }else{
        $pe_remark = ": " . $fetch_pe["remark"];
    }
}
else 
{
    $pe_conclusion2 = "";
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
    $immCalcium = round($fetch_imm["calcium"],1);
    $immPhosphorus = round($fetch_imm["phosphorus"],1);
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
    $immCalcium2 = round($fetch_imm2["calcium"],1);
    $immPhosphorus2 = round($fetch_imm2["phosphorus"],1);
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
    $hpylori3 = $fetch_imm3["hpylori"];
    $papSmear3 = $fetch_imm3["pap"];
    $immCalcium3 = round($fetch_imm3["calcium"],1);
    $immPhosphorus3 = round($fetch_imm3["phosphorus"],1);

}

$imm_conclusion = "";
    $imm_remark = "";
$imm4 = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$yearconclusion';");
$fetch_imm4 = mysqli_fetch_array($imm4,MYSQLI_ASSOC);
if(mysqli_num_rows($imm4) > 0)
{
    $imm_conclusion2 = $fetch_imm4["conclusion"];
    if ($fetch_imm4["conclusion"] == "") {
        echo "";
    }else{
        $imm_conclusion = "ກວດທາງພູມຄຸ້ມກັນວິທະຍາ : ".$fetch_imm4["conclusion"];
    }

    if ($fetch_imm4["remark"] == "") {
        echo "";
    }else{
        $imm_remark = ": " .$fetch_imm4["remark"];
    }
}
else 
{
    $imm_conclusion2 = "";
    $imm_conclusion = "";
    $imm_remark = "";
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
    $spiro_conclusion2 = "";
    $spiro_remark = "";
}
else 
{
    $fvc_means = round($fetch_spiro["fvc_means"],1);
    $fevi_means = round($fetch_spiro["fevi_means"],1);
    $fevi_fvc = round($fetch_spiro["fevi_fvc"],1);
    $fvc_predict = round($fetch_spiro["fvc_predict"],1);
    $fevi_predict = round($fetch_spiro["fevi_predict"],1);
    $fvc_predicts = round($fetch_spiro["fvc_predicts"],1);
    $fevi_predicts = round($fetch_spiro["fevi_predicts"],1);
    $spiro_conclusion2 = $fetch_spiro["conclusion"];
    $spiro_conclusion = "ການກວດສະມັດຕະພາບປອດ : ".$fetch_spiro["conclusion"];
    $spiro_remark = ": " .$fetch_spiro["remark"];
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
    $hb = round($fetch_cbc["hb"],1);
    $hct = round($fetch_cbc["hct"],1);
    $wbc = round($fetch_cbc["wbc"],1);
    $ne = round($fetch_cbc["ne"],1);
    $lym = round($fetch_cbc["lym"],1);
    $monocyte = round($fetch_cbc["monocyte"],1);
    $eo = round($fetch_cbc["eo"],1);
    $baso = round($fetch_cbc["baso"],1);
    $platelets = round($fetch_cbc["platelets"],1);
    $rbc = round($fetch_cbc["rbc"],1);
    $mvc = round($fetch_cbc["mvc"],1);
    $mch = round($fetch_cbc["mch"],1);
    $mchc = round($fetch_cbc["mchc"],1);
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
    $hb2 = round($fetch_cbc2["hb"],1);
    $hct2 = round($fetch_cbc2["hct"],1);
    $wbc2 = round($fetch_cbc2["wbc"],1);
    $ne2 = round($fetch_cbc2["ne"],1);
    $lym2 = round($fetch_cbc2["lym"],1);
    $monocyte2 = round($fetch_cbc2["monocyte"],1);
    $eo2 = round($fetch_cbc2["eo"],1);
    $baso2 = round($fetch_cbc2["baso"],1);
    $platelets2 = round($fetch_cbc2["platelets"],1);
    $rbc2 = round($fetch_cbc2["rbc"],1);
    $mvc2 = round($fetch_cbc2["mvc"],1);
    $mch2 = round($fetch_cbc2["mch"],1);
    $mchc2 = round($fetch_cbc2["mchc"],1);
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
    $hb3 = round($fetch_cbc3["hb"],1);
    $hct3 = round($fetch_cbc3["hct"],1);
    $wbc3 = round($fetch_cbc3["wbc"],1);
    $ne3 = round($fetch_cbc3["ne"],1);
    $lym3 = round($fetch_cbc3["lym"],1);
    $monocyte3 = round($fetch_cbc3["monocyte"],1);
    $eo3 = round($fetch_cbc3["eo"],1);
    $baso3 = round($fetch_cbc3["baso"],1);
    $platelets3 = round($fetch_cbc3["platelets"],1);
    $rbc3 = round($fetch_cbc3["rbc"],1);
    $mvc3 = round($fetch_cbc3["mvc"],1);
    $mch3 = round($fetch_cbc3["mch"],1);
    $mchc3 = round($fetch_cbc3["mchc"],1);
    $red_blood3 = $fetch_cbc3["red_blood"];
}
$redblood = "";
$cbc_conclusion = "";
$cbc_remark = "";
$cbc4 = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$yearconclusion';");
$fetch_cbc4 = mysqli_fetch_array($cbc4,MYSQLI_ASSOC);
if(mysqli_num_rows($cbc4) > 0)
{
    $cbc_conclusion2 = $fetch_cbc4["conclusion"];
    $redblood = $fetch_cbc4["red_blood"];
    if($fetch_cbc4["conclusion"] == ""){
        echo"";
    }
    else{
        $cbc_conclusion = "ການກວດເລືອດລວມ : ".$fetch_cbc4["conclusion"];
    }
    if($fetch_cbc4["remark"] == ""){
        echo"";
    }
    else{
        $cbc_remark = ": ".$fetch_cbc4["remark"];
    }
}
else 
{
    $cbc_conclusion2 = "";
    $redblood = "";
    $cbc_conclusion = "";
    $cbc_remark = "";
}

$x_ray = "";
$cxr_conclusion = "";
$cxr_conclusion2 = "";
$cxr_remark = "";
$cxr = mysqli_query($conn,"SELECT * FROM x_ray where barcode='$barcode' AND year='$yearconclusion';");
$fetch_cxr = mysqli_fetch_array($cxr,MYSQLI_ASSOC);
if(mysqli_num_rows($cxr) > 0)
{
    $cxr_conclusion2 = $fetch_cxr["conclusion"];
    $x_ray = "ການກວດສ່ອງໄຟຟ້າຜົ້ງເອີກ : ".$fetch_cxr["x_ray"];
    if($fetch_cxr["conclusion"] == ""){
        echo "";
    }else{
        $cxr_conclusion = "ການກວດສ່ອງໄຟຟ້າຜົ້ງເອີກ : ".$fetch_cxr["conclusion"];
    }
    if($fetch_cxr["remark"] == ""){
        echo "";
    }else{
        $cxr_remark = ": ".$fetch_cxr["remark"];
    }
}
else 
{
    $cxr_conclusion2 = "";
    $x_ray = "";
    $cxr_conclusion = "";
    $cxr_conclusion2 = "";
    $cxr_remark = "";
}

$ekg_name = "";
$ekg_conclusion = "";
$ekg_conclusion2 = "";
$ekg_remark = "";
$ekg = mysqli_query($conn,"SELECT * FROM ekg where barcode='$barcode' AND year='$yearconclusion';");
$fetch_ekg = mysqli_fetch_array($ekg,MYSQLI_ASSOC);
if(mysqli_num_rows($ekg) > 0)
{
    $ekg_conclusion2 = $fetch_ekg["conclusion"];
    $ekg_name = "ການກວດແທກຄື້ນໄຟຟ້າຫົວໃຈ : ".$fetch_ekg["ekg_name"];

    if($fetch_ekg["conclusion"] == ""){
        echo "";
    }else{
        $ekg_conclusion = "ການກວດແທກຄື້ນໄຟຟ້າຫົວໃຈ : ".$fetch_ekg["conclusion"];
    }
    if($fetch_ekg["remark"] == ""){
        echo "";
    }else{
        $ekg_remark = ": ".$fetch_ekg["remark"];
    }
}
else 
{
    $ekg_name = "";
    $ekg_conclusion = "";
    $ekg_conclusion2 = "";
    $ekg_remark = "";
}

$ultra_name = "";
$ultra_conclusion = "";
$ultra_conclusion2 = "";
$ultra_remark = "";
$ultrasound = mysqli_query($conn,"SELECT * FROM ultrasound where barcode='$barcode' AND year='$yearconclusion';");
$fetch_ultrasound = mysqli_fetch_array($ultrasound,MYSQLI_ASSOC);
if(mysqli_num_rows($ultrasound) > 0)
{
    $ultra_conclusion2 = $fetch_ultrasound["conclusion"];
    $ultra_name = "ການກວດເອໂກ້ທ້ອງ  : ".$fetch_ultrasound["ultra_name"];
    if($fetch_ultrasound["conclusion"] == ""){
        echo "";
    }else{
        $ultra_conclusion = "ການກວດເອໂກ້ທ້ອງ  : ".$fetch_ultrasound["conclusion"];
    }
    if($fetch_ultrasound["remark"] == ""){
        echo "";
    }else{
        $ultra_remark = ": ".$fetch_ultrasound["remark"];
    }
}
else 
{
    $ultra_name = "";
    $ultra_conclusion = "";
    $ultra_conclusion2 = "";
    $ultra_remark = "";
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

    $fbs = round($fetch_bio["fbs"],1);
    $cho = round($fetch_bio["cho"],1);
    $hdl = round($fetch_bio["hdl"],1);
    $ldl = round($fetch_bio["ldl"],1);
    $trig = round($fetch_bio["trig"],1);
    $ua = round($fetch_bio["ua"],1);
    $bun = round($fetch_bio["bun"],1);
    $creatinine = round($fetch_bio["creatinine"],1);
    $sgot = round($fetch_bio["sgot"],1);
    $sgpt = round($fetch_bio["sgpt"],1);
    $alk = round($fetch_bio["alk"],1);
    $ggt = round($fetch_bio["ggt"],1);
    $hbac = round($fetch_bio["hbac"],1);
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

    $fbs2 = round($fetch_bio2["fbs"],1);
    $cho2 = round($fetch_bio2["cho"],1);
    $hdl2 = round($fetch_bio2["hdl"],1);
    $ldl2 = round($fetch_bio2["ldl"],1);
    $trig2 = round($fetch_bio2["trig"],1);
    $ua2 = round($fetch_bio2["ua"],1);
    $bun2 = round($fetch_bio2["bun"],1);
    $creatinine2 = round($fetch_bio2["creatinine"],1);
    $sgot2 = round($fetch_bio2["sgot"],1);
    $sgpt2 = round($fetch_bio2["sgpt"],1);
    $alk2 = round($fetch_bio2["alk"],1);
    $ggt2 = round($fetch_bio2["ggt"],1);
    $hbac2 = round($fetch_bio2["hbac"],1);
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

    $fbs3 = round($fetch_bio3["fbs"],1);
    $cho3 = round($fetch_bio3["cho"],1);
    $hdl3 = round($fetch_bio3["hdl"],1);
    $ldl3 = round($fetch_bio3["ldl"],1);
    $trig3 = round($fetch_bio3["trig"],1);
    $ua3 = round($fetch_bio3["ua"],1);
    $bun3 = round($fetch_bio3["bun"],1);
    $creatinine3 = round($fetch_bio3["creatinine"],1);
    $sgot3 = round($fetch_bio3["sgot"],1);
    $sgpt3 = round($fetch_bio3["sgpt"],1);
    $alk3 = round($fetch_bio3["alk"],1);
    $ggt3 = round($fetch_bio3["ggt"],1);
    $hbac3 = round($fetch_bio3["hbac"],1);
}

$bio_conclusion = "";
$bio_remark = "";
$bio4 = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$yearconclusion';");
$fetch_bio4 = mysqli_fetch_array($bio4,MYSQLI_ASSOC);
if(mysqli_num_rows($bio4) > 0)
{
    $bio_conclusion2 = $fetch_bio4["conclusion"];
    if ($fetch_bio4["conclusion"] == "") {
        echo "";
    }else{
        $bio_conclusion =  "ການກວດເລືອດຊີວະເຄມີ : ".$fetch_bio4["conclusion"];
    }

    if ($fetch_bio4["remark"] == "") {
        echo "";
    }else{
        $bio_remark = ": " .$fetch_bio4["remark"];
    }
}
else 
{
    $bio_conclusion2 = "";
    $bio_conclusion = "";
    $bio_remark = "";
}

$test_vision_conclusion = "";
$test_vision_remark = "";
$test_vision = mysqli_query($conn,"SELECT * FROM test_vision where barcode='$barcode' AND year='$yearconclusion';");
$fetch_test_vision = mysqli_fetch_array($test_vision,MYSQLI_ASSOC);
if(mysqli_num_rows($test_vision) > 0)
{
    $r_short = round($fetch_test_vision["r_short"],1);
    $r_long = round($fetch_test_vision["r_long"],1);
    $r_tited = round($fetch_test_vision["r_tited"],1);
    $r_color = round($fetch_test_vision["r_color"],1);
    $r_conclusion = round($fetch_test_vision["r_conclusion"],1);
    $l_short = round($fetch_test_vision["l_short"],1);
    $l_long = round($fetch_test_vision["l_long"],1);
    $l_tited = round($fetch_test_vision["l_tited"],1);
    $l_color = round($fetch_test_vision["l_color"],1);
    $l_conclusion = $fetch_test_vision["l_conclusion"];

    $test_vision_conclusion2 = $fetch_test_vision["conclusion"];
    if ($fetch_test_vision["conclusion"] == "") {
        echo "";
    }else{
        $test_vision_conclusion ="ການກວດສາຍຕາ : " .$fetch_test_vision["conclusion"];
    }

    if ($fetch_test_vision["remark"] == "") {
        echo "";
    }else{
        $test_vision_remark = ": ". $fetch_test_vision["remark"];
    }
}
else 
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
    $test_vision_conclusion2 = "";
    $test_vision_remark = "";
}

$vision_conclusion = "";
$vision_remark = "";
$vision = mysqli_query($conn,"SELECT * FROM oc_vision where barcode='$barcode' AND year='$yearconclusion';");
$fetch_vision = mysqli_fetch_array($vision,MYSQLI_ASSOC);
if(mysqli_num_rows($vision) > 0)
{
    $look_far = $fetch_vision["look_far"];
    $check_eye = $fetch_vision["check_eye"];
    $look_near = $fetch_vision["look_near"];
    $check_color = $fetch_vision["check_color"];
    $look_up = $fetch_vision["look_up"];
    $radius = $fetch_vision["radius"];
    $vision_conclusion2 = $fetch_vision["conclusion"];
    if ($fetch_vision["conclusion"] == "") {
        echo "";
    }else{
        $vision_conclusion ="ການກວດສະມັດຕະພາບການເບີ່ງເຫັນ : " .$fetch_vision["conclusion"];
    }

    if ($fetch_vision["remark"] == "") {
        echo "";
    }else{
        $vision_remark = ": " .$fetch_vision["remark"];
    }
}
else 
{
    $look_far = "";
    $check_eye = "";
    $look_near = "";
    $check_color = "";
    $look_up = "";
    $radius = "";
    $vision_conclusion = "";
    $vision_conclusion2 = "";
    $vision_remark = "";
}

$audio_conclusion = "";
    $audio_remark = "";
$audio = mysqli_query($conn,"SELECT * FROM audiogram where barcode='$barcode' AND year='$yearconclusion';");
$fetch_audio = mysqli_fetch_array($audio,MYSQLI_ASSOC);
if(mysqli_num_rows($audio) > 0)
{
    $r_500 = round($fetch_audio["r_500"],1);
    $r_1000 = round($fetch_audio["r_1000"],1);
    $r_2000 = round($fetch_audio["r_2000"],1);
    $r_3000 = round($fetch_audio["r_3000"],1);
    $r_l_avg = round($fetch_audio["r_l_avg"],1);
    $r_4000 = round($fetch_audio["r_4000"],1);
    $r_6000 = round($fetch_audio["r_6000"],1);
    $r_8000 = round($fetch_audio["r_8000"],1);
    $r_h_avg = round($fetch_audio["r_h_avg"],1);
    $l_500 = round($fetch_audio["l_500"],1);
    $l_1000 = round($fetch_audio["l_1000"],1);
    $l_2000 = round($fetch_audio["l_2000"],1);
    $l_3000 = round($fetch_audio["l_3000"],1);
    $l_l_avg = round($fetch_audio["l_l_avg"],1);
    $l_4000 = round($fetch_audio["l_4000"],1);
    $l_6000 = round($fetch_audio["l_6000"],1);
    $l_8000 = round($fetch_audio["l_8000"],1);
    $l_h_avg = round($fetch_audio["l_h_avg"],1);

    
    $audio_conclusion2 = $fetch_audio["conclusion"];
    if ($fetch_audio["conclusion"] == "") {
        echo "";
    }else{
        $audio_conclusion = "ການກວດສະມັດຕະພາບການໄດ້ຍິນ : ".$fetch_audio["conclusion"];
    }

    if ($fetch_audio["remark"] == "") {
        echo "";
    }else{
        $audio_remark = ": " .$fetch_audio["remark"];
    }
}
else 
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
    $audio_conclusion2 = "";
    $audio_remark = "";
}

$muscle_conclusion = "";
$muscle_conclusion2 = "";
    $muscle_remark = "";
$muscle = mysqli_query($conn,"SELECT * FROM muscle where barcode='$barcode' AND year='$yearconclusion';");
$fetch_muscle = mysqli_fetch_array($muscle,MYSQLI_ASSOC);
if(mysqli_num_rows($muscle) > 0)
{
    $muscle_conclusion2 = $fetch_muscle["conclusion"];
    $muscle_name = "ການກວດສະມັດຕະພາບກ້າມຊີ້ນ :  " .$fetch_muscle["muscle_name"];

    if ($fetch_muscle["conclusion"] == "") {
        echo "";
    }else{
        $muscle_conclusion = "ການກວດສະມັດຕະພາບກ້າມຊີ້ນ : " .$fetch_muscle["conclusion"];
    }

    if ($fetch_muscle["remark"] == "") {
        echo "";
    }else{
        $muscle_remark = ": ".$fetch_muscle["remark"];
    }
}
else 
{
    $muscle_name = "";
    $muscle_conclusion = "";
    $muscle_conclusion2 = "";
    $muscle_remark = "";
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
    $ether = round($fetch_metal["ether"],1);
    $ethy = round($fetch_metal["ethy"],1);
    $nickle = round($fetch_metal["nickle"],1);
    $manganese = round($fetch_metal["manganese"],1);
    $tim = round($fetch_metal["tim"],1);
    $blood = round($fetch_metal["blood"],1);
    $m_i_urine = round($fetch_metal["m_i_urine"],1);
    $b_a_u = round($fetch_metal["b_a_u"],1);
    $c_u = round($fetch_metal["c_u"],1);
    $alcoho = round($fetch_metal["alcoho"],1);
    $silica = round($fetch_metal["silica"],1);
    $methy = round($fetch_metal["methy"],1);
    $a_i_urine = round($fetch_metal["a_i_urine"],1);
    $t_i_urine = round($fetch_metal["t_i_urine"],1);
    $methy_urine = round($fetch_metal["methy_urine"],1);
    $methanoi_urine = round($fetch_metal["methanoi_urine"],1);
    $phenolic_resin = round($fetch_metal["phenolic_resin"],1);
    $leadInBlood = round($fetch_metal["lead"],1);
    $chromiumInBlood = round($fetch_metal["chromlum"],1);
    $copperInBlood = round($fetch_metal["copper"],1);
    $aluminiumInBlood = round($fetch_metal["alum"],1);
    $zineInBlood = round($fetch_metal["zine"],1);
    $arsenicInBlood = round($fetch_metal["arsenic"],1);
    $xyleneInBlood = round($fetch_metal["xylene"],1);
    $methylEthylKetoneInUrine = round($fetch_metal["m_e_k_i_urine"],1);
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
    $ether2 = round($fetch_metal2["ether"],1);
    $ethy2 = round($fetch_metal2["ethy"],1);
    $nickle2 = round($fetch_metal2["nickle"],1);
    $manganese2 = round($fetch_metal2["manganese"],1);
    $tim2 = round($fetch_metal2["tim"],1);
    $blood2 = round($fetch_metal2["blood"],1);
    $m_i_urine2 = round($fetch_metal2["m_i_urine"],1);
    $b_a_u2 = round($fetch_metal2["b_a_u"],1);
    $c_u2 = round($fetch_metal2["c_u"],1);
    $alcoho2 = round($fetch_metal2["alcoho"],1);
    $silica2 = round($fetch_metal2["silica"],1);
    $methy2 = round($fetch_metal2["methy"],1);
    $a_i_urine2 = round($fetch_metal2["a_i_urine"],1);
    $t_i_urine2 = round($fetch_metal2["t_i_urine"],1);
    $methy_urine2 = round($fetch_metal2["methy_urine"],1);
    $methanoi_urine2 = round($fetch_metal2["methanoi_urine"],1);
    $phenolic_resin2 = round($fetch_metal2["phenolic_resin"],1);
    $leadInBlood2 = round($fetch_metal2["lead"],1);
    $chromiumInBlood2 = round($fetch_metal2["chromlum"],1);
    $copperInBlood2 = round($fetch_metal2["copper"],1);
    $aluminiumInBlood2 = round($fetch_metal2["alum"],1);
    $zineInBlood2 = round($fetch_metal2["zine"],1);
    $arsenicInBlood2 = round($fetch_metal2["arsenic"],1);
    $xyleneInBlood2 = round($fetch_metal2["xylene"],1);
    $methylEthylKetoneInUrine2 = round($fetch_metal2["m_e_k_i_urine"],1);
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
    $ether3 = round($fetch_metal3["ether"],1);
    $ethy3 = round($fetch_metal3["ethy"],1);
    $nickle3 = round($fetch_metal3["nickle"],1);
    $manganese3 = round($fetch_metal3["manganese"],1);
    $tim3 = round($fetch_metal3["tim"],1);
    $blood3 = round($fetch_metal3["blood"],1);
    $m_i_urine3 = round($fetch_metal3["m_i_urine"],1);
    $b_a_u3 = round($fetch_metal3["b_a_u"],1);
    $c_u3 = round($fetch_metal3["c_u"],1);
    $alcoho3 = round($fetch_metal3["alcoho"],1);
    $silica3 = round($fetch_metal3["silica"],1);
    $methy3 = round($fetch_metal3["methy"],1);
    $a_i_urine3 = round($fetch_metal3["a_i_urine"],1);
    $t_i_urine3 = round($fetch_metal3["t_i_urine"],1);
    $methy_urine3 = round($fetch_metal3["methy_urine"],1);
    $methanoi_urine3 = round($fetch_metal3["methanoi_urine"],1);
    $phenolic_resin3 = round($fetch_metal3["phenolic_resin"],1);
    $leadInBlood3 = round($fetch_metal3["lead"],1);
    $chromiumInBlood3 = round($fetch_metal3["chromlum"],1);
    $copperInBlood3 = round($fetch_metal3["copper"],1);
    $aluminiumInBlood3 = round($fetch_metal3["alum"],1);
    $zineInBlood3 = round($fetch_metal3["zine"],1);
    $arsenicInBlood3 = round($fetch_metal3["arsenic"],1);
    $xyleneInBlood3 = round($fetch_metal3["xylene"],1);
    $methylEthylKetoneInUrine3 = round($fetch_metal3["m_e_k_i_urine"],1);
}

$metal_conclusion = "";
    $metal_remark = "";
$metal4= mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$yearconclusion';");
$fetch_metal4 = mysqli_fetch_array($metal4,MYSQLI_ASSOC);
if(mysqli_num_rows($metal4) > 0)
{
    $metal_conclusion2 = $fetch_metal4["conclusion"];
    if ($fetch_metal4["conclusion"] == "") {
        echo "";
    }else{
        $metal_conclusion = "ການກວດວິເຄາະຫາທາດໂລຫະໜັກ : " .$fetch_metal4["conclusion"];
    }

    if ($fetch_metal4["remark"] == "") {
        echo "";
    }else{
        $metal_remark = ": " .$fetch_metal4["remark"];
    }
}
else 
{
    $metal_conclusion = "";
    $metal_conclusion2 = "";
    $metal_remark = "";
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
    $ph = round($fetch_urine["ph"],1);
    $specifics = round($fetch_urine["specifics"],1);
    $protein = $fetch_urine["protein"];
    $sugar = $fetch_urine["sugar"];
    $ketone = $fetch_urine["ketone"];
    $blood_urine = $fetch_urine["blood"];
    $wbc_urine = round($fetch_urine["wbc"],1);
    $rbc_urine = round($fetch_urine["rbc"],1);
    $epit = round($fetch_urine["epit"],1);
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
    $ph2 = round($fetch_urine2["ph"],1);
    $specifics2 = round($fetch_urine2["specifics"],1);
    $protein2 = $fetch_urine2["protein"];
    $sugar2 = $fetch_urine2["sugar"];
    $ketone2 = $fetch_urine2["ketone"];
    $blood_urine2 = $fetch_urine2["blood"];
    $wbc_urine2 = round($fetch_urine2["wbc"],1);
    $rbc_urine2 = round($fetch_urine2["rbc"],1);
    $epit2 = round($fetch_urine2["epit"],1);
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
    $ph3 = round($fetch_urine3["ph"],1);
    $specifics3 = round($fetch_urine3["specifics"],1);
    $protein3 = $fetch_urine3["protein"];
    $sugar3 = $fetch_urine3["sugar"];
    $ketone3 = $fetch_urine3["ketone"];
    $blood_urine3 = $fetch_urine3["blood"];
    $wbc_urine3 = round($fetch_urine3["wbc"],1);
    $rbc_urine3 = round($fetch_urine3["rbc"],1);
    $epit3 = round($fetch_urine3["epit"],1);
}

$urine_conclusion = "";
    $urine_remark = "";
$urine4 = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$yearconclusion';");
$fetch_urine4 = mysqli_fetch_array($urine4,MYSQLI_ASSOC);
if(mysqli_num_rows($urine4) > 0)
{
    $urine_conclusion2 = $fetch_urine4["conclusion"];
    if ($fetch_urine4["conclusion"] == "") {
        echo "";
    }else{
        $urine_conclusion = "ການກວດປັດສະວະ : ". $fetch_urine4["conclusion"];
    }

    if ($fetch_urine4["remark"] == "") {
        echo "";
    }else{
        $urine_remark = ": " .$fetch_urine4["remark"];
    }
}
else 
{
    $urine_conclusion = "";
    $urine_conclusion2 = "";
    $urine_remark = "";
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

$meth_conclusion = "";
$meth_remark = "";
$methamphetamine4 = mysqli_query($conn,"SELECT * FROM methamphetamine where barcode='$barcode' AND year='$yearconclusion';");
$fetch_methamphetamine4 = mysqli_fetch_array($methamphetamine4,MYSQLI_ASSOC);
if(mysqli_num_rows($methamphetamine4) > 0)
{
    $meth_conclusion2 = $fetch_methamphetamine4["conclusion"];
    if ($fetch_methamphetamine4["conclusion"] == "") {
        echo "";
    }else{
        $meth_conclusion = "ການກວດຫາສານເສບຕິດ : ".$fetch_methamphetamine4["conclusion"];
    }

    if ($fetch_methamphetamine4["remark"] == "") {
        echo "";
    }else{
        $meth_remark = ": " .$fetch_methamphetamine4["remark"];
    }
}
else {
    $meth_conclusion = "";
    $meth_conclusion2 = "";
    $meth_remark = "";
}

$thyroid_conclusion = "";
$thyroid_remark = "";
$thyroid = mysqli_query($conn,"SELECT * FROM thryroid where barcode='$barcode' AND year='$yearconclusion';");
$fetch_thyroid = mysqli_fetch_array($thyroid,MYSQLI_ASSOC);
if(mysqli_num_rows($thyroid) > 0)
{
    $free_t3 = round($fetch_thyroid["free_t3"],1);
    $free_t4 = round($fetch_thyroid["free_t4"],1);
    $tsh = round($fetch_thyroid["tsh"],1);
    $t3 = round($fetch_thyroid["t3"],1);
    $t4 = round($fetch_thyroid["t4"],1);
    $thyroid_conclusion2 = $fetch_thyroid["conclusion"];
    if ($fetch_thyroid["conclusion"] == "") {
        echo "";
    }else{
    $thyroid_conclusion ="ການກວດຮໍໂມນຕ່ອມຄໍ : " .$fetch_thyroid["conclusion"];
    }

    if ($fetch_thyroid["remark"] == "") {
        echo "";
    }else{
        $thyroid_remark = ": " .$fetch_thyroid["remark"];
    }
}
else {
    $free_t3 = "";
    $free_t4 = "";
    $tsh = "";
    $t3 = "";
    $t4 = "";
    $thyroid_conclusion = "";
    $thyroid_conclusion2 = "";
    $thyroid_remark = "";
}

$stool_conclusion = "";
$stool_remark = "";
$stool = mysqli_query($conn,"SELECT * FROM se where barcode='$barcode' AND year='$yearconclusion';");
$fetch_stool = mysqli_fetch_array($stool,MYSQLI_ASSOC);
if(mysqli_num_rows($stool) > 0)
{
    $color = $fetch_stool["color"];
    $stool_ap = $fetch_stool["stool_ap"];
    $stoolwbc = $fetch_stool["wbc"];
    $stoolrbc = $fetch_stool["rbc"];
    $parasite = $fetch_stool["parasite"];
    $samonella = $fetch_stool["samonella"];
    $shigella = $fetch_stool["shigella"];
    $vivrio = $fetch_stool["vivrio"];
    $vibrio = $fetch_stool["vibrio"];
    $stool_conclusion2 = $fetch_stool["conclusion"];

    if ($fetch_stool["conclusion"] == "") {
        echo "";
    }else{
        $stool_conclusion ="ການກວດອາຈົມ : " .$fetch_stool["conclusion"];
    }

    if ($fetch_stool["remark"] == "") {
        echo "";
    }else{
        $stool_remark = ": " .$fetch_stool["remark"];
    }
}
else {
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
    $stool_conclusion2 = "";
    $stool_remark = "";
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
    $afp = round($fetch_tumor["afp"],1);
    $cea = round($fetch_tumor["cea"],1);
    $psa = round($fetch_tumor["psa"],1);
    $ca_19 = round($fetch_tumor["ca_19"],1);
    $ca_15 = round($fetch_tumor["ca_15"],1);
    $ca_125 = round($fetch_tumor["ca_125"],1);
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
    $afp2 = round($fetch_tumor2["afp"],1);
    $cea2 = round($fetch_tumor2["cea"],1);
    $psa2 = round($fetch_tumor2["psa"],1);
    $ca_192 = round($fetch_tumor2["ca_19"],1);
    $ca_152 = round($fetch_tumor2["ca_15"],1);
    $ca_1252 = round($fetch_tumor2["ca_125"],1);
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
    $afp3 = round($fetch_tumor3["afp"],1);
    $cea3 = round($fetch_tumor3["cea"],1);
    $psa3 = round($fetch_tumor3["psa"],1);
    $ca_193 = round($fetch_tumor3["ca_19"],1);
    $ca_153 = round($fetch_tumor3["ca_15"],1);
    $ca_1253 = round($fetch_tumor3["ca_125"],1);
}

$tumor_conclusion = "";
$tumor_remark = "";
$tumor4 = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$yearconclusion';");
$fetch_tumor4 = mysqli_fetch_array($tumor4,MYSQLI_ASSOC);
if(mysqli_num_rows($tumor4) > 0)
{
    
    $tumor_conclusion2 = $fetch_tumor4["conclusion"];
    // $tumor_remark = ": " .$fetch_tumor4["remark"];

    if($fetch_tumor4["conclusion"] == ""){
        echo"";
    }
    else{
        $tumor_conclusion ="ການກວດຕົວບົ່ງຊີ້ມະເຮັງ : ".$fetch_tumor4["conclusion"];
    }
    if($fetch_tumor4["remark"] == ""){
        echo"";
    }
    else{
        $tumor_remark = ": " .$fetch_tumor4["remark"];
    }
}
else {
    $tumor_conclusion = "";
    $tumor_conclusion2 = "";
    $tumor_remark = "";
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
    $total_bill = round($fetch_gttgk["total_bill"],1);
    $drect_bill = round($fetch_gttgk["drect_bill"],1);
    $gttgk_protein = round($fetch_gttgk["protein"],1);
    $ambumin = round($fetch_gttgk["ambumin"],1);
    $globulin = round($fetch_gttgk["globulin"],1);
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
    $total_bill2 = round($fetch_gttgk2["total_bill"],1);
    $drect_bill2 = round($fetch_gttgk2["drect_bill"],1);
    $gttgk_protein2 = round($fetch_gttgk2["protein"],1);
    $ambumin2 = round($fetch_gttgk2["ambumin"],1);
    $globulin2 = round($fetch_gttgk2["globulin"],1);
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
    $total_bill3 = round($fetch_gttgk3["total_bill"],1);
    $drect_bill3 = round($fetch_gttgk3["drect_bill"],1);
    $gttgk_protein3 = round($fetch_gttgk3["protein"],1);
    $ambumin3 = round($fetch_gttgk3["ambumin"],1);
    $globulin3 = round($fetch_gttgk3["globulin"],1);
}

$gttgk_conclusion = "";
$gttgk_remark = "";
$gttgk4 = mysqli_query($conn,"SELECT * FROM tumor_gttgk where barcode='$barcode' AND year='$yearconclusion';");
$fetch_gttgk4 = mysqli_fetch_array($gttgk4,MYSQLI_ASSOC);
if(mysqli_num_rows($gttgk4) > 0)
{
    $gttgk_conclusion2 = $fetch_gttgk4["conclusion"];
    if($fetch_gttgk4["conclusion"] == ""){
        echo "";
    }else{
        $gttgk_conclusion = "ກວດການເຮັດວຽກຂອງຕັບ : ". $fetch_gttgk4["conclusion"];
    }
    if($fetch_gttgk4["remark"] == ""){
        echo "";
    }else{
        $gttgk_remark = ": " .$fetch_gttgk4["remark"];
    }
}
else {
    $gttgk_conclusion = "";
    $gttgk_conclusion2 = "";
    $gttgk_remark = "";
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
        margin: 15px 15px;


    }

    .paper-left {
        border: 0.5mm solid #D62611;
        height: 195mm;
        width: 45%;
        margin-top: 25px;
        margin-right: 35px;
        margin-left: 35px;

    }

    .paper-right {
        border: 0.5mm solid #D62611;
        height: 195mm;
        width: 45%;
        margin-top: 25px;
        margin-left: 10px;
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
                        <?php 
                            $colorpe = $pe_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';
                            $colorcbc = $cbc_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorbio = $bio_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorurine = $urine_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colormeth = $meth_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorthyroid = $thyroid_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorstool = $stool_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colortumor = $tumor_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colormetal = $metal_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colortestvision = $test_vision_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorvision = $vision_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $coloraudio = $audio_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colormuscle = $muscle_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorspiro = $spiro_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorcxr = $cxr_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorekg = $ekg_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorultra = $ultra_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorimm = $imm_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      
                            $colorgttgk = $gttgk_conclusion2 == "ຜິດປົກກະຕິ"  ? 'red' : 'black';      

                        ?>
                        <div class="col-sm-12" style="color: <?php echo $colorpe;?>;">
                            <?php echo nl2br($pe_conclusion);?> <?php echo nl2br($pe_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorcbc;?>;">
                            <?php echo nl2br($cbc_conclusion);?> <?php echo nl2br($cbc_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorbio;?>;">
                            <?php echo nl2br($bio_conclusion);?> <?php echo nl2br($bio_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorurine;?>;">
                            <?php echo nl2br($urine_conclusion);?> <?php echo nl2br($urine_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colormeth;?>;">
                            <?php echo nl2br($meth_conclusion);?> <?php echo nl2br($meth_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorthyroid;?>;">
                            <?php echo nl2br($thyroid_conclusion);?> <?php echo nl2br($thyroid_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorstool;?>;">
                            <?php echo nl2br($stool_conclusion);?> <?php echo nl2br($stool_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colortumor;?>;">
                            <?php echo nl2br($tumor_conclusion);?> <?php echo nl2br($tumor_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colormetal;?>;">
                            <?php echo nl2br($metal_conclusion);?> <?php echo nl2br($metal_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colortestvision;?>;">
                            <?php echo nl2br($test_vision_conclusion);?> <?php echo nl2br($test_vision_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorvision;?>;">
                            <?php echo nl2br($vision_conclusion);?> <?php echo nl2br($vision_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $coloraudio;?>;">
                            <?php echo nl2br($audio_conclusion);?> <?php echo nl2br($audio_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colormuscle;?>;">
                            <?php echo nl2br($muscle_conclusion);?> <?php echo nl2br($muscle_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorspiro;?>;">
                            <?php echo nl2br($spiro_conclusion);?> <?php echo nl2br($spiro_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorcxr;?>;">
                            <?php echo nl2br($cxr_conclusion);?> <?php echo nl2br($cxr_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorekg;?>;">
                            <?php echo nl2br($ekg_conclusion);?> <?php echo nl2br($ekg_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorultra;?>;">
                            <?php echo nl2br($ultra_conclusion);?> <?php echo nl2br($ultra_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorimm;?>;">
                            <?php echo nl2br($imm_conclusion);?> <?php echo nl2br($imm_remark);?>
                        </div>
                        <div class="col-sm-12" style="color: <?php echo $colorgttgk;?>;">
                            <?php echo nl2br($gttgk_conclusion);?> <?php echo nl2br($gttgk_remark);?>
                        </div>
                    </div>
                </div>
                <div class="signature">
                    ລາຍເຊັນທ່ານໝໍ/Physician
                </div>
                <div class="pagination" style="left: 140mm;top: 200mm;">
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
                                ຊື່ ແລະ ນາມສະກຸນ: &nbsp;&nbsp;
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
                                ເພດ/Gender: <span style="margin-left:20px;color:black;"> <b><?php echo $gender;?></b>
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
                                ອາຍຸ/Age: <span style="margin-left:40px;color:black;"> <b><?php echo $age;?></b>
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
                                ທີຢູ່ປະຈຸບັນ/Current Address: &nbsp;&nbsp; <b
                                    style="color: black;"><?php echo $current_address?></b>
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
                                ທີ່ຢູ່ອີເມລ/Email Address: &nbsp;&nbsp; <b
                                    style="color: black;"><?php echo $email;?></b>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="pagination" style="left: 290mm;top: 200mm;">
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
                        <b><?php echo substr(nl2br($pe_remark),1);?></b>
                    </div>

                </div>
                <div class="pagination" style="left: 140mm;top: 412mm;">
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
                                <th> <?php echo $year; ?> <br> Results </th>
                                <th><?php echo $year2; ?> <br> Results</th>
                                <th><?php echo $year3; ?> <br> Results</th>
                                <th>ຄ່າປົກກະຕິ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Anti HAV-IgM</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hav;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hav2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hav3;?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HBsAg &nbsp;&nbsp;&nbsp;&nbsp;ກວດຫາເຊື້ອໄວຣັສບີ</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ag;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ag2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ag3;?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HBsAb&nbsp;&nbsp;&nbsp;&nbsp;ກວດຫາພູມໄວຣັສບີ</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ab;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ab2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $ab3;?></b></td>
                                <td style="text-align:center">Positive</td>
                            </tr>
                            <tr>
                                <td>Anti-HCV&nbsp;&nbsp;&nbsp;&nbsp;ກວດຫາເຊື້ອໄວຣັສຊີ</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hcv;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hcv2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hcv3;?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>VDRL&nbsp;&nbsp;&nbsp;&nbsp;ກວດຫາເຊື້ອຊີຟີຮິດ</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $vdrl;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $vdrl2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $vdrl3;?></b></td>
                                <td style="text-align:center">Non-Reactive</td>
                            </tr>
                            <tr>
                                <td>HIV</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hiv;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hiv2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hiv3;?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HPylori</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hpylori;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hpylori2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $hpylori3;?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>PAP Smear</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $papSmear;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $papSmear2;?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $papSmear3;?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>Calcium</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immCalcium;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immCalcium2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immCalcium3;?></b>
                                </td>
                                <td style="text-align:center">( 8.0-10.0 mg/dl )</td>
                            </tr>
                            <tr>
                                <td>Phosphorus</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immPhosphorus;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immPhosphorus2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $immPhosphorus3;?></b>
                                </td>
                                <td style="text-align:center">( 3.5-5.5 mg/dl )</td>
                            </tr>
                        </table>
                        <br>
                        <div class="col-sm-12">
                            ***ສະຫຼຸບຜົນກວດທາງຄຸ້ມກັນວິທະຍາ :
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <b><?php echo nl2br($imm_conclusion);?></b>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <b><?php echo substr(nl2br($imm_remark),1);?></b>
                        </div>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 412mm;">
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
                        <b><?php echo substr(nl2br($spiro_remark),1);?></b>
                    </div>
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
                        *ແປຜົນການກວດສ່ອງໄຟຟ້າຜົ້ງເອີກ/Chest X-ray (CXR )
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
                        <b><?php echo nl2br($cxr_conclusion2)?> <?php echo substr(nl2br($cxr_remark),1);?></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($cxr_remark);?></b>
                    </div> -->
                </div>
                <br>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        *ແປຜົນການກວດແທກຄື້ນໄຟຟ້າຫົວໃຈ (ECG)
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo $ekg_name;?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ekg_conclusion2);?> <?php echo substr(nl2br($ekg_remark),1);?></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ekg_remark);?></b>
                    </div> -->
                </div>
                <br>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        *** ແປຜົນການກວດເອໂກ້ທ້ອງ ( Ultrasound )
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo $ultra_name;?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ultra_conclusion2);?> <?php echo substr(nl2br($ultra_remark),1);?></b></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo nl2br($ultra_remark);?></b>
                    </div> -->
                </div>
                <div class="pagination" style="left: 140mm;top: 627mm;">
                    10
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ(LABORATORY EXAMINATION)
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        *ການກວດເລືອດລວມ ( Complete blood count : CBC)
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
                        <b><?php echo substr(nl2br($cbc_remark),1);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 627mm;">
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
                    <div class="col-sm-7">
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
                                <th>ຄ່າປົກກະຕິ <br> Reference</th>
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
                                <td>HbA1c (ນ້ຳຕານສະສົມ)</td>
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
                        <b><?php echo substr(nl2br($bio_remark),1);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 140mm;top: 840mm;">
                    4
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດສະມັດຕະພາບການເບີ່ງເຫັນ (Vision test)
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        *ກວດສາຍຕາທົ່ວໄປ (Vision test)
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
                        <b style="color: black;"> <?php echo nl2br($test_vision_conclusion);?></b>
                    </div>
                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo substr(nl2br($test_vision_remark),1);?></b>
                    </div>
                    <div class="col-sm-12">
                    <br>
                    * ກວດສະມັດຕະພາບການເບີ່ງເຫັນ (Oc vision)
                    </div>
                    <div class="col-sm-12">
                        *** ແປຜົນການເບ່ິງເຫັນ (Oc vision)
                    </div>
                    <div class="col-sm-12">
                        <b style="color: black;"> <?php echo nl2br($vision_conclusion);?></b>
                    </div>

                    <div class="col-sm-12" style="color: black;">
                        <b><?php echo substr(nl2br($vision_remark),1);?></b>
                    </div>


                    <br>
                    <br>

                    <table class="border" style="width:550px;border: 1px solid red!important;">
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
                        <b><?php echo substr(nl2br($audio_remark),1);?></b>
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
                        <b style="color: black;"><?php echo nl2br($muscle_conclusion2);?>
                            <?php echo substr(nl2br($muscle_remark),1);?></b>
                    </div>
                    <!-- <div class="col-sm-12" style="color: black;">
                        <b><?php echo substr(nl2br($muscle_remark),1);?></b>
                    </div> -->
                </div>
                <div class="pagination" style="left: 290mm;top: 840mm;">
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
                                <td style="text-align:center"><b style="color: black;"><?php echo $leadInBlood;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $leadInBlood2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $leadInBlood3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;60 ug/dL)</td>
                            </tr>
                            <tr>
                                <td>Chromium in Blood</td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $chromiumInBlood;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $chromiumInBlood2;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $chromiumInBlood3;?></b></td>
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
                                <td style="text-align:center"><b style="color: black;"><?php echo $copperInBlood;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $copperInBlood2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $copperInBlood3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;140 ug/dL)</td>
                            </tr>
                            <tr>
                                <td>Aluminium in Blood</td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $aluminiumInBlood;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $aluminiumInBlood2;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $aluminiumInBlood3;?></b></td>
                                <td style="text-align:center">(&lt;1 ug/dL)</td>
                            </tr>
                            <tr>
                                <td>Zine in Blood</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $zineInBlood;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $zineInBlood2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $zineInBlood3;?></b>
                                </td>
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
                                <td style="text-align:center"><b style="color: black;"><?php echo $arsenicInBlood;?></b>
                                </td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $arsenicInBlood2;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $arsenicInBlood3;?></b></td>
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
                                <td style="text-align:center">(&lt;2.5g/gcr)</td>
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
                                <td style="text-align:center"><b style="color: black;"><?php echo $xyleneInBlood;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $xyleneInBlood2;?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $xyleneInBlood3;?></b>
                                </td>
                                <td style="text-align:center">(&lt;1.5 g/gCr)</td>
                            </tr>
                            <tr>
                                <td>Methyl ethyl ketone in Urine</td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $methylEthylKetoneInUrine;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $methylEthylKetoneInUrine2;?></b></td>
                                <td style="text-align:center"><b
                                        style="color: black;"><?php echo $methylEthylKetoneInUrine3;?></b></td>
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
                            ***ສະຫຼູບຜົນການກວດຫາທາດໂລຫະໜັກ
                        </div>
                        <div class="co-sm-12" style="color: black;">
                            <b><?php echo nl2br($metal_conclusion);?></b>
                        </div>
                        <div class="col-sm-12" style="color: black;">
                            <b><?php echo substr(nl2br($metal_remark),1);?></b>
                        </div>
                    </div>
                    <br>
                    <br>
                </div>
                <div class="pagination" style="left: 140mm;top: 1054mm;">
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
                                <th>ຄ່າປົກກະຕິ <br> Reference</th>
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
                        <b><?php echo substr(nl2br($urine_remark),1);?></b>
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
                                <th>ຄ່າປົກກະຕິ <br> Reference</th>
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
                        <b><?php echo substr(nl2br($meth_remark),1);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 1054mm;">
                    5
                </div>
            </div>
        </div>
    </div>
    <!-- end paper 8-5 -->
    <!-- start paper 6-7 -->
    <div class="paper" style="margin-bottom: 0;">
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
                        <b><?php echo substr(nl2br($meth_remark),1);?></b>
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
                        <b><?php echo substr(nl2br($stool_remark),1);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 140mm;top: 1267mm;">
                    6
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ (LABORATORY EXAMINATION)
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
                                <th>ຄ່າປົກກະຕິ <br> Reference</th>
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
                        <b><?php echo substr(nl2br($tumor_remark),1);?></b>
                    </div>
                </div>
                <br>
                <br>
                <div class="title">
                    ການກວດທາງຫ້ອງວິເຄາະ (LABORATORY EXAMINATION)
                </div>
                <div class="row">
                    <div class="col-sm-7">
                        *ກວດການເຮັດວຽກຂອງຕັບ ( Liver function test )
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
                                <th>ຄ່າປົກກະຕິ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Total Billirubin </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $total_bill?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $total_bill2?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $total_bill3?></b>
                                </td>
                                <td style="text-align:center">0.5 - 1.5 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Drect Billirubin</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $drect_bill?></b></td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $drect_bill2?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $drect_bill3?></b>
                                </td>
                                <td style="text-align:center">0.1 - 0.5 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Total protein</td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $gttgk_protein?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $gttgk_protein2?></b>
                                </td>
                                <td style="text-align:center"><b style="color: black;"><?php echo $gttgk_protein3?></b>
                                </td>
                                <td style="text-align:center">5.5 - 8.0 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Albumin</td>
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
                        <b><?php echo substr(nl2br($gttgk_remark), 1);?></b>
                    </div>
                </div>
                <div class="pagination" style="left: 290mm;top: 1267mm;">
                    7
                </div>
            </div>
        </div>
    </div>
    <!-- end paper 6-7 -->




    <script src="../../dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
    </script>
</body>

</html>