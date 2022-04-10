<?php
    include('./database_connection.php');
    $firstname = $_POST['firstname'];
    $middlename = $_POST['middlename'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $username = $_POST['username'];
    $dateofbirth = $_POST['dateofbirth'];
    $phonenumber = $_POST['phonenumber'];
    $password = $_POST['password'];
    $confirmpassword = $_POST['confirmpassword'];
    $nationality = $_POST['nationality'];
    $identity = $_POST['identity'];
    $education = $_POST['education'];
    $marialstatus = $_POST['marialStatus'];
    $fathername = $_POST['fathername'];
    $mothername = $_POST['mothername'];
    $spousename = $_POST['spousename'];
    $childname = $_POST['childname'];
    $familymember = $_POST['familymember'];
    $province = $_POST['province'];
    $district = $_POST['district'];
    $city = $_POST['city'];
    $street = $_POST['street'];
    $ward = $_POST['ward'];
    $gender = $_POST['gender'];

    if($password === $confirmpassword) {
        $mysql_query = "INSERT INTO farmer_details (firstname, middlename, lastname, email, username, dob, phone_number, password, nationality, citizenship_number, education, marital_status, father_name, mother_name, spouse_name, child_name, family_member, province, district, city, street, ward, gender) values ('$firstname', '$middlename', '$lastname', '$email', '$username', '$dateofbirth', '$phonenumber', '$password', '$nationality', '$identity', '$education', '$marialstatus', '$fathername', '$mothername', '$spousename', '$childname', '$familymember', '$province', '$district', '$city', '$street', '$ward', '$gender')";
        $mysql_connection -> query($mysql_query);
        header('Location: ../extras/login.html');
    }
?>