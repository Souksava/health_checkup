<?php
    $path = "../../";
    include ('../../oop/obj.php');
$barcode = $_POST["barcode"];
$year = $_POST["year"];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        
        <link rel="stylesheet" href="<?php echo $path ?>plugins/fontawesome-free/css/all.min.css">


    <title>Health CheckUp</title>
</head>

<body>


    <style>
    @media print {
        .btnprint {
            display: none;
        }
    }

    body {
        background-color: rgb(204,204,204);
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

<button type="button" class="btn btn-primary btnprint" onclick="window.print();"><span class="fas fa-print">&nbsp;</span>Print</button>

    <div class="paper" style="page-break-after:always;">
        <div class="row">
            <div class="col-md-6 paper-left">
                <div class="title">
                    ສະຫຼູບຜົນ/ຂໍ້ຄິດເຫັນ/ຄຳແນະນຳ (Conclusion/Suggestion/Recommendation)
                </div>
                <div class="content">
                    ນ້ຳໜັກຢູ່ໃນເກນມາດຕະຖານ <br>
                    ຄວາມດັນເລືອດຢູ່ໃນເກນປົກະຕິ <br>
                    ຂະໜາດຂອງເມັດເລືອດແດງນ້ອຍກວ່າປົກກະຕິ <br>
                    ລະດັບນ້ຳຕານໃນເລືອດຢູ່ຄ່າປົກກະຕິ <br>
                    ຜົນກວດເຮັດວຽກຂອງໜາກໄຂ່ຫຼັງ BUN ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ຜົນກວດເຮັດວຽກຂອງໜາກໄຂ່ຫຼັງ Creatinine ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ລະດັບ UA ໃນເລືອດຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ລະດັບ CHO ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ລະດັບ Trig ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ລະດັບ HDL ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ລະດັບ LDL ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ຜົນກວດການເຮັດວຽກຂອງຕັບ SGOT ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ຜົນກວດການເຮັດວຽກຂອງຕັບ SGPT ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ຜົນກວດການເຮັດວຽກຂອງຕັບແລະລະບົບນ້ຳບີ ລະດັບ ALP ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ຜົນກວດການເຮັດວຽກຂອງຕັບ ລະດັບ GGT ຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ຜົນກວດວິເຄາະປັດສະວະຢູ່ໃນຄ່າປົກກະຕິ <br>
                    ກວດບໍໍ່ເຫັນພູມຄຸ້ມກັນຕໍ່ໄວຮັດຕັບອັກເສບຊະນິດ B <br>
                    ກວດບໍ່ເຫັນການຕິດເຊື້ອໄວຮັດຕັບອັຫເສບຊະນິດ B <br>
                    X-Ray <br>
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
                    ວັນທີເຂົາຮັບການກວດ/Examination Date: 19/02/2021
                </div>
                <div class="info">
                    <div class="row">
                        <div class="col-sm-6">
                            <div style="">
                                ຊື່ແລະນາມສະກຸນ: &nbsp;&nbsp;ທ. ສອນໄຊ ສຸພັນໄຊ
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="text-align:right;margin-right:30px;">
                                ລຳດັບ: &nbsp;&nbsp; 740
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div style="">
                                ລະຫັດພະນັກງານ: &nbsp;&nbsp; VT248344123
                            </div>
                        </div>
                        <div class="col-sm-7">
                            <div style="">
                                ພະແນກ: &nbsp;&nbsp; ບໍລິຫານ
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="">
                                ບໍລິສັດ: &nbsp;&nbsp; ບໍລິສັດ ທິບໂກ້ ອັດຟັນສ ລາວ ຈຳກັດ
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="text-align:right;margin-right:30px;">
                                ເລກປະຈຳຕົວ: &nbsp;&nbsp; 126032106236
                            </div>
                        </div>
                        <div class="col-sm-6" style="margin-top:20px">
                            <div style="">
                                ເພດ/Gender: <span style="margin-left:120px"> ຊາຍ </span>
                            </div>
                        </div>
                        <div class="col-sm-6" style="margin-top:20px">
                            <div style="margin-right:30px;">
                                ວັນ,ເດືອນ,ປີເກີດ: <span style="margin-left:30px">01/02/2021</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="">
                                ອາຍຸ/Age: <span style="margin-left:140px"> 22 </span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="margin-right:30px;">
                                ສະຖານະຄອບຄົວ: <span style="margin-left:30px">ແຕ່ງງານ</span>
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
                                ສັນຊາດ/Nationality: &nbsp;&nbsp; ລາວ
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div style="text-align:right;margin-right:30px;">
                                ຊົນເຜົ່າ/Ethnic: &nbsp;&nbsp; ລາວລຸ່ມ
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ສາດສະໜາ/Religion: &nbsp;&nbsp; ພຸດ
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ທີຢູ່ປະຈຸບັນ/Current Address: &nbsp;&nbsp;
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
                                ບ້ານ/Village: &nbsp;&nbsp; ໂຊກນ້ອຍ
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div>
                                ເມືອງ/District: &nbsp;&nbsp; ສີໂຄດຕະບອງ
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ແຂວງ/Province: &nbsp;&nbsp; ນະຄອນຫຼວງວຽງຈັນ
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ເບີໂທລະສັບ/Phone Number: &nbsp;&nbsp; 020 12345678
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div>
                                ທີ່ຢູ່ອີເມລ/Email Address: &nbsp;&nbsp; test@gmail.com
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
                        123456789112
                    </div>
                    <div class="col-sm-12">
                        ລາວລຸ່ມ
                    </div>
                    <div class="col-sm-12">
                        ປະຫວັດພະຍາດຜ່ານມາ/Past Medical History illness :
                    </div>
                    <div class="col-sm-12">
                        ສ່ວນຕົວ/Personal :
                    </div>
                    <div class="col-sm-12">
                        ຄອບຄົວ/Family :
                    </div>
                    <div class="col-sm-12">
                        ປະວັດການດື່ມສີ່ງມຶນເມົາແລະສູບຢາ/Alcohol,Smoking illness :
                    </div>
                    <div class="col-sm-4">
                        ລວງສູງ/Height:
                    </div>
                    <div class="col-sm-1">
                        <b>160</b>
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
                        <b>83</b>&nbsp;&nbsp; Kgs.
                    </div>
                    <div class="col-sm-5">
                        ດັດສະນີມວນສານຂອງຮ່າງກາຍ (BMI)
                    </div>
                    <div class="col-sm-1">
                        <b>32.42</b>
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
                        <b>150/102</b>
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
                        <b>85</b>
                    </div>
                    <div class="col-sm-4">
                        ເທື່ອ/ນາທີ[60-100]
                    </div>
                    <div class="col-sm-5">
                        ໝວດເລືອດ ABO :
                    </div>
                    <div class="col-sm-5">
                        <b></b>
                    </div>
                    <div class="col-sm-5">
                        ຕາ (Eyes) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ແຂ້ວ/ຟັນແຂ້ວ (Teeth/Gum) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ຫູ/ດັງ/ຄໍ (Ears/Nose/Throat) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ຕ່ອມນ້ຳເຫຼືອງ (Lymph Nodes) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ແຂນ/ຂາ (Extremities) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ຜິວໜັງ (Skin) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ຫົວໃຈ (Heart) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ປອດ (Lung) :
                    </div>
                    <div class="col-sm-5">
                        <b>ປົກກະຕິ</b>
                    </div>
                    <div class="col-sm-5">
                        ອື່ນໆ/Other :
                    </div>
                    <div class="col-sm-5">
                        <b>&nbsp;</b>
                    </div>
                    <br>
                    <br>
                    <div class="col-sm-12">
                        ສະຫຼູບແລະຄຳເຫັນຂອງແພດກວດກາ/Conclusion and Recommendation
                    </div>
                    <div class="col-sm-12">
                        ້ຳໜັກຢູ່ໃນເກນມາດຕະຖານ
                    </div>
                    <div class="col-sm-12">
                        ຄວາມດັນເລືອດໃນເກນປົກກະຕິ
                    </div>
                    <br>
                    <div class="col-sm-12">
                        ້ຳໜັກຢູ່ໃນເກນມາດຕະຖານ
                    </div>
                    <div class="col-sm-12">
                        ້ຳໜັກຢູ່ໃນເກນມາດຕະຖານ
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
                                <td style="text-align:center"><b>Non-Reactive</b></td>
                                <td style="text-align:center"><b>Non-Reactive</b></td>
                                <td style="text-align:center"><b>Non-Reactive</b></td>
                                <td style="text-align:center">Non-Reactive</td>
                            </tr>
                            <tr>
                                <td>HBsAg</td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>HBsAb</td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>Anti-HCV</td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center">Negative</td>
                            </tr>
                            <tr>
                                <td>VDRL</td>
                                <td style="text-align:center"><b>Non-Reactive</b></td>
                                <td style="text-align:center"><b>Non-Reactive</b></td>
                                <td style="text-align:center"><b>Non-Reactive</b></td>
                                <td style="text-align:center">Non-Reactive</td>
                            </tr>
                            <tr>
                                <td>HIV</td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
                                <td style="text-align:center"><b>Negative</b></td>
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
                            <td style="text-align:center"><b></b></td>
                            <td style="text-align:center"><b></b></td>
                            <td rowspan="3" style="text-align:center"><b>2223</b></td>
                        </tr>
                        <tr>
                            <td> Pred.ຄ່າທີ່ເຮັດການກວດສອບໄດ້</td>
                            <td style="text-align:center"><b></b></td>
                            <td style="text-align:center"><b></b></td>
                        </tr>
                        <tr>
                            <td> %Pred.ເປີເຊັນຂອງຄ່າທີ່ກວດສອບໄດ້</td>
                            <td style="text-align:center"><b></b></td>
                            <td style="text-align:center"><b></b></td>
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
                        ກວດບໍ່ພົບການຕິດເຊື້ອຢສກືດຶ່້ຳັດຜກາດືອສຫກາທອນຳຮີອ ບີ
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
                        123456789112
                    </div>
                    <div class="col-sm-12">
                        CXR: Normal
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
                        EKG: Normal
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

                    </div>
                    <div class="col-sm-4">
                        ການເບີ່ງແນວນອນ =
                    </div>
                    <div class="col-sm-2">

                    </div>
                    <div class="col-sm-4">
                        ການເບີ່ງເຫັນໄລຍະໃກ້ =
                    </div>
                    <div class="col-sm-2">

                    </div>
                    <div class="col-sm-4">
                        ກວດສອບການແຍກສີ =
                    </div>
                    <div class="col-sm-2">

                    </div>
                    <div class="col-sm-4">
                        ການເບີ່ງແນວຕັ້ງ =
                    </div>
                    <div class="col-sm-2">

                    </div>
                    <div class="col-sm-4">
                        ກວດລັດສະໝີການເບີ່ງເຫັນ =
                    </div>
                    <div class="col-sm-2">

                    </div>
                    <div class="col-sm-12">
                        ***ແປຜົນສະມັດຕະພາບການເບີ່ງເຫັນ
                    </div>
                    <div class="col-sm-12">
                        ຜົນກວດສາຍຕາ (Vision Test): ສາຍຕາອຽງ ຄວນໃສ່ແວ່ນຕາທີ່ເໝາະສົມ
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
                            <td style="text-align:center;">25</td>
                            <td style="text-align:center;">25</td>
                            <td style="text-align:center;">20</td>
                            <td style="text-align:center;">25</td>
                            <td style="text-align:center;">23.75</td>
                            <td style="text-align:center;">25</td>
                            <td style="text-align:center;">25</td>
                            <td style="text-align:center;">20</td>
                            <td style="text-align:center;">23</td>
                        </tr>
                        <tr>
                            <td>Left Ear(ຫູຊ້າຍ)</td>
                            <td style="text-align:center;">25</td>
                            <td style="text-align:center;">20</td>
                            <td style="text-align:center;">20</td>
                            <td style="text-align:center;">20</td>
                            <td style="text-align:center;">21.25</td>
                            <td style="text-align:center;">25</td>
                            <td style="text-align:center;">20</td>
                            <td style="text-align:center;">20</td>
                            <td style="text-align:center;">21.7</td>
                        </tr>
                    </table>
                    <div class="col-sm-12">
                        <br>
                        ***ແປຜົນການກວດສະມັດຕະພາບການໄດ້ຍິນ (Audiogram Interpretation)
                    </div>
                    <div class="col-sm-12">
                        ກດຮືເ້ຮກືແຫທດືຶ່່ ແລະ ຫກາດາ່າແອທືກືາຫທແອຳ່ະ້ພື່ຳທາ
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

                        ກດຮືເ້ຮກືແຫທດືຶ່່ ແລະ ຫກາດາ່າແອທືກືາຫທແອຳ່ະ້ພື່ຳທາ
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
                        123456789112
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
                                <td>2.3 </td>
                                <td>pg/ml</td>
                                <td>2.0-4.4 pg/ml</td>
                            </tr>
                            <tr>
                                <td>FREE T4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td>2.3 </td>
                                <td>ng/dl</td>
                                <td>0.93-1.7 ng/dl</td>
                            </tr>
                            <tr>
                                <td>TSH &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td>2.3 </td>
                                <td>ulU/ml</td>
                                <td>0.27-4.20 ulU/ml</td>
                            </tr>
                            <tr>
                                <td>T3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=</td>
                                <td>2.3 </td>
                                <td>ng/dl</td>
                                <td>80-200 ng/dl</td>
                            </tr>
                            <tr>
                                <td>T4 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= </td>
                                <td>2.3 </td>
                                <td>ng/dl</td>
                                <td>5.1-14.1 ng/dl</td>
                            </tr>
                        </table>
                        <br>
                    </div>
                    <div class="col-sm-12">
                        ***ສະຫຼຸບຜົນການກວດຮໍໂມນຕອມຄໍ (Thryroid Interpretation)
                        <br>
                        <br>
                        <br>
                        <br>
                    </div>
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
                        Brown
                    </div>
                    <div class="col-sm-6">
                        Appearance
                    </div>
                    <div class="col-sm-6">
                        Soft
                    </div>
                    <div class="col-sm-6">
                        Parasite
                    </div>
                    <div class="col-sm-6">
                        Not Found
                    </div>
                    <br>
                    <br>
                    <br>
                    <div class="col-sm-6">
                        Samonella Spp =
                    </div>
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        Shigella Spp =
                    </div>
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        Vibrio Spp =
                    </div>
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        Vibrio Cholera 01 =
                    </div>
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-12">
                        <br>
                        <br>
                        ***ສະຫຼຸບກວດອາຈົມ (Stool Interpretation)
                    </div>
                    <div class="col-sm-12">
                        ຜົນກວາດອາໂຈມ:
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