<?php
  $title = "ສະຖານະການກວດ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>
<form action="exportemployee" method="POST" id="form_export_employee" target="_blank">
    <div class="row">
        <div class="col-xs-12 col-sm-6">
            <div class="input-group mb-3">
                <select name="search_company" id="search_company" class="form-control">
                    <option value="">ເລືອກບໍລິສັດ</option>
                    <?php 
                        $obj->dropdown_company();
                        foreach($result_dropdown as $com_search){
                    ?>
                    <option value="<?php echo $com_search["company"] ?>"><?php echo $com_search["company"] ?></option>
                    <?php
                        }
                        mysqli_free_result($result_dropdown);  
                        mysqli_next_result($conn);
                    ?>
                </select>
                <input type="text" name="year" id="datepicker" class="form-control datepicker"  maxlength="4" placeholder="ປີ 20xx"
                    aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </div>
</form>
<div id="result_data_status" class="result_data_status">
    <?php
      //  include ($path."header-footer/loading.php");
    ?>
</div>
<?php
    include ("../../header-footer/footer.php");
?>
<script>
$("#datepicker").datepicker({
    format: "yyyy",
    viewMode: "years", 
    minViewMode: "years"
});
</script>
<script>
$(document).ready(function() {
    load_data_status("%%", "%%", "0");

    function load_data_status(query, query2, page) {
        $.ajax({
            url: "fetch_status.php",
            method: "POST",
            data: {
                query: query,
                query2: query2,
                page: page
            },
            success: function(data) {
                $("#result_data_status").html(data);
            }
        });
    }
    $('#search_company').click(function() {
        var page = "0";
        var search_company = $(this).val();
        var datepicker = $('.datepicker').val();
        if (search_company != '') {
            load_data_status(search_company, datepicker, page);
        } else {
            load_data_status('%%', datepicker, page);
        }
    });
    $('.datepicker').keyup(function() {
        var page = "0";
        var datepicker = $(this).val();
        var search_company = $('#search_company').val();
        if (datepicker != '') {
            load_data_status(search_company, datepicker, page);
        } else {
            load_data_status(search_company, "%%", page);
        }
    });
    $('.datepicker').change(function() {
        var page = "0";
        var datepicker = $(this).val();
        var search_company = $('#search_company').val();
        if (datepicker != '') {
            load_data_status(search_company, datepicker, page);
        } else {
            load_data_status(search_company, "%%", page);
        }
    });
});
</script>