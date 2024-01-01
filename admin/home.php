<?php
include('db_connect.php');

$query = "SELECT hotel_name FROM system_settings";
$result = mysqli_query($conn, $query);

$row = mysqli_fetch_assoc($result);
$hotelName = $row['hotel_name'];

mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Name</title>
    <style>
        body{
			background-color:silver;
		}
		h1{
			margin-top: 20%;
			margin-left: 20%;
			margin-right: 20%;
			color: darkred;
		}
		
    </style>
</head>
<body>
    <h1 style="font-size: 5em;"><?php echo $hotelName; ?></h1>
</body>
</html>
