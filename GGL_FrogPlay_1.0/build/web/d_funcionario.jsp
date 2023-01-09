<%-- Document : c_funcionario Created on : 4 de nov de 2021, 03:14:49 Author : Brendon --%>
  <%@page import="java.util.Timer" %>
    <%@page import="java.util.TimerTask" %>
      <%@page import="br.com.DAO.FuncionarioDAO" %>
        <%@page import="br.com.DTO.FuncionarioDTO" %>
          <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <% response.setContentType("text/html;charset=UTF-8"); %>

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
                      <br><br><br><br><br>
                      <div class="card card-container bg-dark" style="width: 29rem;">
                        <div class="card-header bg-success">
                          <div class="text-center">
                            <img class="rounded" src="img/logo.png" width="25%" height="auto" alt="logomarca">
                          </div>
                        </div>
                        <div class="card-body">
                          <div class="container-centered aling-center">
                            <div class="text-center">
                              <script>
                                setTimeout(function () {
                                  $('#saida').fadeOut('fast');
                                }, 2000); // <-- time in milliseconds

                                $(document).ready(function () {
                                  setTimeout(carregar, 2000);
                                });

                                function carregar() {
                                  $('#carregar').show();
                                }
                              </script>
                              <div class="spinner-border text-success" id="saida"></div>
                            </div>
                            <% try { FuncionarioDTO objFuncionarioDTO=new FuncionarioDTO();
                              
                              objFuncionarioDTO.setId_funcionario(Integer.parseInt(request.getParameter("id")));
                              FuncionarioDAO objFuncionarioDAO=new FuncionarioDAO();
                              objFuncionarioDAO.ExcluirFuncionario(objFuncionarioDTO); 
                              out.println("'<div class='alert alert-success alert-dismissible' id='carregar' style='display:none;'><strong>Apagado com Sucesso</strong> <BR>Para visualizar os funcionarios ainda cadastrados <a href='gerenciar_funcionarios.jsp' class='alert-link'>clique aqui</a>.</div>'");
                          } catch (Exception e) {
                          out.println(e);
                          System.out.println(request.getParameter("id"));
                         
                          
                          }
                          %>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                </div>
              </body>

              </html>