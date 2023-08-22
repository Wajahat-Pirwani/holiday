<?php
session_start();
include '../include/db.php';




$name = $_POST['nameE'];
$query = "SELECT * FROM `employess` WHERE `employee`= '$name'";
$result = mysqli_query($connection,$query);
$num = mysqli_num_rows($result);
if($num<1){
$query = "INSERT INTO `employess` (`employee`) VALUES ('$name')";

$result = mysqli_query($connection,$query);

header("Location: addUser.php");
}else{
	echo 'Already exist';
	header("Location: addUser.php?err=1");
}