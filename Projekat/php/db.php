<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "bankarski_sistem";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if($conn->connect_error) {
        die("Niste se povezali sa bazom podataka". $conn->connect_error);
    }
?>