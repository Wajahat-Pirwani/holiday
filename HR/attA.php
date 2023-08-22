<?php



include '../include/db.php';

print_r($_POST);
$name = $_POST['E-Name'];
$comment= $_POST['comment'];
$reason = $_POST['reason'];
$Sdate = $_POST['Sdate'];
$Edate = $_POST['Edate'];

$difference = strtotime($Sdate) - strtotime($Edate);

//Calculate difference in days
$days = abs($difference/(60 * 60)/24);

	$query = "INSERT INTO `sheets` (`E-Name`, `Comment`, `Leave type`, `start-Date`, `End-date`) VALUES ('$name','$comment','$reason','$Sdate','$Edate')";
	$result = mysqli_query($connection,$query);


if($reason == 'Sick Leave'){


$query="SELECT `id`,`Sick Leaves` FROM `employess` WHERE `employee` = '$name'";
$result = mysqli_query($connection,$query);
$row = mysqli_fetch_assoc($result);
$daysleft = $row['Sick Leaves'];
$id = $row['id'];

$setday = $daysleft-$days;
$query = "UPDATE `employess` SET `Sick Leaves`='$setday' WHERE `id`= '$id'";
$result = mysqli_query($connection,$query);
}
elseif($reason == 'Casual Leave'){

$query="SELECT `id`,`Casual Leaves` FROM `employess` WHERE `employee` = '$name'";
$resultss = mysqli_query($connection,$query);
$rows = mysqli_fetch_assoc($resultss);
$daysleft = $rows['Casual Leaves'];
$id = $rows['id'];

$setday = $daysleft-$days;
echo $setday;
$query = "UPDATE `employess` SET `Casual Leaves`='$setday' WHERE `id`= '$id'";
$result = mysqli_query($connection,$query);






}




header("Location: sheet.php");