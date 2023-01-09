<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.ProdutoDAO"%>
<%@page import="br.com.DTO.ProdutoDTO"%>
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
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/GGL_FrogPlay_1.0/home.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="http://localhost:8080/GGL_FrogPlay_1.0/produto/cadastrar_produto.jsp">Cadastrar Produto</a>
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
                <h1 class="text-success text-center">Gerenciar Produtos</h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card bg-dark text-light">
                        <div class="card-header bg-dark text-light">
                            <a href="cadastrar_produto.jsp" class="btn btn-success form-control">Cadastrar Produto</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card bg-dark text-light">
                        <div class="card-header bg-dark text-light">
                            <a href="" class="btn btn-success form-control " data-toggle="collapse"
                               data-target="#listar-produtos">Listar Produtos</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="listar-produtos" class="collapse">
                <div class="container p-3 my-3 border border-success bg-dark">
                    <h1 class="text-light text-center">Produtos Cadastrados</h1>
                    <table class="table table-dark table-striped">
                        <thead>
                            <tr>
                                <th scope="col"><h6 class="text-success">ID</h6></th>
                                <th scope="col"><h6 class="text-success">Produto</h6></th>
                                <th scope="col"><h6 class="text-success">Ações</h6></th>
                                <th scope="col"> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                try {
                                    ProdutoDAO objProdutoDAO = new ProdutoDAO();
                                    ArrayList<ProdutoDTO> lista = objProdutoDAO.PesquisarProduto();
                                    for (int num = 0; num < lista.size(); num++) {
                                        %><tr><%
                                            %> <th scope="row"><%out.print(lista.get(num).getId_produto());%></th><%
                                            %> <td><%out.print(lista.get(num).getNome_produto());%></td><%
                                            %> <td><%out.print("<a class='btn btn-outline-success' href='editar_produto.jsp?id=" + lista.get(num).getId_produto()+ "&nome_produto=" + lista.get(num).getNome_produto() + "&produtora=" +lista.get(num).getProdutora() + "&quantidade_estoque=" +lista.get(num).getQuantidade_estoque() + "&preco=" +lista.get(num).getPreco() + "'>Alterar</a> <a class='btn btn-outline-danger' data-toggle='collapse' data-target='#demo" + lista.get(num).getId_produto() + "'>Excluir</a>");%></td><%
                                            %> <td><%out.print("<div id='demo" + lista.get(num).getId_produto() + "' class='collapse'><p>Tem certeza que deseja apagar este registro?</p></a> <a class='btn btn-danger' data-toggle='collapse' data-target='#demo" + lista.get(num).getId_produto()+ "'>Não</a> <a class='btn btn-success' href='d_produto.jsp?id=" + lista.get(num).getId_produto()+ "'>Sim</a></div>");%></td><%
                                        %></tr><%
                                    }
                                } catch (Exception e) {
                                }
                                %>
                        </tbody>
                    </table>
                </div>
            </div>

            <footer class="py-3 fixed-bottom border border-success bg-dark text-light" style="margin-top: 100px">
                <div class="container">
                    <p class="m-0 text-center text-light">Todos os direitos reservados © | SGGEV - FrogPlay 1.0</p>
                </div>
            </footer>
    </body>
</html>