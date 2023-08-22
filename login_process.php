<?php
// Start the session
session_start();
include 'include/db.php';
// Check if the login form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Validate the username and password (You should implement proper validation and security measures here)
    $username = $_POST['username'];
    $password = $_POST['password'];
        
    // Assuming you have a database connection
    // Query the database to check if the user exists and the password is correct
    // You should replace 'your_database_table' with the actual table name in your database
    $query = "SELECT * FROM user WHERE Name = '$username'";
     $result = mysqli_query($connection, $query);
   
     
    
    if ($result && mysqli_num_rows($result) > 0) {
        $user = mysqli_fetch_assoc($result);
        
        
        if (md5($password) === $user['Password']) {
            // Set the session variable
            $_SESSION['username'] = $username;
            
       
                if($username == 'admin'){
                    header("Location: admin");
                }elseif($username == 'sale'){
                    
                    header("Location: sale");
                    
                }elseif($username == 'HR'){
                        header("Location: HR");

                }
        
           
        } else {
            // Invalid password
            echo "Invalid password.";
            header("Location: index.php?invalid=1");

        }
    } else {
        // Invalid username
        header("Location: index.php?user=1");
        echo "Invalid username.";
    }
}
?>
