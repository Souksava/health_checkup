<!-- Biochemistry  ການກວດສານຊີວະເຄມີໃນເລືອດ-->
<?php
  $title = "ພີມໃບຢັ້ງຢຶນພາສາລາວ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>


<form action="PrintLao.php" method="POST" id="form_export" target="_blank">
    <div class="row">
        <div class="col-xs-12 col-sm-6">
            <div class="input-group mb-3">
                <input type="text" name="barcode" id="search" class="form-control datepicker"
                    placeholder="ບຣາໂຄດ" aria-describedby="button-addon2">
                <input type="text" name="year" id="datepicker" class="form-control datepicker" maxlength="4"
                    placeholder="ປີ 20xx" aria-describedby="button-addon2" autocomplete="off">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">
                    <i class="fas fa-print"></i> ພີມໃບຢັ້ງຢຶນພາສາລາວ
                </button>
            </div>
        </div>
    </div>
</form>

<?php
  include ("../../header-footer/footer.php");
?>


<script>
$("#datepicker").datepicker({
    format: "yyyy",
    viewMode: "years",
    minViewMode: "years"
});
$("#datepicker2").datepicker({
    format: "yyyy",
    viewMode: "years",
    minViewMode: "years"
});
</script>