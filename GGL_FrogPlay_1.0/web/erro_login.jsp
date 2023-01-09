<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🐸FrogPlay🐸</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-sm bg-dark">
        <ul class="navbar-nav">
          <li class="navbar-brand">
            <img class="navbar-brand" src="img/logo.png" width="35" height="auto" alt="logomarca">
            <h5 class="navbar-brand text-success">Frog Play</h5>
          </li>
        </ul>
      </nav>
      <div class="container">
        <div class="row justify-content-center">
                <div class="center-block">
                    <br><br><br>
                    <div class="card card-container bg-light" style="width: 29rem;">
                        <div class="card-header bg-danger">
                            <div class="text-center">
                                <img class="rounded" src="img/logo.png" width="25%" height="auto" alt="logomarca">
                            <h1 class="text-light">Seu Login está incorreto!</h1>
                            <p class="text-light">Usuário ou Senha não foram encontrados em nossa base de dados!</p>

                            </div>
                        </div>
                        <div class="card-body">
                            <div class="center-block">
                            <p class="text-center">Clique no botão abaixo para tentar fazer o login novamente</p>
                            <a href="http://localhost:8080/GGL_FrogPlay_1.0/" class="btn btn-danger form-control">Tentar Novamente</a>

                            </div>
                        </div>
                      </div>
                </div>
          </div>
      </div>
</body>
</html>