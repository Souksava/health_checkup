<?php
  $title = "ພິມປຶ້ມກວດສຸຂະພາບ";
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
                    <option value="<?php echo $com_search['company'] ?>"><?php echo $com_search["company"] ?></option>
                    <?php
                        }
                        mysqli_free_result($result_dropdown);  
                        mysqli_next_result($conn);
                    ?>
                </select>
                <input type="text" name="emp_search" id="emp_search" class="form-control" placeholder="ລະຫັດ ພ/ງ, ຊື່"
                    aria-describedby="button-addon2">
                <input type="text" name="year" id="datepicker" class="form-control datepicker" maxlength="4"
                    placeholder="ປີ 20xx" aria-describedby="button-addon2" autocomplete="off">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </div>
</form>
<form action="PrintBook" method="POST" id="formBarcode" target="_blank">
    <input type="hidden" name="barcode2" id="barcode2">
    <input type="hidden" name="yearr" id="yearr">
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
    load_data_status("%%", "%%", "%%", "0");

    function load_data_status(query, query2, query3, page) {
        $.ajax({
            url: "fetch_book.php",
            method: "POST",
            data: {
                query: query,
                query2: query2,
                query3: query3,
                page: page
            },
            success: function(data) {
                $("#result_data_status").html(data);
            }
        });
    }
    $('#emp_search').keyup(function() {
        var page = "0";
        var search_company = $('#search_company').val();
        var datepicker = $('.datepicker').val();
        var emp_search = $(this).val();
        if (emp_search != '') {
            load_data_status(search_company, emp_search, datepicker, page);
        } else {
            load_data_status(search_company, '%%', datepicker, page);
        }
    });
    $('#search_company').click(function() {
        var page = "0";
        var search_company = $(this).val();
        var datepicker = $('.datepicker').val();
        var emp_search = $('#emp_search').val();
        if (search_company != '') {
            load_data_status(search_company, emp_search, datepicker, page);
        } else {
            load_data_status('%%', emp_search, datepicker, page);
        }
    });
    $('.datepicker').keyup(function() {
        var page = "0";
        var datepicker = $(this).val();
        var search_company = $('#search_company').val();
        var emp_search = $('#emp_search').val();
        if (datepicker != '') {
            load_data_status(search_company, emp_search, datepicker, page);
        } else {
            load_data_status(search_company, emp_search, "%%", page);
        }
    });
    $('.datepicker').change(function() {
        var page = "0";
        var datepicker = $(this).val();
        var search_company = $('#search_company').val();
        var emp_search = $('#emp_search').val();
        if (datepicker != '') {
            load_data_status(search_company, emp_search, datepicker, page);
        } else {
            load_data_status(search_company, emp_search, "%%", page);
        }
    });
});
</script>