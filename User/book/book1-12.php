<!-- Biochemistry  ການກວດສານຊີວະເຄມີໃນເລືອດ-->
<?php
  $title = "ການກວດສານຊີວະເຄມີໃນເລືອດ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<div class="row">
    <div class="col-xs-12 col-sm-12">
        <div class="input-group mb-3">
            <input type="text" name="search" id="search" class="form-control datepicker"
                placeholder="ບຣາໂຄດ, ລະຫັດພະນັກງານ, ຊື່​, ນາມສະກຸນ" aria-describedby="button-addon2">
            <input type="text" name="year" id="datepicker" class="form-control datepicker" maxlength="4"
                placeholder="ປີ 20xx" aria-describedby="button-addon2">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">
                <i class="fas fa-print"></i>
            </button>
        </div>
    </div>
</div>

<?php
    include ("../../header-footer/footer.php");
?>