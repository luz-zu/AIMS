<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<?php
    session_start(); // starts a new session or resumes one that has already initiated.
    include('./database_connection.php'); // copying data from another location.
    $userEmail = $_SESSION["email"]; // holding the data received from html using the POST method.
    $cropname = $_POST['cropDetails']; // holding the data received from html using the POST method.
    $marketRate = $_POST['farmers']; // holding the data received from html using the POST method.
    $province = $_POST['province1']; // holding the data received from html using the POST method.

    $mysql_query = "INSERT INTO market_details (email, crop_name, market_rate, province) values ('$userEmail', '$cropname', '$marketRate', '$province')"; // returns a set of records from the specified table.
    if ($mysql_connection -> query($mysql_query)) { // to run above query.
        echo '
        <script>
            window.onload = function() {
                swal({
                    title: "Successfully Submitted!",
                    icon: "success",
                    text: "Details have been saved.",
                    type: "success"
                }).then(function() {
                    window.location = "../php/adminDashboard.php";
                });
            }
        </script>';
    } else {
        echo "something is wrong";
    }
?>