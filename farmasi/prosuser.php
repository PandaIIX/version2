<?php 
include("config.php");

$name = $_POST['name'];
$username = $_POST['username'];
$email = $_POST['email'];
    $password = $_POST['password'];

$sql= "INSERT INTO user VALUES('','$name','$username','$email','$password','2')";
$result = mysqli_query($conn, $sql);

header("location:index.php");

?>  