<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.bundle.min.js"></script>
    <title>Log in</title>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="text-center">
            <div class="card-title">Log in</div>
            </div>
            <div class="card-body">
                <form action="pocetna.php" method= "post">
                    <div class="form-group">
                        <label for ="email">E-mail</label>
                        <input type ="text" class ="form-control" id ="email" name ="email" required>  
                    </div>
                    <div class="form-group">
                        <label for ="sifra"> Sifra</label>
                        <input type ="password" class ="form-control" id ="sifra" name ="sifra" required>
                    </div>
                    <div class="text-center">
                        <button type ="submit" class ="btn btn-success">Prijavi se</button>
                    </div>
                    <div class="text-center">
                        <a href="register.php">Nemate nalog? Registruj se</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>