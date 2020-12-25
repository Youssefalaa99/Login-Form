<?php
session_start();
include_once 'connection.php';
$email = $_POST["email"]; 
$pass = $_POST["psw"];
$pass_encrypt = md5($pass);
$exist_query = "SELECT * FROM user WHERE email='$email';";
$result = $conn->query($exist_query);
//Check if record exists
if($email == ""){
    echo '<script type="text/javascript"> alert ("Type in your email!"); window.history.back(); </script>';
}
elseif($pass == ""){
    echo '<script type="text/javascript"> alert ("Type in your password!"); window.history.back(); </script>';
}
elseif(mysqli_num_rows($result) > 0)
{   
    //Record exists, check for password
    $pass_query = "SELECT * FROM user WHERE email='$email' AND password='$pass_encrypt';";
    if(mysqli_num_rows($conn->query($pass_query)) > 0)
    {   
        $name_query = "SELECT name FROM user WHERE email='$email';";
        $name = $conn->query($name_query);
        $_SESSION["name"] = $name->fetch_assoc()["name"];
        header('Location: Dashboard.php');
        exit();
    }
    else
    {
        echo '<script type="text/javascript"> alert ("Incorrect Email or Password!"); window.history.back(); </script>';   
    }
}
else{
    echo '<script type="text/javascript"> alert ("Account does not exist!"); window.history.back(); </script>';
}


$conn->close();
?>