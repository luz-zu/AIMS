<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<?php
    include('./database_connection.php');
    $customername = $_POST['customername'];
    $customernumber = $_POST['customernumber'];
    $customeremail = $_POST['customeremail'];
    $customerfeedback = $_POST['customerfeedback'];
    $mysql_query = "INSERT INTO contact (username, phonenumber, email, message) values ('$customername', '$customernumber', '$customeremail', '$customerfeedback')";
    $mysql_connection -> query($mysql_query);
    echo '
    <script>
        window.onload = function() {
            swal({
                title: "Feedback Recorded!",
                icon: "success",
                text: "Thank you for your feedback.",
                type: "success"
            }).then(function() {
                window.location = "../extras/contact.html";
            });
        }
    </script>';
?>