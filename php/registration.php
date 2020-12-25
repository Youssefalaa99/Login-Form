<?php
session_start();
include_once 'connection.php';
$name = $_POST["name"]; 
$email = $_POST["email"]; 
$pass = $_POST["psw"];
$confirmed_pass = $_POST["psw-repeat"];
$pass_encrypt = md5($pass);
$exist_query = "SELECT * FROM user WHERE email='$email';";
$result = $conn->query($exist_query);
if($name == ""){
    echo '<script type="text/javascript"> alert ("Fill in your name!"); window.history.back(); </script>';
}
elseif($email == ""){
    echo '<script type="text/javascript"> alert ("Fill in your email!"); window.history.back(); </script>';
}
elseif($pass == ""){
    echo '<script type="text/javascript"> alert ("Fill in your password!"); window.history.back(); </script>';
}
elseif($confirmed_pass == ""){
    echo '<script type="text/javascript"> alert ("Confrim your password!"); window.history.back(); </script>';
}
elseif(mysqli_num_rows($result) > 0)
{   
    //Record exists
    echo "Email already exists!";
}
else{
    //Adding to DB
    $sql = "INSERT INTO user(email, name, password) VALUES('$email', '$name', '$pass_encrypt')";
    if($conn->query($sql) == true){
        $name_query = "SELECT name FROM user WHERE email='$email';";
        $name = $conn->query($name_query);
        $_SESSION["name"] = $name->fetch_assoc()["name"];
        header('Location: Dashboard.php');
        exit();
    }
    else{
        echo "Error:   " .$sql."<br>".$conn->error;
    }
}
$conn->close();
?>