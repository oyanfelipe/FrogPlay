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
        <div class="card border border-success bg-light">
            <div class="card-header border border-success bg-dark text-light">Bem vindo, Administrador!</div>
            <div class="card-body bg-dark">
                <div class="row">
                    <div class="col-md-4">
                        <div id="accordion" class=""></div>
                        <div class="card border border-success bg-dark text-light">
                            <div class="card-header border border-success bg-dark text-light" data-toggle="collapse"
                                href="#funcionamento">
                                Funcionamento do Sistema
                            </div>
                            <div id="funcionamento" class="collapse" data-parent="#accordion">
                                <div class="card-body border border-success bg-dark text-light">
                                    <a href="gerenciar_funcionarios.jsp" class="btn btn-success form-control">Gerenciar funcionários</a>
                                    <a href="produto/gerenciar_produtos.jsp" class="btn btn-success form-control" style="margin-top: 2px">Gerenciar Produtos</a>
                                </div>
                                <div class="card-footer border border-success bg-dark text-light">Atalho para as principais funções do sistema.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div id="accordion" class=""></div>
                        <div class="card border border-success bg-dark text-light">
                            <div class="card-header border border-success bg-dark text-light" data-toggle="collapse"
                                href="#sobrenos">
                                Sobre Nós
                            </div>
                            <div id="sobrenos" class="collapse" data-parent="#accordion">
                                <div class="card-body border border-success bg-dark text-light">
                                    A FrogPlay é uma loja especializada em jogos em mídia física. Temos todos os
                                    principais títulos dos principais consoles disponíveis atualmente.<br>
                                    Seja para Playstation 4 e 5. Xbox Series X|S e Xbox One. Nintendo Switch.
                                </div>
                                <div class="card-footer border border-success bg-dark text-light">Nossa missão é levar os principais lançamentos na mão dos nossos jogadores em tempo recorde.</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div id="accordion" class=""></div>
                        <div class="card border border-success bg-dark text-light">
                            <div class="card-header border border-success bg-dark text-light" data-toggle="collapse"
                                href="#identificacao">
                                Identificação
                            </div>
                            <div id="identificacao" class="collapse" data-parent="#accordion">
                                <div class="card-body border border-success bg-dark text-light">
                                    • Avaliação AV1 e AV2<br>
                                    • FAETERJ Paracambi<br>
                                    • Brendon dos Santos Amarante<br>
                                    • Gabriel Mendes de Oliveira<br>
                                    • Gustavo de Souza Mendes<br>
                                    • Humberto Brito de Carvalho Junior<br>
                                    • Yan Felipe Silva de Oliveira Martins
                                </div>
                                <div class="card-footer border border-success bg-dark text-light">Professor: Fábio</div>
                            </div>
                        </div>
                    </div>
                    <br>
                </div>
            </div>
        </div>
    </div>
    </div>
    </div>

    <footer class="py-3 fixed-bottom border border-success bg-dark text-light" style="margin-top: 100px">
        <div class="container">
            <p class="m-0 text-center text-light">Todos os direitos reservados © | SGGEV - FrogPlay 1.0</p>
        </div>
    </footer>
</body>

</html>