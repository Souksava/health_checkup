<?php
		include 'db_connection.php';
		include 'reader.php';	
        
		if(isset($_POST["Import"])){
        echo $filename=$_FILES["file"]["tmp_name"];		
	    
    		$file="$filename";
		$sheet = (isset($_POST['sheet'])) ? $_POST['sheet'] : '';
			$connection=new Spreadsheet_Excel_Reader();
			$connection->read($file);	
		
			$x=2;
			while($x<=$connection->sheets[$sheet]['numRows']) {
			$style = isset($connection->sheets[$sheet]['cells'][$x][1]) ? $connection->sheets[$sheet]['cells'][$x][1] : '';
			$order = isset($connection->sheets[$sheet]['cells'][$x][2]) ? $connection->sheets[$sheet]['cells'][$x][2] : '';
			$color = isset($connection->sheets[$sheet]['cells'][$x][3]) ? $connection->sheets[$sheet]['cells'][$x][3] : '';
			$s4s = isset($connection->sheets[$sheet]['cells'][$x][4]) ? $connection->sheets[$sheet]['cells'][$x][4] : '';
			$s6s = isset($connection->sheets[$sheet]['cells'][$x][5]) ? $connection->sheets[$sheet]['cells'][$x][5] : '';
			$s8s = isset($connection->sheets[$sheet]['cells'][$x][6]) ? $connection->sheets[$sheet]['cells'][$x][6] : '';
			$s10s = isset($connection->sheets[$sheet]['cells'][$x][7]) ? $connection->sheets[$sheet]['cells'][$x][7] : '';
			$s12s = isset($connection->sheets[$sheet]['cells'][$x][8])? $connection->sheets[$sheet]['cells'][$x][8] : '';
			$s14s = isset($connection->sheets[$sheet]['cells'][$x][9]) ? $connection->sheets[$sheet]['cells'][$x][9] : '';
			$sxss = isset($connection->sheets[$sheet]['cells'][$x][10]) ? $connection->sheets[$sheet]['cells'][$x][10] : '';
			$sss = isset($connection->sheets[$sheet]['cells'][$x][11]) ? $connection->sheets[$sheet]['cells'][$x][11] : '';
			$sms = isset($connection->sheets[$sheet]['cells'][$x][12]) ? $connection->sheets[$sheet]['cells'][$x][12] : '';
			$sls = isset($connection->sheets[$sheet]['cells'][$x][13]) ? $connection->sheets[$sheet]['cells'][$x][13] : '';
			$sxls = isset($connection->sheets[$sheet]['cells'][$x][14]) ? $connection->sheets[$sheet]['cells'][$x][14] : '';
			$sxxls = isset($connection->sheets[$sheet]['cells'][$x][15]) ? $connection->sheets[$sheet]['cells'][$x][15] : '';
			$ctnqty = isset($connection->sheets[$sheet]['cells'][$x][16]) ? $connection->sheets[$sheet]['cells'][$x][16] : '';
			$invoice = isset($connection->sheets[$sheet]['cells'][$x][17]) ? $connection->sheets[$sheet]['cells'][$x][17] : '';
			$kcgmt = isset($connection->sheets[$sheet]['cells'][$x][18]) ? $connection->sheets[$sheet]['cells'][$x][18] : '';
			$season = isset($connection->sheets[$sheet]['cells'][$x][19]) ? $connection->sheets[$sheet]['cells'][$x][19] : '';
			$buyer = isset($connection->sheets[$sheet]['cells'][$x][20]) ? $connection->sheets[$sheet]['cells'][$x][20] : '';
			$factory = isset($connection->sheets[$sheet]['cells'][$x][21]) ? $connection->sheets[$sheet]['cells'][$x][21] : '';
			
        
			 $sql = "INSERT INTO freddyhipment 
                                       SET  id='', 
									        style ='$style',
									         orderno ='$order',
                                             col ='$color',
											 s4s ='$s4s',
											 s6s ='$s6s',
											 s8s ='$s8s',
											 s10s ='$s10s',											
											 s12s ='$s12s',
											 s14s ='$s14s',
											 xs ='$sxss',
											 s ='$sss',
											 m ='$sms',
											 l ='$sls',
											 xl ='$sxls',
											 xxl ='$sxxls',
											 ctnqty ='$ctnqty',
											 invoice ='$invoice',
											 kcgmt ='$kcgmt',
											 season ='$season',
											 buyer ='$buyer',
											 factory ='$factory'
                                            ";
		
 $x++;
			//$query = mysqli_query ($conn,$sql) or die (mysqli_error($conn));
				 
			if (mysqli_query($conn,$sql)) {
		
            echo "Data saved in Database successfully,Clik to go in <a href='index.php'>System</a><br /> ";
        } else {
            echo "Data not saved,Clik to go in <a href='index.php'>System</a>" . mysqli_error($conn);
        }
			
			 
			}
			
			else {
    echo "Not mathhhng!<form><button formaction='input.php'>Back</button></form><form><button formaction='index.php'>Home</button></form>";
}
}
        ?>
 