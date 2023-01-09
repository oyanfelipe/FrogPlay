
package br.com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 * criação da parte de conexao (driver, url, porta, user, pass)
 * 
 */
public class ConexaoDAO {
    public Connection conexaoBD() throws ClassNotFoundException{
        Connection con = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            String url = "jdbc:mysql://localhost:3306/dbfrogplay?user=root&password=";
            con = DriverManager.getConnection(url);
        } catch (SQLException e) {
            
        }
        return con;
    }
}
