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
                    <a class="nav-link" href="#">Cadastrar Produto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Venda/Compra de Produto</a>
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
            <h1 class="text-success text-center">Venda</h1>
            <%
                // primeira verificação: verificar se alguma quantidade foi digitada para compra
                String quantidade_teste = request.getParameter("quantidade_compra");
                
                if (quantidade_teste != "") {
               //dando certo, executa este código
               //aqui no começo faremos o setamento dos dados para obter as quantidades inteiras
                     
                      Integer quantidade_de_compra = Integer.parseInt(request.getParameter("quantidade_compra"));
                Integer quantidade_estoque = Integer.parseInt(request.getParameter("quantidade_estoque"));
                Integer quantidade_nova = Integer.parseInt(request.getParameter("quantidade_estoque"));
                
                //outra verificação: se a quantidade de compra for menor ou igual a quantidade em estoque e sendo maior que zero executa o formulário de venda
                     if (quantidade_de_compra <= quantidade_estoque && quantidade_de_compra > 0) {
                        Float total = Float.parseFloat(request.getParameter("preco")) * quantidade_de_compra;
                        quantidade_nova = quantidade_nova - quantidade_de_compra;


            %> <div class="row">
                <div class="container align-self-center d-flex justify-content-center">

                    <form action="c_venda.jsp" method="POST">

                        <label class="text-light">ID do Produto: <%=request.getParameter("id_produto")%></label><br>

                        <input type="text" id="disabledInput" hidden="" name="id" value="<%=request.getParameter("id_produto")%>">
                        <input type="text" id="disabledInput" hidden="" name="quantidade_estoque" value="<%=quantidade_nova%>">

                        <label class="text-success">Nome do Produto: <%=request.getParameter("nome_produto")%></label>
                        <input type="text" id="disabledInput" name="nome_produto" hidden="" value="<%=request.getParameter("nome_produto")%>"><br>

                        <label class="text-light">Nome do Cliente:</label><Br>
                        <input type="text" id="disabledInput" class="form-control" name="nome_cliente"><Br>

                        <label class="text-light">Quantidade de compra: <%=request.getParameter("quantidade_compra")%></label><Br>
                        <input type="number" id="disabledInput" name="quantidade_compra" hidden="" value="<%=request.getParameter("quantidade_compra")%>">

                        <label class="text-light">Preço Total:</label><Br>
                        <label class="text-light">R$ <%out.print(total);%></label>
                        <input type="text"  name="total" size="17" hidden="" value="<%=total%>"><br>

                        <label for="cars" class="text-light">Forma de Pagamento</label>
                        <select id="cars" name="forma_pgto" class="form-control">
                            <option value="Dinheiro">Dinheiro</option>
                            <option value="Cartão de Crédito">Cartão de Crédito</option>
                            <option value="Cartão de Débito">Cartão de Débito</option>
                            <option value="PIX">PIX</option>
                        </select>
                        <br>
                        <button type="submit" class="btn btn-success">Confirmar Venda</button>
                        <br><br><br><br><br>
                    </form>
                </div>
                <br>
            </div>
        </div>
        <Br><Br> <%
        } else if (quantidade_de_compra <= 0) { // agora se a quantidade de compra for negativa ou igual a zero, tem o aviso

        %><div class="alert alert-danger">
            <strong>Opa!</strong> Você tentou comprar uma quantidade negativa ou nula. <br> Volte e tente novamente. <a href="http://localhost:8080/GGL_FrogPlay_1.0/vendas/tela_vendas.jsp" class="text-danger"> Clique aqui para voltar.</a>
        </div><%            } else { //e no ultimo caso uma quantidade maior que tem no estoque

        %><div class="alert alert-danger">
            <strong>Opa!</strong> Você tentou comprar uma quantidade maior do que tem disponivel em estoque!!<br> Volte e tente novamente. <a href="http://localhost:8080/GGL_FrogPlay_1.0/vendas/tela_vendas.jsp" class="text-danger"> Clique aqui para voltar.</a>
        </div><%                    }
                    
           
                     } else { //e se não digitar nada, quebra toda a parte de conta e diz que não tem valor nenhum. (seria equivalente ao "Null")
%><div class="alert alert-danger">
                <strong>Opa!</strong> Você tentou fazer uma compra sem dizer a quantidade.<br> Volte e tente novamente. <a href="http://localhost:8080/GGL_FrogPlay_1.0/vendas/tela_vendas.jsp" class="text-danger"> Clique aqui para voltar.</a>
            </div><%
}
        %>

    </div>

    <footer class="py-3 fixed-bottom border border-success bg-dark text-light" style="margin-top: 100px">
        <div class="container">
            <p class="m-0 text-center text-light">Todos os direitos reservados © | SGGEV - FrogPlay 1.0</p>
        </div>
    </footer>
</body>