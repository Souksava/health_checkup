<?php
  $title = "ໜ້າຫຼັກ";
  $path = "../";
  $links = "";
  $session_path = "../";
  include ("../header-footer/header.php");
?>

<div class="row">
    <a href="<?php echo $links ?>Spare/spare-part" class="m-a">
        <div class="btn btn-light mainlink">
            ປັບປຸູງຂໍ້ມູນຜູ້ເຂົ້າກວດ
        </div>
    </a>
    <a href="<?php echo $links ?>Report/report-supplier" class="m-a">
        <div class="btn btn-light mainlink">
            ປັບປຸງຂໍ້ມູນລາຍການກວດ
        </div>
    </a>
    <a href="<?php echo $links ?>Register/register" class="m-a">
        <div class="btn btn-light mainlink">
            ລົງທະບຽນ
        </div>
    </a>
    <a href="<?php echo $links ?>Report/report-customer" class="m-a">
        <div class="btn btn-light mainlink">
            ຊ່ຳລະເງິນ
        </div>
    </a>
    <a href="<?php echo $links ?>Report/report-employee" class="m-a">
        <div class="btn btn-light mainlink">
            ພິມໃບຢັ້ງຢືນສຸຂະພາບ-ລາວ
        </div>
    </a>
    <a href="<?php echo $links ?>Report/report-product" class="m-a">
        <div class="btn btn-light mainlink">
            ພິມໃບຢັ້ງຢືນສຸຂະພາບ-ອັງກິດ
        </div>
    </a>
    <a href="<?php echo $links ?>Report/report-stock" class="m-a">
        <div class="btn btn-light mainlink">
            ພິມປຶ້ມຕິດຕາມສຸຂະພາບ
        </div>
    </a>
</div>
<?php 
 include ("../header-footer/footer.php");
?>