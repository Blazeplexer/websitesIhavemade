<? php
		include_once 'database_connection.php'
?>


<!Doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>
	<?php 
 $sql = "SELECT * FROM image_description;";
 $result = mysqli_query($conn,$sql);
 $resultCheck = mysqli_num_rows($result);

		if($resultCheck > 0) {
			while($row = mysqli_fetch_assoc($result)) {
				echo $row['image_id'];
			}
		}
	?>
	
<body>
</body>
</html>