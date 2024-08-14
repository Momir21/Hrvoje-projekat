<?php

    include 'db.php';

    if(isset($_SERVER['korisnik_id'])){
        header("Location:../pocetna.php");
        exit();

        if($_SERVER['REQUEST_METHOD'] === 'POST') {

            $emial = $_POST['email'];
            $sifra = $_POST['sifra'];

            $upit = "SELECT ime, prezime FROM korisnici  WHERE email = '$email'";

            $rezultat = mysqli_query($conn, $upit);

            if(mysqli_num_rows($rezultat) === 1) {
                $korisnik = mysqli_fetch_array($rezultat);
                if(password_verify($sifra, $korisnik['sifra'])){

                    $_SESSION['korisnik_id'] = $korisnik['id'];
                    header("Location:../pocetna.php");
                    exit();
                }

            } else {

                echo "Niste se ulogovali";
            }
        }
    }
?>