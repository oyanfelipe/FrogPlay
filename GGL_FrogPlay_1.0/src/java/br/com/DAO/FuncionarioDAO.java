package br.com.DAO;

import br.com.DTO.FuncionarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author Brendon
 */
public class FuncionarioDAO {
    //instanciamento da classe de conexão
    Connection con;
    
    //construtor de SQL
    PreparedStatement pstm;
    //receber dados quando necessário
    ResultSet rs;
    //instanciamento da função de array
    ArrayList<FuncionarioDTO> lista = new ArrayList<>();
    
    //metodo cadastrar
    public void CadastrarFuncionario(FuncionarioDTO objFuncionarioDTO) throws ClassNotFoundException{
        String sql = null;
        con = new ConexaoDAO().conexaoBD();
        
        try {
            sql = "INSERT INTO tb_funcionario (id_funcionario, usuario, senha, salario, cargo, nome_completo, email, telefone) VALUES (NULL,?,?,?,?,?,?,?)";
            pstm = con.prepareStatement(sql);     
            pstm.setString(1, objFuncionarioDTO.getUsuario());
            pstm.setString(2, objFuncionarioDTO.getSenha());
            pstm.setString(3, objFuncionarioDTO.getSalario());
            pstm.setString(4, objFuncionarioDTO.getCargo());
            pstm.setString(5, objFuncionarioDTO.getNome_completo());
            pstm.setString(6, objFuncionarioDTO.getEmail());
            pstm.setString(7, objFuncionarioDTO.getTelefone());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    //metodo listar
    public ArrayList<FuncionarioDTO> PesquisarFuncionario() throws ClassNotFoundException{
        String sql = "select * from tb_funcionario";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
            while (rs.next()) {                
                FuncionarioDTO objFuncionarioDTO = new FuncionarioDTO();
                objFuncionarioDTO.setId_funcionario(rs.getInt("id_funcionario"));
                objFuncionarioDTO.setUsuario(rs.getString("usuario"));
                objFuncionarioDTO.setSenha(rs.getString("senha"));
                objFuncionarioDTO.setSalario(rs.getString("salario"));
                objFuncionarioDTO.setCargo(rs.getString("cargo"));
                objFuncionarioDTO.setNome_completo(rs.getString("nome_completo"));
                objFuncionarioDTO.setEmail(rs.getString("email"));
                objFuncionarioDTO.setTelefone(rs.getString("telefone"));
                
                lista.add(objFuncionarioDTO);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
    //metodo alterar
    public void AlterarFuncionario(FuncionarioDTO objFuncionarioDTO) throws ClassNotFoundException{
        String sql = "UPDATE tb_funcionario SET usuario=?, senha=?, salario=?, cargo=?, nome_completo=?, email=?, telefone=? WHERE id_funcionario=?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objFuncionarioDTO.getUsuario());
            pstm.setString(2, objFuncionarioDTO.getSenha());
            pstm.setString(3, objFuncionarioDTO.getSalario());
            pstm.setString(4, objFuncionarioDTO.getCargo());
            pstm.setString(5, objFuncionarioDTO.getNome_completo());
            pstm.setString(6, objFuncionarioDTO.getEmail());
            pstm.setString(7, objFuncionarioDTO.getTelefone());
            pstm.setInt(8,objFuncionarioDTO.getId_funcionario());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
    }
    
    //metodo excluir
    public void ExcluirFuncionario(FuncionarioDTO objFuncionarioDTO) throws ClassNotFoundException{
        String sql = "delete from tb_funcionario where id_funcionario =?";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1,objFuncionarioDTO.getId_funcionario());
            pstm.execute();
            pstm.close();
        } catch (Exception e) {
        }
          
    }
}
