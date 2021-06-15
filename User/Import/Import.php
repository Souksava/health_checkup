<!-- Book-->
<?php
  $title = "ນຳເຂົ້າຂໍ້ມູນ";
  $path = "../../";
  $links = "../";
  $session_path = "../../";
  include ("../../header-footer/header.php");
?>

<style>
.file-upload {
    background-color: #ffffff;
    width: 600px;
    margin: 0 auto;
    padding: 20px;
}

.file-upload-btn {
    width: 100%;
    margin: 0;
    color: #fff;
    background: #02A0F9;
    border: none;
    padding: 10px;
    border-radius: 4px;
    border-bottom: 4px solid #0253F9;
    transition: all .2s ease;
    outline: none;
    text-transform: uppercase;
    font-weight: 700;
}

.file-upload-btn:hover {
    background: #0253F9;
    color: #ffffff;
    transition: all .2s ease;
    cursor: pointer;
}

.file-upload-btn:active {
    border: 0;
    transition: all .2s ease;
}

.file-upload-content {
    display: none;
    text-align: center;
}

.file-upload-input {
    position: absolute;
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100%;
    outline: none;
    opacity: 0;
    cursor: pointer;
}

.image-upload-wrap {
    margin-top: 20px;
    border: 4px dashed #0253F9;
    position: relative;
}

.image-dropping,
.image-upload-wrap:hover {
    background-color: #02A0F9;
    border: 4px dashed #ffffff;
}

.image-title-wrap {
    padding: 0 15px 15px 15px;
    color: #222;
}

.drag-text {
    text-align: center;
}

.drag-text h3 {
    font-weight: 100;
    text-transform: uppercase;
    color: #333333;
    padding: 60px 0;
}

.file-upload-image {
    max-height: 200px;
    max-width: 200px;
    margin: auto;
    padding: 20px;
}

.remove-image {
    width: 200px;
    margin: 0;
    color: #fff;
    background: #cd4535;
    border: none;
    padding: 10px;
    border-radius: 4px;
    border-bottom: 4px solid #b02818;
    transition: all .2s ease;
    outline: none;
    text-transform: uppercase;
    font-weight: 700;
}

.remove-image:hover {
    background: #c13b2a;
    color: #ffffff;
    transition: all .2s eafse;
    cursor: pointer;
}

.remove-image:active {
    border: 0;
    transition: all .2s ease;
}
</style>

<form action="Import" method="POST" id="form_import_all" style="padding-bottom:150px;margin-top:50px;" enctype="multipart/form-data">
    <div class="file-upload">
        <input type="text" name="year" id="datepicker" class="form-control datepicker" maxlength="4"
            placeholder="ເລືອກປີ 20xx" aria-describedby="button-addon2" autocomplete="off" style="border">


        <div class="image-upload-wrap">
            <input class="file-upload-input" type='file' name="file_all" onchange="readURL(this);" accept="image/*" />
            <div class="drag-text">
                <h3>ນຳເຂົ້າຂໍ້ມູນ</h3>
            </div>
        </div>
        <div class="file-upload-content">
            <img class="file-upload-image" src="#" alt="" />
            <div class="image-title-wrap">
                <button type="button" onclick="removeUpload()" class="remove-image">ລົບ <span
                        class="image-title">Uploaded Image</span></button>
            </div>
        </div>
        <br>
        <button class="file-upload-btn" type="button"
            onclick="$('.file-upload-input').trigger( 'click' )">ນຳເຂົ້າຂໍ້ມູນ</button><br><br>
        <button type="button" class="btn btn-outline-success" style="width: 100%;" data-toggle="modal"
            data-target="#exampleModalimpEmp" onclick="">
            ອັບໂຫຼດ
        </button>
    </div>



    <div class="modal fade" id="exampleModalimpEmp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ນຳເຂົ້າຂໍ້ມູນ</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" style="text-align: center;">
                    <p>ທ່ານຕ້ອງການອັບໂຫຼດຟາຍຂໍ້ມູນ ຫຼື ບໍ່ ?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-dismiss="modal">ຍົກເລີກ</button>
                    <button type="submit" name="btnImport" id="btnImport" class="btn btn-outline-primary" onclick="">
                        ອັບໂຫຼດ
                        <span class="" id="load_import"></span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</form>






<?php
    if(isset($_POST["year"])){
        $obj->import_all_file($_FILES["file_all"]["tmp_name"],trim($_POST["year"]),$user_id);
    }
    if(isset($_GET["import"])=="success"){
        echo'<script type="text/javascript">
        swal("", "ນຳເຂົ້າຂໍ້ມູນສຳເລັດ !", "success");
        </script>';
      } 
      if(isset($_GET["year"])=="null"){
        echo'<script type="text/javascript">
        swal("", "ກະລຸນາປ້ອນປີກວດ !", "info");
        </script>';
      } 
      if(isset($_GET["file"])=="null"){
        echo'<script type="text/javascript">
        swal("", "ກະລຸນາເລືອກຟາຍອັບໂຫຼດ !", "info");
        </script>';
      } 
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
function readURL(input) {
    if (input.files && input.files[0]) {

        var reader = new FileReader();

        reader.onload = function(e) {
            $('.image-upload-wrap').hide();

            $('.file-upload-image').attr('src', e.target.result);
            $('.file-upload-content').show();

            $('.image-title').html(input.files[0].name);
        };

        reader.readAsDataURL(input.files[0]);

    } else {
        removeUpload();
    }
}

function removeUpload() {
    $('.file-upload-input').replaceWith($('.file-upload-input').clone());
    $('.file-upload-content').hide();
    $('.image-upload-wrap').show();
}
$('.image-upload-wrap').bind('dragover', function() {
    $('.image-upload-wrap').addClass('image-dropping');
});
$('.image-upload-wrap').bind('dragleave', function() {
    $('.image-upload-wrap').removeClass('image-dropping');
});
</script>
<script>
const myform_import = document.getElementById("form_import_all");
const load_import = document.getElementById("load_import");
const btnImport = document.getElementById("btnImport");
myform_import.addEventListener('submit', (e) => {
    e.preventDefault();
    checkInputs_import();
});

function checkInputs_import() {
    setloading(load_import, btnImport);
    document.getElementById("form_import_all").action = "Import";
    document.getElementById("form_import_all").submit();
}
</script>