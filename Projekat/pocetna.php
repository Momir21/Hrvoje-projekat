<?php

    session_start();

    if(!isset($_SESSION['korisnik_id'])) {
        header("Location: index.php");
        exit();
    }

    include 'php/db.php';

    $korisnik_id = $_SESSION['korisnik_id'];
    $upit = "SELECT ime, prezime FROM korisnici WHERE id = '$korisnik_id'";
    $rezultat = mysqli_query($conn, $upit);

    if(mysqli_num_rows($rezultat) === 1 ) {
        $korisnik = mysqli_fetch_assoc($rezultat);
        $ime_prezime = $korisnik['ime'] . ' ' . $korisnik['prezime']; 
    } else {

        $ime_prezime = "Nepoznati korisnik";
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banka</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container centrirano">
        <div class = "card text-center">
            <div class = "card-header">
                Dobordosli
            </div>
            <div class="card-body">
                <h5 class = "card-title"> Prijavljen korisnik <?php echo $ime_prezime; ?> </h5>
            </div>
        </div>
    </div>
</body>
</html>