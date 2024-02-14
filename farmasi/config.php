<?php
$servername = "localhost";
$username = "root";
$password = ""; //tiada semicolon
$database = "farmasi"; //tiada database

// Create connection
$conn = mysqli_connect("localhost", "root", "") or die ("databases not connected"); //syntax error
$db = mysqli_select_db($conn, "farmasi"); //tiada $conn & syntax error

?>