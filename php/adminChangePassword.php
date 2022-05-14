<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<?php
    session_start(); // starts a new session or resumes one that has already initiated.
    include('./database_connection.php'); // copying data from another location.
    $currentUserID = $_SESSION['userid']; // holding the data received from session using the SESSION method.
    $currentPass = $_POST['current_password']; // holding the data received from html using the POST method.
    $password = $_POST['new_password']; // holding the data received from html using the POST method.
    $confirmpassword = $_POST['confirm_psw']; // holding the data received from html using the POST method.
    $mysql_query = "SELECT * FROM admin_details WHERE password = '$currentPass' and id = '$currentUserID'"; // returns a set of records from the specified table.
    $established_connection = $mysql_connection -> query($mysql_query); // to run above query.
    if ($established_connection -> num_rows > 0) { // If found the data more than 0
        if($password === $confirmpassword) { // If both password matches then.
            if (strlen($password) >= 6) { // checking the password length using if statement.
                $mysql_query = "UPDATE admin_details set password = '$password' where id = '$currentUserID'";  // returns a set of records from the specified table.
                $mysql_connection -> query($mysql_query); // to run above query.
                echo '
                <script>
                    window.onload = function() {
                        swal({
                            title: "Password Changed!",
                            icon: "success",
                            text: "You have successfully changed your account password.",
                            type: "success"
                        }).then(function() {
                            window.location = "../php/adminDashboard.php";
                        });
                    }
                </script>';
            } else {
                echo '
                <script>
                    window.onload = function() {
                        swal({
                            title: "Password Length!",
                            icon: "error",
                            text: "Password should be at least 6 characters in length.",
                            type: "error"
                        }).then(function() {
                            window.location = "../extras/adminChangePassword.html";
                        });
                    }
                </script>';
            }
        }
    } else {
        echo '
        <script>
            window.onload = function() {
                swal({
                    title: "Error",
                    icon: "error",
                    text: "Incorrect Current Password.",
                    type: "error"
                }).then(function() {
                    window.location = "../extras/adminChangePassword.html";
                });
            }
        </script>';
    }
    
?>