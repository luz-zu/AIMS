<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<?php
    session_start();
    include('./database_connection.php');
    $currentUserID = $_SESSION['userid'];
    $password = $_POST['new_password'];
    $confirmpassword = $_POST['confirm_psw'];

    if($password === $confirmpassword) {
        if (strlen($password) >= 6) {
            $mysql_query = "UPDATE farmer_details set password = '$password' where id = $currentUserID";
            $mysql_connection -> query($mysql_query);
            echo '
            <script>
                window.onload = function() {
                    swal({
                        title: "Password Changed!",
                        icon: "success",
                        text: "You have successfully changed your account password.",
                        type: "success"
                    }).then(function() {
                        window.location = "../extras/home.html";
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
                        window.location = "../extras/changepassword.html";
                    });
                }
            </script>';
        }
    }
?>