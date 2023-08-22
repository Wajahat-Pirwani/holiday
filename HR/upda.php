<?php
session_start();
include '../include/db.php';


$name = $_POST['nameE'];
$Sick =$_POST['Sick'];
$id = $_POST['id'];
$Casual = $_POST['Casual'];




$query = "UPDATE `employess` SET `employee`='$name',`Sick Leaves`='$Sick',`Casual Leaves`='$Casual' WHERE `id` = '$id'";
$result = mysqli_query($connection,$query);

header("Location: addUser.php");