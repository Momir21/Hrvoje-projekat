<?php

    include 'db.php';

    session_start();

    if(isset($_SESSION['korisnik_id'])){
        header("Location: ../data_page.php");
        exit();
    }

    if($_SERVER['REQUEST_METHOD'] === 'POST') {

        $email = $_POST['email'];
        $sifra = $_POST['sifra'];

        $upit = "SELECT * FROM korisnici 
        WHERE email = '$email'";

        $rezultat = mysqli_query($conn, $upit);

        if(mysqli_num_rows($rezultat) === 1) {
            $korisnik = mysqli_fetch_assoc($rezultat);
            if(password_verify($sifra, $korisnik['sifra'])){
                $_SESSION['korisnik_id'] = $korisnik['id'];
                header("Location: ../data.page.php");
                exit();
            }
        } 
    }

    mysqli_close($conn);
?>