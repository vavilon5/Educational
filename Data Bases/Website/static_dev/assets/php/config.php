<?php
$host="localhost";
$port=3306;
$user="root";
$password="Voldemar314-271";
$dbname="message";

$con = mysqli_connect($host, $user, $password, $dbname, $port)
    or die ('Could not connect to the database server' . mysqli_connect_error());   

?>