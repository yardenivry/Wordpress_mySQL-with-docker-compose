<?php
header("contant-type: text");
$servername = "127.0.0.1";
$host = "db";
$username = "root";
$pw = "root";

$conn = new mysqli($host,$username,$pw);

if ($conn->connect_errno > 0) {
    echo $db->connect_error;
} else {
    echo "DB Connection successful\n\n";
}
