package br.com.DAO;

import br.com.DTO.ProdutoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProdutoDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<ProdutoDTO> lista = new ArrayList<>();
    Integer quantidade = null;
    
    public void CadastrarProduto(ProdutoDTO objProdutoDTO) throws ClassNotFoundException{
        String sql = null;
        con = new ConexaoDAO().conexaoBD();
        
        try {
            sql = "INSERT INTO tb_produto (id_produto, nome_produto, produtora, quantidade_estoque, preco) VALUES (NULL, ?, ?, ?, ?)";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objProdutoDTO.getNome_produto());
            pstm.setString(2, objProdutoDTO.getProdutora());
            pstm.setInt(3, objProdutoDTO.getQuantidade_estoque());
            pstm.setFloat(4, objProdutoDTO.getPreco());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
        
    }
    
    public ArrayList<ProdutoDTO> PesquisarProduto() throws ClassNotFoundException{
        String sql = "select * from tb_produto";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);
            
           while (rs.next()) {
               ProdutoDTO objProdutoDTO = new ProdutoDTO();
               objProdutoDTO.setId_produto(rs.getInt("id_produto"));
               objProdutoDTO.setNome_produto(rs.getString("nome_produto"));
               objProdutoDTO.setProdutora(rs.getString("produtora"));
               objProdutoDTO.setQuantidade_estoque(rs.getInt("quantidade_estoque"));
               objProdutoDTO.setPreco(rs.getFloat("preco"));
               
               lista.add(objProdutoDTO);
           }
            
        } catch (SQLException e) {
        }
        return lista;
    }
    
    public void AlterarProduto(ProdutoDTO objProdutoDTO) throws ClassNotFoundException{
        String sql = "UPDATE tb_produto SET nome_produto=?, produtora=?, quantidade_estoque=?, preco=? WHERE id_produto=?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objProdutoDTO.getNome_produto());
            pstm.setString(2, objProdutoDTO.getProdutora());
            pstm.setInt(3, objProdutoDTO.getQuantidade_estoque());
            pstm.setFloat(4, objProdutoDTO.getPreco());
            pstm.setInt(5, objProdutoDTO.getId_produto());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
    
    public void ExcluirProduto(ProdutoDTO objProdutoDTO) throws ClassNotFoundException{
        String sql = "delete from tb_produto where id_produto =?";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objProdutoDTO.getId_produto());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
    }
    
    public void AlterarQuantidade(ProdutoDTO objProdutoDTO) throws ClassNotFoundException{
        String sql = "UPDATE tb_produto SET quantidade_estoque=? WHERE id_produto=?";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            
             pstm = con.prepareStatement(sql);
            pstm.setInt(1,objProdutoDTO.getQuantidade_estoque());
            pstm.setInt(2, objProdutoDTO.getId_produto());
            pstm.execute();
            pstm.close();
            
        } catch (SQLException e) {
        }
    }
}
