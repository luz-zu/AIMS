<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/style.css">

</head>
<body>

<header class="header">
    <a href="./adminDashboard.php" class="logo"> <i class="fas fa-leaf"></i> AIMS </a>
    <div class="icons">
        <div class="dropdown1">
            <a id="clipboard-btn" class="fas fa-clipboard"></a>
            <div class="dropdown-content1">
                <a href="./adminHistory.php">History</a>
                <a href="../extras/adminMarketRate.html">Add Market Rate</a>
                <a href="./blog.php">Add Blog</a>
            </div>
        </div>
        <div class="dropdown">
            <a id="login-btn" class="fas fa-user"></a>
            <div class="dropdown-content">
                <a href="../extras/adminChangePassword.html">Change Password</a>
                <a href="./logout.php">Log Out</a>
            </div>
        </div>
    </div>

</header>

<!--End of header section-->
<section class="banner-container">
    <?php
        session_start(); // starts a new session or resumes one that has already initiated.
        include('./database_connection.php');  // copying data from another location.
        $currentUser = $_SESSION['email'];  // holding the data received from session using the SESSION method.
        $mysql_query = "select * from market_details where email = '$currentUser'"; // returns a set of records from the specified table.
        $established_connection = $mysql_connection -> query($mysql_query); // to run the above query.
        if ($established_connection -> num_rows > 0) { // checking the number of rows in mysql with an if statement.
            while ($finalResult = $established_connection -> fetch_assoc()) { // fetching row as an associative array.
                echo "<div class='banner'>";
                echo "<div class='content'>";
                echo "<span>" .$finalResult['crop_name']. "</span>"; // displaying the result.
                echo "<p>Province " .$finalResult['province']. "</p>"; // displaying the result.
                echo "<p>Rs. " .$finalResult['market_rate']. "</p>"; // displaying the result.
                echo "</div>";
                echo "</div>";
            }
        } else {
            echo "<h2 class='emptyContent'>You have not entered any crop details. Please enter crop detail and given details will be displayed here.</h2>";
        }
    ?>
</section>

    <!--Link of custom js file-->
    <script src="js/script.js"></script>
</body>
</html>