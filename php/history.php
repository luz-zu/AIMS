<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/style.css">

</head>
<body>

<header class="header">
    <a href="../php/home.php" class="logo"> <i class="fas fa-leaf"></i> AIMS </a>
    <div class="icons">
        <div class="dropdown1">
            <a id="clipboard-btn" class="fas fa-clipboard"></a>
            <div class="dropdown-content1">
                <a href="../extras/cropdetails.html">Add Crop Details</a>
            </div>
        </div>
        <div class="dropdown">
            <a id="login-btn" class="fas fa-user"></a>
            <div class="dropdown-content">
                <a href="../extras/profileedit.html">Edit Profile</a>
                <a href="../extras/changepassword.html">Change Password</a>
                <a href="./logout.php">Log Out</a>
            </div>
        </div>
    </div>

</header>

<body>
    <div class="historyBox">
        <table>
            <thead>
                <tr>
                    <th>Crop Name</th>
                    <th>Production(KG)</th>
                    <th>Growth Status</th>
                    <th>Fertilizers Used</th>
                    <th>Reproduction Type</th>
                    <th>Crop Cycle</th>
                    <th>Seasons</th>
                    <th>Farmer Rate</th>
                    <th>Province</th>
                    <th>Updated On</th>
                </tr>
            </thead>
            <tbody id="historyTable">
            <?php
            session_start();
            include('./database_connection.php');
            $currentUser = $_SESSION['username'];
            $mysql_query = "select * from crop_details where username = '$currentUser'";
            $established_connection = $mysql_connection -> query($mysql_query);
            while ($row = $established_connection -> fetch_assoc()) {
                echo "<tr>";
                echo "<td>".$row['crop_name']. "</td>";
                echo "<td>".$row['production']. "</td>";
                echo "<td>".$row['growth_status']. "</td>";
                echo "<td>".$row['fertilizers_used']. "</td>";
                echo "<td>".$row['reproduction_type']. "</td>";
                echo "<td>".$row['crop_cycle']. "</td>";
                echo "<td>".$row['seasons']. "</td>";
                echo "<td>".$row['farmer_rate']. "</td>";
                echo "<td>".$row['province']. "</td>";
                echo "<td>".$row['time']. "</td>";
                echo "</tr>";
            }
            ?>
            </tbody>
            
        </table>
    </div>

    <!--Link of custom js file-->
    <script src="js/script.js"></script>
</body>
</html>