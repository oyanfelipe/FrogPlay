<!DOCTYPE html>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>?FrogPlay?</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<body>
    <nav class="navbar  navbar-expand-lg navbar-dark bg-dark fixed-top">
        <img class="navbar-brand" src="img/logo.png" width="35" height="auto" alt="logomarca">
        <h5 class="navbar-brand text-success">Frog Play</h5>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/GGL_FrogPlay_1.0/produto/cadastrar_produto.jsp">Cadastrar Produto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/GGL_FrogPlay_1.0/vendas/tela_vendas.jsp">Venda/Compra de Produto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="LogoutServlet">Sair</a>
                </li>
            </ul>
        </div>
    </nav>
    <br><br><br>
    <div class="container p-3 my-3 border border-success bg-dark">
        <div class="card bg-dark">
            <h1 class="text-success text-center">Editar Funcionários</h1>
        </div>
        <div class="row">
            <div class="container align-self-center d-flex justify-content-center">
                <form action="c_funcionario.jsp" method="POST">

                    <label class="text-light">ID Funcionário</label><Br>
                    <input type="text" id="disabledInput" disabled="" value=""><Br>

                    <label class="text-light">Usuario</label><Br>
                    <input type="text" id="disabledInput" name="usuario"><Br>

                    <label class="text-light">Senha</label><Br>
                    <input type="password" id="disabledInput" name="senha"><Br>

                    <label class="text-light">Salario</label><Br>
                    <input type="text" id="disabledInput" name="salario"><Br>

                    <label class="text-light">Cargo</label><Br>
                    <input type="text" id="disabledInput" name="cargo"><Br>

                    <label class="text-light">Nome Completo</label><Br>
                    <input type="text" id="disabledInput" name="nome_completo"><Br>

                    <label class="text-light">E-mail</label><Br>
                    <input type="text" id="disabledInput" name="email"><Br>

                    <label class="text-light">Telefone</label><Br>
                    <input type="text" id="disabledInput" name="telefone"><Br>
                    <Br><Br>
                    <button type="submit" class="btn btn-success">Cadastrar</button>
                    <br><br><br><br><br><br>
                </form>
            </div>
            <br>
        </div>
    </div>
    <footer class="py-3 fixed-bottom border border-success bg-dark text-light" style="margin-top: 100px">
        <div class="container">
            <p class="m-0 text-center text-light">Todos os direitos reservados © | SGGEV - FrogPlay 1.0</p>
        </div>
    </footer>
</body>

