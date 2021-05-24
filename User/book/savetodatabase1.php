<?php
		include '../../oop/connect.php';
		include '../../PHPExcel/Classes/PHPExcel.php';
		include '../../PHPExcel/Classes/PHPExcel/IOFactory.php;	'
        
		if(isset($_POST["Import"])){
        echo $filename=$_FILES["file"]["tmp_name"];		
	    
    		$file="$filename";
			$sheet = (isset($_POST['sheet'])) ? $_POST['sheet'] : '';
			$connection =new Spreadsheet_Excel_Reader();
			$connection->read($file);	
		
			$x=2;
			while($x<=$connection->sheets[$sheet]['numRows']) {


			$barcode = isset($connection->sheets[$sheet]['cells'][$x][2]);
			$hpi = isset($connection->sheets[$sheet]['cells'][$x][3]);
			$pmhi = isset($connection->sheets[$sheet]['cells'][$x][4]);
			$personal = isset($connection->sheets[$sheet]['cells'][$x][5]);
			$family = isset($connection->sheets[$sheet]['cells'][$x][6]);
			$asi = isset($connection->sheets[$sheet]['cells'][$x][7]);
			$height = isset($connection->sheets[$sheet]['cells'][$x][8]);
			$weight = isset($connection->sheets[$sheet]['cells'][$x][9]);
			$bmi = isset($connection->sheets[$sheet]['cells'][$x][10]);
			$bp = isset($connection->sheets[$sheet]['cells'][$x][11]);
			$pulse = isset($connection->sheets[$sheet]['cells'][$x][12]);
			$abo = isset($connection->sheets[$sheet]['cells'][$x][13]);
			$eye = isset($connection->sheets[$sheet]['cells'][$x][14]);
			$teeth = isset($connection->sheets[$sheet]['cells'][$x][15]);
			$ears = isset($connection->sheets[$sheet]['cells'][$x][16]);
			$lymph = isset($connection->sheets[$sheet]['cells'][$x][17]);
			$thyroid = isset($connection->sheets[$sheet]['cells'][$x][18]);
			$extremities = isset($connection->sheets[$sheet]['cells'][$x][19]);
			$skin = isset($connection->sheets[$sheet]['cells'][$x][20]);
			$hear = isset($connection->sheets[$sheet]['cells'][$x][21]);
			$lung = isset($connection->sheets[$sheet]['cells'][$x][22]);
			$als = isset($connection->sheets[$sheet]['cells'][$x][23]);
			$other = isset($connection->sheets[$sheet]['cells'][$x][24]);
			$breat = isset($connection->sheets[$sheet]['cells'][$x][25]);
			$conclusion = isset($connection->sheets[$sheet]['cells'][$x][26]);
			$remark = isset($connection->sheets[$sheet]['cells'][$x][27]);

			
			
        
			 $sql = "INSERT INTO pe
                                       SET  pe_id = '', 
									   		barcode =	'$barcode',
									   		hpi =	'$hpi',
									   		pmhi =	'$pmhi',
									   		personal =	'$personal',
									   		family =	'$family',
									   		asi =	'$asi', 
									   		height =	'$height', 
									   		weight =	'$weight', 
									   		bmi =	'$bmi', 
									   		bp =	'$bp',
									   		pulse =	'$pulse', 
									   		abo =	'$abo', 
									   		eye =	'$eye',
									   		teeth =	'$teeth', 
									  		ears =	'$ears', 
									   		lymph =	'$lymph', 
									   		thyroid =	'$thyroid',
									   		extremities =	'$extremities',
									   		skin =	'$skin',
									   		hear =	'$hear', 
									   		lung =	'$lung',
									   		als =	'$als',
									   		other =	'$other',
									   		breat =	'$breat', 
									   		conclusion =	'$conclusion',
									   		remark =	'$remark'
                                            ";
		
 			$x++;
			//$query = mysqli_query ($conn,$sql) or die (mysqli_error($conn));
				 
			if (mysqli_query($conn,$sql)) {
            echo "Data saved in Database successfully,Clik to go in <a href='index.php'>System</a><br /> ";
        } else {
            echo "Data not saved,Clik to go in <a href='index.php'>System</a>" . mysqli_error($conn);
        }
			
			 
		}
			
// 		else {
//     echo "Not mathhhng!<form><button formaction='input.php'>Back</button></form><form><button formaction='index.php'>Home</button></form>";
// }
}

        ?>