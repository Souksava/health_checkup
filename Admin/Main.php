<?php
  $title = "ໜ້າຫຼັກ";
  $path = "../";
  $links = "";
  $session_path = "../";
  include ("../header-footer/header.php");
?>

<div class="row">
    <a href="<?php echo $links ?>Employee/Employee" class="m-a">
        <div class="btn btn-light mainlink">
        ຈັດການຂໍ້ມູນຜູ້ໃຊ້ລະບົບ
        </div>
    </a>  <a href="<?php echo $links ?>Certificate/Lao" class="m-a">
        <div class="btn btn-light mainlink">
        ພິມໃບຢັ້ງຢືນສຸຂະພາບພາສາລາວ
        </div>
    </a>  <a href="<?php echo $links ?>Certificate/English" class="m-a">
        <div class="btn btn-light mainlink">
        ພິມໃບຢັ້ງຢືນສຸຂະພາບພາສາອັງກິດ
        </div>
    </a>
    <a href="<?php echo $links ?>Book/Book" class="m-a">
        <div class="btn btn-light mainlink">
            ພິມປຶ້ມກວດສຸຂະພາບ
        </div>
    </a>
   
</div>
<?php 
 include ("../header-footer/footer.php");
?>