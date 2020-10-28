<?php
    $dbHost='localhost';
    $dbUser='root';
    $dbPassword='';
    $dbName='resume';

//create connection

    $conn=mysqli_connect($dbHost, $dbUser, $dbPassword, $dbName);
    session_start();
//check connection

if (!$conn) 
{
    die("connection failed: ".mysqli_connect_error());
}

?>