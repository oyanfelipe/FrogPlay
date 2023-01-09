package br.com.DAO;

import br.com.DTO.VendasDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class VendasDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<VendasDTO> lista = new ArrayList<>();

    public void RegistrarVendas(VendasDTO objVendaDTO) throws ClassNotFoundException {
        String sql = null;
        con = new ConexaoDAO().conexaoBD();

        try {
            sql = "INSERT INTO tb_vendas (id_venda, nome_produto, nome_cliente, quantidade_compra, total, forma_pgto) VALUES (NULL, ?, ?, ?, ?, ?)";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objVendaDTO.getNome_produto());
            pstm.setString(2, objVendaDTO.getNome_cliente());
            pstm.setInt(3, objVendaDTO.getQuantidade_compra());
            pstm.setFloat(4, objVendaDTO.getTotal());
            pstm.setString(5, objVendaDTO.getForma_pgto());
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
        }
      }  
        

    public ArrayList<VendasDTO> ListarVendas() throws ClassNotFoundException {
        String sql = "select * from tb_vendas";
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                VendasDTO objProdutoDTO = new VendasDTO();
                objProdutoDTO.setId_venda(rs.getInt("id_venda"));
                objProdutoDTO.setNome_produto(rs.getString("nome_produto"));
                objProdutoDTO.setNome_cliente(rs.getString("nome_cliente"));
                objProdutoDTO.setForma_pgto(rs.getString("forma_pgto"));
                objProdutoDTO.setQuantidade_compra(rs.getInt("quantidade_compra"));
                objProdutoDTO.setTotal(rs.getFloat("total"));

                lista.add(objProdutoDTO);
            }

        } catch (SQLException e) {
        }
        return lista;
    }
}

