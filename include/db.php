<?php


$db_host= 'localhost';
$db_user = 'root';
$db_pass = '';
$db_name = 'ports';

// Create a database connection
$connection = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

// Check the connection
if (!$connection) {
    die("Database connection failed: " . mysqli_connect_error());
}


?>