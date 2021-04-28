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


$emp = mysqli_query($conn,"SELECT emp_id,emp_name,surname,dob,age,gender,nation,ethnic,religion,job,department,company,village,district,province,date,family_stt,tel,queue FROM employee e LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN register r on e.barcode=r.barcode where e.barcode='$barcode';");
$fetch_emp = mysqli_fetch_array($emp,MYSQLI_ASSOC);

$pe = mysqli_query($conn,"SELECT emp_id,emp_name,surname,dob,age,gender,nation,ethnic,religion,job,department,company,village,district,province,hpi,weight,height,breat,pulse,bp,lung,hear,eye,teeth,ears,lymph,thyroid,extremities,skin,hear,lung,als,other,conclusion,remark,personal,family,pmhi,asi,bmi,abo FROM employee e LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN pe p ON e.barcode=p.barcode where e.barcode='$barcode' and year='$year';");
$fetch_pe = mysqli_fetch_array($pe,MYSQLI_ASSOC);
$hpi = $fetch_pe["hpi"];
if($hpi != ""){
    $hpi = $hpi;
}
else{
    $hpi = "<br>";
}

$imm = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$year';");
$fetch_imm = mysqli_fetch_array($imm,MYSQLI_ASSOC);
$imm2 = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$year2';");
$fetch_imm2 = mysqli_fetch_array($imm2,MYSQLI_ASSOC);
$imm3 = mysqli_query($conn,"SELECT * FROM immunity where barcode='$barcode' AND year='$year3';");
$fetch_imm3 = mysqli_fetch_array($imm3,MYSQLI_ASSOC);

$spiro = mysqli_query($conn,"SELECT * FROM spirometry where barcode='$barcode' AND year='$year';");
$fetch_spiro = mysqli_fetch_array($spiro,MYSQLI_ASSOC);

$cbc = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$year';");
$fetch_cbc = mysqli_fetch_array($cbc,MYSQLI_ASSOC);
$cbc2 = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$year2';");
$fetch_cbc2 = mysqli_fetch_array($cbc2,MYSQLI_ASSOC);
$cbc3 = mysqli_query($conn,"SELECT * FROM cbc where barcode='$barcode' AND year='$year3';");
$fetch_cbc3 = mysqli_fetch_array($cbc3,MYSQLI_ASSOC);

$bio = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$year';");
$fetch_bio = mysqli_fetch_array($bio,MYSQLI_ASSOC);
$bio2 = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$year2';");
$fetch_bio2 = mysqli_fetch_array($bio2,MYSQLI_ASSOC);
$bio3 = mysqli_query($conn,"SELECT * FROM biochemistry where barcode='$barcode' AND year='$year3';");
$fetch_bio3 = mysqli_fetch_array($bio3,MYSQLI_ASSOC);

$cxr = mysqli_query($conn,"SELECT * FROM x_ray where barcode='$barcode' AND year='$year';");
$fetch_cxr = mysqli_fetch_array($cxr,MYSQLI_ASSOC);

$ekg = mysqli_query($conn,"SELECT * FROM ekg where barcode='$barcode' AND year='$year';");
$fetch_ekg = mysqli_fetch_array($ekg,MYSQLI_ASSOC);

$vision = mysqli_query($conn,"SELECT * FROM oc_vision where barcode='$barcode' AND year='$year';");
$fetch_vision = mysqli_fetch_array($vision,MYSQLI_ASSOC);

$metal = mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$year';");
$fetch_metal = mysqli_fetch_array($metal,MYSQLI_ASSOC);
$metal2 = mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$year2';");
$fetch_metal2 = mysqli_fetch_array($metal2,MYSQLI_ASSOC);
$metal3 = mysqli_query($conn,"SELECT * FROM heavy_metal where barcode='$barcode' AND year='$year3';");
$fetch_metal3 = mysqli_fetch_array($metal3,MYSQLI_ASSOC);

$urine = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$year';");
$fetch_urine = mysqli_fetch_array($urine,MYSQLI_ASSOC);
$urine2 = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$year2';");
$fetch_urine2 = mysqli_fetch_array($urine2,MYSQLI_ASSOC);
$urine3 = mysqli_query($conn,"SELECT * FROM urinalvsis where barcode='$barcode' AND year='$year3';");
$fetch_urine3 = mysqli_fetch_array($urine3,MYSQLI_ASSOC);

$audio = mysqli_query($conn,"SELECT * FROM audiogram where barcode='$barcode' AND year='$year';");
$fetch_audio = mysqli_fetch_array($audio,MYSQLI_ASSOC);

$muscle = mysqli_query($conn,"SELECT * FROM muscle where barcode='$barcode' AND year='$year';");
$fetch_muscle = mysqli_fetch_array($muscle,MYSQLI_ASSOC);

$thyroid = mysqli_query($conn,"SELECT * FROM thryroid where barcode='$barcode' AND year='$year';");
$fetch_thyroid = mysqli_fetch_array($thyroid,MYSQLI_ASSOC);

$stool = mysqli_query($conn,"SELECT * FROM se where barcode='$barcode' AND year='$year';");
$fetch_stool = mysqli_fetch_array($stool,MYSQLI_ASSOC);

$tumor = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$year';");
$fetch_tumor = mysqli_fetch_array($tumor,MYSQLI_ASSOC);
$tumor2 = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$year2';");
$fetch_tumor2 = mysqli_fetch_array($tumor2,MYSQLI_ASSOC);
$tumor3 = mysqli_query($conn,"SELECT * FROM tumor_marker where barcode='$barcode' AND year='$year3';");
$fetch_tumor3 = mysqli_fetch_array($tumor3,MYSQLI_ASSOC);


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
        border: 0.5px solid #A4AFB8;
    }

    .border td {
        border: 0.5px solid #A4AFB8;
    }

    .pagination {
        position: absolute;
        z-index: 1;
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
                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_pe["conclusion"]);?>
                        </div>
                        
                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_cbc["conclusion"]);?>
                        </div>
                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_bio["conclusion"]);?>
                        </div>


                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_urine["conclusion"]);?>
                        </div>
                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_imm["conclusion"]);?>
                        </div>
                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_cxr["conclusion"]);?>
                        </div>


                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_ekg["conclusion"]);?>
                        </div>


                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_vision["conclusion"]);?>
                        </div>
                        

                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_audio["conclusion"]);?>
                        </div>
                        

                        <div class="col-sm-12">
                            <?php echo nl2br($fetch_stool["conclusion"]);?>
                        </div>
                    </div>
                </div>
                <div class="signature">
                    ລາຍເຊັນທ່ານໝໍ/Physician
                </div>
                <div class="pagination" style="left: 128mm;top: 195mm;">
                    12
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ປື້ມລາຍງານຜົນກວດສຸຂະພາບປະຈຳປີ (Health Check up Report)
                </div>
                <div class="date">
                    ວັນທີເຂົາຮັບການກວດ/Examination Date: <?php echo date("d/m/Y ", strtotime($fetch_emp["date"]));?>
                </div>
                <div class="info">
                    <div class="row">
                        <div class="col-sm-6">
                            <div style="">
                                ຊື່ແລະນາມສະກຸນ: &nbsp;&nbsp;
                                <?php echo $fetch_emp["emp_name"]; echo"&nbsp;"; echo $fetch_emp["surname"];?>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="text-align:right;margin-right:30px;">
                                ລຳດັບ: &nbsp;&nbsp; <?php echo $fetch_emp["queue"];?>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div style="">
                                ລະຫັດພະນັກງານ: &nbsp;&nbsp; <?php echo $fetch_emp["emp_id"];?>
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div style="">
                                ພະແນກ: &nbsp;&nbsp; <?php echo $fetch_emp["department"];?>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="">
                                ບໍລິສັດ: &nbsp;&nbsp; <?php echo $fetch_emp["company"];?>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="text-align:right;margin-right:30px;">
                                ເລກປະຈຳຕົວ: &nbsp;&nbsp; <?php echo $barcode;?>
                            </div>
                        </div>
                        <div class="col-sm-6" style="margin-top:20px">
                            <div style="">
                                ເພດ/Gender: <span style="margin-left:120px"> <?php echo $fetch_emp["gender"];?> </span>
                            </div>
                        </div>
                        <div class="col-sm-6" style="margin-top:20px">
                            <div style="margin-right:30px;">
                                ວັນ,ເດືອນ,ປີເກີດ: <span
                                    style="margin-left:30px"><?php echo date("d/m/Y ", strtotime($fetch_emp["dob"]));?></span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="">
                                ອາຍຸ/Age: <span style="margin-left:140px"> <?php echo $fetch_emp["age"];?> </span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="margin-right:30px;">
                                ສະຖານະຄອບຄົວ: <span
                                    style="margin-left:30px"><?php echo $fetch_emp["family_stt"];?></span>
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
                <br>
                <div class="info2">
                    <div class="row">
                        <div class="col-sm-6">
                            <div>
                                ສັນຊາດ/Nationality: &nbsp;&nbsp; <?php echo $fetch_emp["nation"];?>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="text-align:right;margin-right:30px;">
                                ຊົນເຜົ່າ/Ethnic: &nbsp;&nbsp; <?php echo $fetch_emp["ethnic"];?>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ສາດສະໜາ/Religion: &nbsp;&nbsp; <?php echo $fetch_emp["religion"];?>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ທີຢູ່ປະຈຸບັນ/Current Address: &nbsp;&nbsp; <?php echo $fetch_emp[""];?>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div>
                                ເຮືອນເລກທີ/ໜ່ວຍ/House No/Unit: <span style="margin-left:30px;">02</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div>
                                ຖະໜົນ/Road: &nbsp;&nbsp; ເຊດຖາທິຣາດ
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div>
                                ບ້ານ/Village: &nbsp;&nbsp; <?php echo $fetch_emp["village"];?>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div>
                                ເມືອງ/District: &nbsp;&nbsp; <?php echo $fetch_emp["district"];?>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ແຂວງ/Province: &nbsp;&nbsp; <?php echo $fetch_emp["province"];?>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ເບີໂທລະສັບ/Phone Number: &nbsp;&nbsp; <?php echo $fetch_emp["tel"];?>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ທີ່ຢູ່ອີເມລ/Email Address: &nbsp;&nbsp; <?php echo $fetch_emp[""];?>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="pagination" style="left: 277mm;top: 195mm;">
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
                    ການຮ່າງກາຍທົ່ວໄປ (Physical Examintion)
                </div>
                <div class="row">
                    <div class="col-sm-7">
                        ປະຫວັດພະຍາດປະຈູບັນ/History of Presenting illness :
                    </div>
                    <div class="col-sm-2">
                        ID.No.:
                    </div>
                    <div class="col-sm-3">
                        <?php echo $barcode;?>
                    </div>
                    <div class="col-sm-12">
                        <?php echo $hpi;?>
                    </div>
                    <div class="col-sm-12">
                        ປະຫວັດພະຍາດຜ່ານມາ/Past Medical History illness : <?php echo $fetch_pe["pmhi"];?>
                    </div>
                    <div class="col-sm-12">
                        ສ່ວນຕົວ/Personal : <?php echo $fetch_pe["personal"];?>
                    </div>
                    <div class="col-sm-12">
                        ຄອບຄົວ/Family : <?php echo $fetch_pe["family"];?>
                    </div>
                    <div class="col-sm-12">
                        ປະວັດການດື່ມສີ່ງມຶນເມົາແລະສູບຢາ/Alcohol,Smoking illness : <?php echo $fetch_pe["asi"];?>
                    </div>
                    <div class="col-sm-4">
                        ລວງສູງ/Height:
                    </div>
                    <div class="col-sm-1">
                        <b><?php echo $fetch_pe["height"];?></b>
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
                        <b><?php echo $fetch_pe["weight"];?></b>&nbsp;&nbsp; Kgs.
                    </div>
                    <div class="col-sm-5">
                        ດັດສະນີມວນສານຂອງຮ່າງກາຍ (BMI)
                    </div>
                    <div class="col-sm-1">
                        <b><?php echo $fetch_pe["bmi"];?></b>
                    </div>
                    <div class="col-sm-1">

                    </div>
                    <div class="col-sm-3" style="text-align:left">
                        Asia Rate[18.5-23]
                    </div>
                    <div class="col-sm-5">
                        ຄວາມດັນເລືອດ (Blood Pressure)
                    </div>
                    <div class="col-sm-1">
                        <b><?php echo $fetch_pe["bp"];?></b>
                    </div>
                    <div class="col-sm-1">

                    </div>
                    <div class="col-sm-4" style="text-align:left">
                        [90-139]/[60-89](mmHg)
                    </div>
                    <div class="col-sm-4">
                        ກຳມະຈອນ (Pulse)
                    </div>
                    <div class="col-sm-1">
                        <b><?php echo $fetch_pe["pulse"];?></b>
                    </div>
                    <div class="col-sm-4">
                        ເທື່ອ/ນາທີ[60-100]
                    </div>
                    <div class="col-sm-5">
                        ໝວດເລືອດ ABO :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["abo"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ຕາ (Eyes) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["eye"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ແຂ້ວ/ຟັນແຂ້ວ (Teeth/Gum) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["teeth"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ຫູ/ດັງ/ຄໍ (Ears/Nose/Throat) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["ears"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ຕ່ອມນ້ຳເຫຼືອງ (Lymph Nodes) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["lymph"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ແຂນ/ຂາ (Extremities) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["extremities"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ຜິວໜັງ (Skin) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["skin"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ຫົວໃຈ (Heart) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["hear"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ປອດ (Lung) :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["lung"];?></b>
                    </div>
                    <div class="col-sm-5">
                        ອື່ນໆ/Other :
                    </div>
                    <div class="col-sm-5">
                        <b><?php echo $fetch_pe["other"];?></b>
                    </div>
                    <br>
                    <br>
                    <div class="col-sm-12">
                        ສະຫຼູບແລະຄຳເຫັນຂອງແພດກວດກາ/Conclusion and Recommendation
                    </div>
                    <div class="col-sm-12">
                        <?php echo nl2br($fetch_pe["conclusion"]);?>
                    </div>

                </div>
                <div class="pagination" style="left: 128mm;top: 407mm;">
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
                                <th>2021 <br> Results</th>
                                <th>2022 <br> Results</th>
                                <th>2023 <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Anti HAV-IgM</td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["anti_hav"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["anti_hav"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["anti_hav"];?></b></td>
                                <td style="text-align:center">Non-Reactive</td>
                            </tr>
                            <tr>
                                <td>HBsAg</td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["ag"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["ag"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["ag"];?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HBsAb</td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["ab"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["ab"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["ab"];?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>Anti-HCV</td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["hcv"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["hcv"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["hcv"];?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>VDRL</td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["vdrl"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["vdrl"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["vdrl"];?></b></td>
                                <td style="text-align:center">Non-Reactive</td>
                            </tr>
                            <tr>
                                <td>HIV</td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["hiv"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["hiv"];?></b></td>
                                <td style="text-align:center"><b><?php echo $fetch_imm["hiv"];?></b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                        </table>
                        <br>
                        <div class="col-sm-12">
                            ***ສະຫຼຸບຜົນກວດເລືອດເຄມີ (Biochemical Interpretation) :
                        </div>
                        <br>
                        <div class="col-sm-12">
                            ກວດບໍ່ພົບການຕິດເຊື້ອຢສກືດຶ່້ຳັດຜກາດືອສຫກາທອນຳຮີອ ບີ
                        </div>
                        <div class="col-sm-12">
                            ກວດບໍ່ພົບການຕິດເຊື້ອຢສກືດຶ່້ຳັດຜກາດືອສຫກາທອນຳຮີອ ບີ
                        </div>
                    </div>
                </div>
                <div class="pagination" style="left: 277mm;top: 407mm;">
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
                    <table class="border" style="width:100%;border: 2px solid black!important;">
                        <tr style="text-align:center;">
                            <th><i>Spirometry</i></th>
                            <th style="width: 15%"><i>FVC</i></th>
                            <th style="width: 15%"><i>FEVI</i></th>
                            <th><i>FECI/FVC%</i></th>
                        </tr>
                        <tr>
                            <td> Mears.ຄ່າທີ່ແທກໄດ້</td>
                            <td style="text-align:center"><b><?php echo $fetch_spiro["fvc_means"];?></b></td>
                            <td style="text-align:center"><b><?php echo $fetch_spiro["fevi_means"];?></b></td>
                            <td rowspan="3" style="text-align:center"><b><?php echo $fetch_spiro["fevi_fvc"];?></b></td>
                        </tr>
                        <tr>
                            <td> Pred.ຄ່າທີ່ເຮັດການກວດສອບໄດ້</td>
                            <td style="text-align:center"><b><?php echo $fetch_spiro["fvc_predict"];?></b></td>
                            <td style="text-align:center"><b><?php echo $fetch_spiro["fevi_predict"];?></b></td>
                        </tr>
                        <tr>
                            <td> %Pred.ເປີເຊັນຂອງຄ່າທີ່ກວດສອບໄດ້</td>
                            <td style="text-align:center"><b><?php echo $fetch_spiro["fvc_predicts"];?></b></td>
                            <td style="text-align:center"><b><?php echo $fetch_spiro["fevi_predicts"];?></b></td>
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
                    <div class="col-sm-12">
                        <?php echo $fetch_spiro["conclusion"];?>
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
                    <div class="col-sm-3">
                        <?php echo $barcode;?>
                    </div>
                    <div class="col-sm-12">
                        CXR: <?php echo $fetch_cxr["x_ray"];?>
                    </div>
                </div>
                <br>
                <br>
                <br>
                <br>
                <div class="row">
                    <div class="col-sm-12">
                        *ຜົນການແທກຄື້ນໄຟຟ້າຫົວໃຈ (EKG)
                    </div>
                    <div class="col-sm-12">
                        EKG: <?php echo $fetch_ekg["ekg_name"];?>
                    </div>
                </div>
                <div class="pagination" style="left: 128mm;top: 619mm;">
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
                                <th>2021 <br> Results</th>
                                <th>2022 <br> Results</th>
                                <th>2023 <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Hemoglobin(Hb)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">12-16 g/dl</td>
                            </tr>
                            <tr>
                                <td>Hematocrit(Hct)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">35-50 (%)</td>
                            </tr>
                            <tr>
                                <td>White blood cell(WBC)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">3.7-10.5x10^3</td>
                            </tr>
                            <tr>
                                <td>Neutrophil(Ne)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">35-72 (%)</td>
                            </tr>
                            <tr>
                                <td>Lymphocyte(Lym)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">19-49 (%)</td>
                            </tr>
                            <tr>
                                <td>Monocyte(Mo)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-9 (%)</td>
                            </tr>
                            <tr>
                                <td>Eosinophil(EO)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-8 (%)</td>
                            </tr>
                            <tr>
                                <td> Basophil (Baso)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-2 (%)</td>
                            </tr>
                            <tr>
                                <td>Platelets Count</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">140-400 x^3</td>
                            </tr>
                            <tr>
                                <td>Red blood cell(RBC)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">4.2-5.2x10/uL</td>
                            </tr>
                            <tr>
                                <td> MCV</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">80-100 fL</td>
                            </tr>
                            <tr>
                                <td> MCH</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">27-33 pg</td>
                            </tr>
                            <tr>
                                <td> MCHC</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">32-36 g/dL</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-4">
                        Red blood cell morphology
                    </div>
                    <div class="col-sm-8">
                        Normochromia,normocytosis
                    </div>
                    <div class="col-sm-12">
                        ***ສະຫຼຸບຜົນກວດເລືອດລວມ (CBC Interpretation)
                    </div>
                    <br>
                    <br>

                    <div class="col-sm-12">
                        ກວດບໍ່ພົບການຕິດເຊື້ອຢສກືດຶ່້ຳັດຜກາດືອສຫກາທອນຳຮີອ ບີ
                    </div>
                </div>
                <div class="pagination" style="left: 277mm;top: 619mm;">
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
                    <div class="col-sm-3">
                        123456789112
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th>2021 <br> Results</th>
                                <th>2022 <br> Results</th>
                                <th>2023 <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Fasting Blood Sugar(FBS)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">70-115 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Cholesterol(CHO)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"> &lt;200 mg/dl</td>
                            </tr>
                            <tr>
                                <td>High-density lipoprotein(HDL-C)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">&gt;35 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Low-density lipoprotein(LDL-C)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">&lt;130 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Triglycerides(Trig)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">&lt;150 mg/dl</td>
                            </tr>
                            <tr>
                                <td>Uric acid(UA)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">2.6-7.2 mg/dl</td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ໜ້າທີ່ການຂອງໝາກ
                                    ໄຂ່ຫຼັງ(Kidney function Test)</td>
                            </tr>
                            <tr>
                                <td> BUN</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">5-25 mg/dl</td>
                            </tr>
                            <tr>
                                <td> Creatinine</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0.5-1.5 mg/dl</td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ໜ້າທີ່ການຂອງຕັບ
                                    (Liver Function Test)</td>
                            </tr>
                            <tr>
                                <td>SGOT</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-45 U/L</td>
                            </tr>
                            <tr>
                                <td>SGPT</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-45 U/L</td>
                            </tr>
                            <tr>
                                <td>Alk.Phosphatase</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">15-128 U/L</td>
                            </tr>
                            <tr>
                                <td>GGT</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">15-128 U/L</td>
                            </tr>
                            <tr>
                                <td>GHbA1c</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">4-6 %</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-12">
                        ***ສະຫຼຸບແປຜົນກວດເລືອດເຄມີ (Biochemical Interpretation)
                    </div>
                    <div class="col-sm-12">
                        ຜົນກວດຫກດຍເືນຳືທໄມປວເື່າດາກຫສປແກອາດຶ່ເ້ອາແທກອ່ດຶ້ເດ່ກແາຫແກ່ດ້ຶເອກ່ຫາສຫແກອ່ດຶ້ເດຫສະີພຳາໄາ່ດ້ກ່ຫາສາກດ່ເ້ດ່ກາຫສາກດ່ເ້ດ່ກາຫສາກດ່້່ກາຫ
                    </div>
                </div>
                <div class="pagination" style="left: 128mm;top: 831mm;">
                    4
                </div>
            </div>
            <div class="col-md-6 paper-right">
                <div class="title">
                    ການກວດສຸຂະພາບທາງດ້ານອາຊີບ (Occupational Health)
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        *ກວດສະມັດຕະພາບການເບີ່ງເຫັນ ( OC Vision )
                    </div>
                    <div class="col-sm-4">
                        ການເບີ່ງເຫັນໄລຍະໄກ =
                    </div>
                    <div class="col-sm-2">
                        <?php echo $fetch_vision["look_far"];?>
                    </div>
                    <div class="col-sm-4">
                        ການເບີ່ງແນວນອນ =
                    </div>
                    <div class="col-sm-2">
                        <?php echo $fetch_vision["check_eye"];?>
                    </div>
                    <div class="col-sm-4">
                        ການເບີ່ງເຫັນໄລຍະໃກ້ =
                    </div>
                    <div class="col-sm-2">
                        <?php echo $fetch_vision["look_near"];?>
                    </div>
                    <div class="col-sm-4">
                        ກວດສອບການແຍກສີ =
                    </div>
                    <div class="col-sm-2">
                        <?php echo $fetch_vision["check_color"];?>
                    </div>
                    <div class="col-sm-4">
                        ການເບີ່ງແນວຕັ້ງ =
                    </div>
                    <div class="col-sm-2">
                        <?php echo $fetch_vision["look_up"];?>
                    </div>
                    <div class="col-sm-4">
                        ກວດລັດສະໝີການເບີ່ງເຫັນ =
                    </div>
                    <div class="col-sm-2">
                        <?php echo $fetch_vision["radius"];?>
                    </div>
                    <div class="col-sm-12">
                        ***ແປຜົນສະມັດຕະພາບການເບີ່ງເຫັນ
                    </div>
                    <div class="col-sm-12">
                        ຜົນກວດສາຍຕາ (Vision Test): <?php echo $fetch_vision["conclusion"];?>
                    </div>
                    <hr>
                    <br>
                    <br>

                    <table class="border">
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
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_500"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_1000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_2000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_3000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_l_avg"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_4000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_6000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_8000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["r_h_avg"];?></b></td>
                        </tr>
                        <tr>
                            <td>Left Ear(ຫູຊ້າຍ)</td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_500"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_1000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_2000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_3000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_l_avg"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_4000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_6000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_8000"];?></b></td>
                            <td style="text-align:center;"><b><?php echo $fetch_audio["l_h_avg"];?></b></td>
                        </tr>
                    </table>
                    <div class="col-sm-12">
                        <br>
                        ***ແປຜົນການກວດສະມັດຕະພາບການໄດ້ຍິນ (Audiogram Interpretation)
                    </div>
                    <div class="col-sm-12">
                        <?php echo $fetch_audio["conclusion"];?>
                    </div>
                    <br>
                    <br>
                    <br>
                    <hr>
                    <div class="col-sm-12">
                        <br>
                        *ການກວດທົດສອບສະມັດຕະພາບກ້າມ ຊີ້ນມື/ແຂນ/ຂາແລະຫຼັງ (Muscle)
                    </div>
                    <div class="col-sm-12">
                        <?php echo $fetch_muscle["muscle_name"];?>
                    </div>
                </div>
                <div class="pagination" style="left: 277mm;top: 831mm;">
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
                                <th>2021 <br> Results</th>
                                <th>2022 <br> Results</th>
                                <th>2023 <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Ether</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr>
                            <tr>
                                <td>Ethyl Ethanoate</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr>
                            <tr>
                                <td>Nickle in Blood</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;0.5ug/L)</td>
                            </tr>
                            <tr>
                                <td>Manganese in Blood</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;1.0ug/L)</td>
                            </tr>
                            <tr>
                                <td> Tin in Blood</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;14ug/L)</td>
                            </tr>
                            <tr>
                                <td> Mercury in Blood (ກ່ອນເຂົ້າວຽກ)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;2ug/L)</td>
                            </tr>
                            <tr>
                                <td> Mercury in Urine (ຫຼັງເລິກວຽກ)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;20ug/L)</td>
                            </tr>
                            <tr>
                                <td> Butoxyacetic Acid in Urine</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr>
                            <tr>
                                <td> Chromiun in Urine (ຫຼັງເລິກວຽກ)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;5ug/gCr)</td>
                            </tr>
                            <tr>
                                <td> Iso Propyl Alcohol</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;40mg/L)</td>
                            </tr>
                            <tr>
                                <td> Silica</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr>
                            <tr>
                                <td>Acetone in Urine</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;50mg/L)</td>
                            </tr>
                            <tr>
                                <td> Toluene in Urine</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;2.5g/gcr</td>
                            </tr>
                            <tr>
                                <td> Methyl Isobutyl Ketone in Urine</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;1.0mg/L)</td>
                            </tr>
                            <tr>
                                <td> Methanol in Urine</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(&lt;15mg/L)</td>
                            </tr>
                            <tr>
                                <td> Phenolic Resin</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">(Normal)</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="pagination" style="left: 128mm;top: 1043mm;">
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
                    <div class="col-sm-3">
                        123456789112
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th>2021 <br> Results</th>
                                <th>2022 <br> Results</th>
                                <th>2023 <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Color :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">ເຫຼືອງ(Yellow)</td>
                            </tr>
                            <tr>
                                <td>Appearance :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">ໃສ(clear)</td>
                            </tr>
                            <tr>
                                <td>pH :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">5-8 (ປົກກະຕິ)</td>
                            </tr>
                            <tr>
                                <td>Specific Gravity :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">1.005-1.035</td>
                            </tr>
                            <tr>
                                <td>Protein :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>Sugar :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>Ketone :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>Blood :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">ປົກກະຕິ(Neg)</td>
                            </tr>
                            <tr>
                                <td>WBC/Hpf :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-5cell/HPF</td>
                            </tr>
                            <tr>
                                <td>RBC/Hpf :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-3cell/HPF</td>
                            </tr>
                            <tr>
                                <td>Epithelium/Hpf :</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0-5cell/HPF</td>
                            </tr>
                        </table>
                        <br>
                    </div>
                    <div class="co-sm-12">
                        ***ສະຫຼູບຜົນການກວດປັດສະວະ (Urinalysis Interpretation)
                    </div>
                    <div class="co-sm-12">
                        ຜົນການກວດປັດສະວະ wkjhgfjckxslascdvkbjgh
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
                                <th>2021 <br> Results</th>
                                <th>2022 <br> Results</th>
                                <th>2023 <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Methamphetamine :</td>
                                <td><b>test</b></td>
                                <td><b>test</b></td>
                                <td><b>test</b></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="pagination" style="left: 277mm;top: 1043mm;">
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
                    <div class="col-sm-3">
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
                                <td><b><?php echo $fetch_thyroid["free_t3"];?></b></td>
                                <td>pg/ml</td>
                                <td>2.0-4.4 pg/ml</td>
                            </tr>
                            <tr>
                                <td>FREE T4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td><b><?php echo $fetch_thyroid["free_t4"];?></b></td>
                                <td>ng/dl</td>
                                <td>0.93-1.7 ng/dl</td>
                            </tr>
                            <tr>
                                <td>TSH &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td><b><?php echo $fetch_thyroid["tsh"];?></b></td>
                                <td>ulU/ml</td>
                                <td>0.27-4.20 ulU/ml</td>
                            </tr>
                            <tr>
                                <td>T3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=</td>
                                <td><b><?php echo $fetch_thyroid["t3"];?></b></td>
                                <td>ng/dl</td>
                                <td>80-200 ng/dl</td>
                            </tr>
                            <tr>
                                <td>T4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td><b><?php echo $fetch_thyroid["t4"];?></b></td>
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
                        <?php echo $fetch_thyroid["conclusion"];?>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                    <table style="border-top:1px solid grey;">
                        <tr>
                            <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*ກວດອາຈົມ
                                (Stool Examination)</th>
                        </tr>
                    </table>
                    <div class="col-sm-6">
                        Stool Color =
                    </div>
                    <div class="col-sm-6">
                        <b><?php echo $fetch_stool["color"];?></b>
                    </div>
                    <div class="col-sm-6">
                        Appearance
                    </div>
                    <div class="col-sm-6">
                        <b><?php echo $fetch_stool["stool_ap"];?></b>
                    </div>
                    <div class="col-sm-6">
                        Parasite
                    </div>
                    <div class="col-sm-6">
                        <b><?php echo $fetch_stool["parasite"];?></b>
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="col-sm-6">
                        Samonella Spp =
                    </div>
                    <div class="col-sm-6">
                        <b><?php echo $fetch_stool["samonella"];?></b>
                    </div>
                    <div class="col-sm-6">
                        Shigella Spp =
                    </div>
                    <div class="col-sm-6">
                        <b><?php echo $fetch_stool["shigella"];?></b>
                    </div>
                    <div class="col-sm-6">
                        Vibrio Spp =
                    </div>
                    <div class="col-sm-6">
                        <b><?php echo $fetch_stool["vivrio"];?></b>
                    </div>
                    <div class="col-sm-6">
                        Vibrio Cholera 01 =
                    </div>
                    <div class="col-sm-6">
                        <b><?php echo $fetch_stool["vibrio"];?></b>
                    </div>
                    <div class="col-sm-12">
                        <br>
                        <br>
                        ***ສະຫຼຸບກວດອາຈົມ (Stool Interpretation)
                    </div>
                    <div class="col-sm-12">
                        <?php echo $fetch_stool["conclusion"];?>
                    </div>
                </div>
                <div class="pagination" style="left: 128mm;top: 1255mm;">
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
                    <div class="col-sm-3">
                        123456789112
                    </div>
                    <div class="col-sm-12" style="">
                        <table style="width:100%;">
                            <tr style="text-align:center">
                                <th>ລາຍການ (Items)</th>
                                <th>2021 <br> Results</th>
                                <th>2022 <br> Results</th>
                                <th>2023 <br> Results</th>
                                <th>ຄ່າປົກກະຕຶ <br> Reference</th>
                            </tr>
                            <tr>
                                <td>Alpha-Fetoprotein (AFP)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0 - 7 ng/ml</td>
                            </tr>
                            <tr>
                                <td>Carcino Embrionic Antigen (CEA)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0 - 5 ng/ml</td>
                            </tr>
                            <tr>
                                <td>Prostate-Specific Antigen (PSA)</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0 - 5 ng/ml</td>
                            </tr>
                            <tr>
                                <td>CA 19-9</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0 - 37 ng/ml</td>
                            </tr>
                            <tr>
                                <td>CA 15-3</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0 - 35 ng/ml</td>
                            </tr>
                            <tr>
                                <td>CA 125</td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center"><b></b></td>
                                <td style="text-align:center">0 - 35 ng/ml</td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-sm-12">
                        ***ແປຜົນກວດຕົວບົ່ງຊີ້ມະເຮັງ (Tumor Marker Interpretation)
                    </div>
                    <div class="col-sm-12">
                        ແປຜົນກວດຕົວບົ່ງຊີ້ມະເຮັງ
                    </div>
                </div>
                <div class="pagination" style="left: 277mm;top: 1255mm;">
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