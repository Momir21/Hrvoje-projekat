<?php

    include "db.php";

    if($_SERVER['REQUEST_METHOD'] === 'POST') {
        $ime = $_POST['ime'];
        $prezime = $_POST['prezime'];
        $email = $_POST['email'];
        $sifra = $_POST['sifra'];
        $datum_rodjenja = $_POST['datum_rodjenja'];
        $adresa = $_POST['adresa'];
        $broj_telefona = $_POST['broj telefona'];
        $sifra_hash = password_hash($sifra, PASSWORD_DEFAULT);

        $upit = "INSERT INTO korisnici(ime, prezime, email, sifra, datum_rodjenja, adresa, broj_telefona) VALUES ('$ime', '$prezime', '$email', '$sifra_hash', '$datum_rodjenja',
         '$adresa', '$broj_telefona')";

        if(mysqli_query($conn, $upit)){

            echo "Uspesno ste se registrovali";
            header("Location:../index.php");
            exit();

        } else {

            echo "Neuspesna registracija";
        }

    }
?>