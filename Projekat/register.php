<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registracija</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-title">Registracija</div>
            <div class="card-body">
                <form action = "php/registracija.php" method = "post">
                    <div class="form-group">
                        <label for = "ime">Ime</label>
                        <input type= "text" class = "form-control" id = "ime" name = "ime" required>
                    </div>
                    <div class="form-group">
                        <label for = "prezime">Prezime</label>
                        <input type= "text" class = "form-control" id = "prezime" name = "prezime" required>
                    </div>
                    <div class="form-group">
                        <label for = "email">E-mail</label>
                        <input type= "text" class = "form-control" id = "email" name = "email" required>
                    </div>
                    <div class="form-group">
                        <label for = "sifra">Sifra</label>
                        <input type= "passworf" class = "form-control" id = "sifra" name = "sifra" required>
                    </div>
                    <div class="form-group">
                        <label for = "datum_rodjenja">Datum rodjenja</label>
                        <input type= "date" class = "form-control" id = "datum_rodjenja" name = "datum_rodjenja" required>
                    </div>
                    <div class="form-group">
                        <label for = "broj_telefona">Broj telefona</label>
                        <input type= "text" class = "form-control" id = "broj_telefona" name = "broj_telefona" required>
                    </div>
                    <div class="form-group">
                        <label for = "adresa">Adresa</label>
                        <input type= "text" class = "form-control" id = "adresa" name = "adresa" required>
                    </div>
                    <button type = "submit" class= "btn btn-success">Registruj se</button>

                </form>
            </div>
        </div>
    </div>
    
</body>
</html>