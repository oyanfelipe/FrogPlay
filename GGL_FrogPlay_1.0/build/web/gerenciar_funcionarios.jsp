<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DAO.FuncionarioDAO"%>
<%@page import="br.com.DTO.FuncionarioDTO"%>
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
            <div class="card bg-dark">
                <h1 class="text-success text-center">Gerenciar Funcionários</h1>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card bg-dark text-light">
                        <div class="card-header bg-dark text-light">
                            <a href="cadastrar_funcionario.jsp" class="btn btn-success form-control">Cadastrar Funcionário</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card bg-dark text-light">
                        <div class="card-header bg-dark text-light">
                            <a href="" class="btn btn-success form-control " data-toggle="collapse"
                               data-target="#listar-funcionarios">Listar Funcionários</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="listar-funcionarios" class="collapse">
                <div class="container p-3 my-3 border border-success bg-dark">
                    <h1 class="text-light text-center">Funcionários Cadastrados</h1>
                    <table class="table table-dark table-striped">
                        <thead>
                            <tr>
                                <th scope="col"><h6 class="text-success">ID</h6></th>
                                <th scope="col"><h6 class="text-success">Usuario</h6></th>
                                <th scope="col"><h6 class="text-success">Ações</h6></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                // Abertura da tentativa do método listar
                                try {
                                //instancia da pagina de comuninação com o banco de dados
                                    FuncionarioDAO objFuncionarioDAO = new FuncionarioDAO();
                                    //chamando a função arraylist e executando dentro dela a função de pesquisar funcionário
                                    ArrayList<FuncionarioDTO> lista = objFuncionarioDAO.PesquisarFuncionario();
                                    //navegação entre os dados da lista obtida a cima
                                    for (int num = 0; num < lista.size(); num++) {
                                    //quebra do código java para exibir o html de forma plena. Com suas funções em cada linha.
                            %><tr><%
                                //pegando o código do funcionário
                                %><th scope="row"><% out.print(lista.get(num).getId_funcionario());%></th><%
                                    //pegando o nome do usuário
                                %><td><% out.print(lista.get(num).getUsuario());%></td> <%
                                    //botoes de editar e apagar dentro do código java com quebra dentro do out.print
                                    //pra editar colocamos no href os dados que foram obtidos dentro da pesquisa para enviar para as páginas de alteração e exclusão
                                    //a pagina de exclusão ela tem um collapse imbutida dentro dela para chamar uma confirmação, perguntando se realmente quer deletar
                                %><td ><% out.print("<a class='btn btn-outline-success' href='editar_funcionario.jsp?id=" + lista.get(num).getId_funcionario() + "&usuario=" + lista.get(num).getUsuario() + "&senha=" + lista.get(num).getSenha() + "&salario=" + lista.get(num).getSalario() + "&cargo=" + lista.get(num).getCargo() + "&nome_completo=" + lista.get(num).getNome_completo() + "&email=" + lista.get(num).getEmail() + "&telefone=" + lista.get(num).getTelefone() + "'> Alterar </a> <a class='btn btn-outline-danger' data-toggle='collapse' data-target='#demo" + lista.get(num).getId_funcionario() + "'> Excluir</a>");
                                // chamamento da tela com os botões da confirmação para apagar (div)
                                %><td><% out.print("<div id='demo" + lista.get(num).getId_funcionario() + "' class='collapse' style=''><p>Tem certeza que quer apagar este registro?</p><a class='btn btn-danger' data-toggle='collapse' data-target='#demo" + lista.get(num).getId_funcionario() + "'>Não</a> <a class='btn btn-success' href='d_funcionario.jsp?id=" + lista.get(num).getId_funcionario() + "'>Sim</a></div>");

                                    %></tr><%                                                }
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