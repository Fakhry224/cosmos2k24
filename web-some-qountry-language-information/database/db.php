<?php

$host = "db";
$user = "mysqliyes";
$pass = "mysqlino";
$database = "country_simple_mysqli";

$conn = new mysqli($host, $user, $pass, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
