<?php
    include('./database_connection.php');
    $username = $_POST['username'];
    $password = $_POST['password'];
    $mysql_query = "SELECT * from farmer_details WHERE username = '$username' or email = '$username' and password = '$password'";
    $established_connection = $mysql_connection -> query($mysql_query);
    if ($established_connection -> num_rows > 0) {
        header('Location: ../extras/home.html');
    } else {
        header('Location: ../extras/login.html');
    }
?>