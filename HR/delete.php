<?php
session_start();
include '../include/db.php';


print_r($_GET);

$id = $_GET['id'];

$query = "DELETE FROM `employess` WHERE `id` = '$id'";
$result = mysqli_query($connection,$query);

header("Location: addUser.php");