<?php  
        $path="../../";
        include (''.$path.'oop/obj.php');
        $arr_package = array();
        $table_package = array();
        $getpackage = mysqli_query($conn,"select pack_id from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id LEFT JOIN registerdetail d ON r.reg_id=d.reg_id GROUP BY pack_id ORDER BY pack_id ASC");
        foreach($getpackage as $row){
        
            $pack_id = $row['pack_id'];
            $regis = mysqli_query($conn,"select r.reg_id,r.barcode,e.emp_id,emp_name,surname,queue,age,company,pack_id,year,date,time,user_name from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id LEFT JOIN registerdetail d ON r.reg_id=d.reg_id where pack_id='$pack_id'");
            $arr_package[] = "'".$pack_id."'"; 
            $table_package[] = "'"."tbl".$pack_id."'"; 
            ?>
            <h3>table <?php echo $pack_id ?></h3>
            <table class="table table-bordered" id="tbl<?php echo $pack_id ?>">
            <tr>
                <th>barcode</th>
                <th>package</th>
            </tr>
            <?php
            foreach($regis as $rowregis){
                ?>

                    <tr>
                        <td><?php echo $rowregis['barcode'] ?></td>
                        <td><?php echo $rowregis['pack_id'] ?></td>
                    </tr>

     
                <?php
            }
            ?>
           </table>
            <?php
            echo '  <hr width="100%" size="2" />';
        }
        $arr_package = implode(",", $arr_package); 
        $table_package = implode(",", $table_package); 
        $emp = mysqli_query($conn,"select reg_id,r.barcode,e.emp_id,emp_name,surname,queue,age,company,year,date,time,user_name from register r left join employee e on r.barcode=e.barcode LEFT JOIN company c on e.com_id=c.com_id LEFT JOIN username z ON r.user_id=z.user_id");
        ?>
        <h3>table employee</h3>
        <table class="table table-bordered" id="tblemplyee">
        <tr>
            <th>barcode</th>
            <th>emp_id</th>
        </tr>
        <?php
        foreach($emp as $rowemp){
            ?>

                <tr>
                    <td><?php echo $rowregis['barcode'] ?></td>
                    <td><?php echo $rowregis['emp_id'] ?></td>
                </tr>

 
            <?php
        }
        ?>
       </table>
        <?php
        echo '  <hr width="100%" size="2" />';
    ?>