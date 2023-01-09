package br.com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Brendon
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        /* Pega as informações do form*/
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String password = request.getParameter("password");

        /* Tentando conexao com o banco*/
        try {
            /* Pegando a classe*/
            Class.forName("com.mysql.cj.jdbc.Driver");
            /* Link de conexão */
            String url = "jdbc:mysql://localhost:3306/dbfrogplay?user=root&password=";
            /* Criando a estrutura de conexão*/
            Connection con = DriverManager.getConnection(url);
            /* Criação do Statement (o que faz a interação com o banco junto com o link de conexão)*/
            Statement stm = con.createStatement();
            /* Executando a SQL junto com os dados obtidos no form anterior */
            ResultSet usuario = stm.executeQuery("select * from tb_funcionario where usuario='" + user + "' and senha='" + password + "' ");
            /* Se tiver algum resultado faça: */
            if (usuario.next()) {
                // se estiver certo manda pra home
                // pega o usuario logado do servidor
                HttpSession session = request.getSession();
                session.setAttribute("usuarioLogado", user);
                response.sendRedirect("home.jsp");
            } else {
                //se estiver errado manda pra tela de aviso
                response.sendRedirect("erro_login.jsp");
            }
        } catch (IOException | ClassNotFoundException | SQLException e) {
        }

    }

}
