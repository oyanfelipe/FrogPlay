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
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/GGL_FrogPlay_1.0/home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="#">Cadastrar Produto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/GGL_FrogPlay_1.0/vendas/tela_vendas.jsp">Venda/Compra de Produto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="http://localhost:8080/GGL_FrogPlay_1.0/LogoutServlet">Sair</a>
                </li>
            </ul>
        </div>
    </nav>
    <br><br><br>
    <div class="container p-3 my-3 border border-success bg-dark">
        <div class="card bg-dark">
            <h1 class="text-success text-center">Editar Produto</h1>
        </div>
        <div class="row">
            <div class="container align-self-center d-flex justify-content-center">
                <form action="a_produto.jsp" method="POST">

                    <label class="text-light">ID Produto:<%=request.getParameter("id")%></label><Br>
                    <input type="text" id="disabledInput" hidden="" name="id" value="<%=request.getParameter("id") %>"><Br><Br>

                    <label class="text-light">Nome do Produto:</label><Br>
                    <input type="text" id="disabledInput" name="nome_produto" value="<%=request.getParameter("nome_produto")%>"><Br><Br>

                    <label class="text-light">Nome da Produtora/Editora:</label><Br>
                    <input type="text" id="disabledInput" name="produtora" value="<%=request.getParameter("produtora")%>"><Br><Br>

                    <label class="text-light">Quantidade no Estoque:</label><Br>
                    <input type="number" id="disabledInput" name="quantidade_estoque" value="<%=request.getParameter("quantidade_estoque")%>"><Br><Br>

                    <label class="text-light">Preço do Produto:</label><Br>
                    <label class="text-light">R$</label>
                    <input type="text" id="disabledInput" name="preco" size="17" value="<%=request.getParameter("preco")%>"><Br><Br>

                    <button type="submit" class="btn btn-success">Alterar</button>
                    <br><br><br><br><br><br>
                </form>
            </div>
            <br>
        </div>
    </div>
    <Br><Br>
    <footer class="py-3 fixed-bottom border border-success bg-dark text-light" style="margin-top: 100px">
        <div class="container">
            <p class="m-0 text-center text-light">Todos os direitos reservados ©? | SGGEV - FrogPlay 1.0</p>
        </div>
    </footer>
</body>