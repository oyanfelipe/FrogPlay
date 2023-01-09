package br.com.DTO;

public class VendasDTO {
    private int id_venda;
    private String nome_produto;
    private String nome_cliente;
    private int quantidade_compra;
    private float total;
    private String forma_pgto;

    /**
     * @return the id_venda
     */
    public int getId_venda() {
        return id_venda;
    }

    /**
     * @param id_venda the id_venda to set
     */
    public void setId_venda(int id_venda) {
        this.id_venda = id_venda;
    }

    /**
     * @return the nome_produto
     */
    public String getNome_produto() {
        return nome_produto;
    }

    /**
     * @param nome_produto the nome_produto to set
     */
    public void setNome_produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    /**
     * @return the nome_cliente
     */
    public String getNome_cliente() {
        return nome_cliente;
    }

    /**
     * @param nome_cliente the nome_cliente to set
     */
    public void setNome_cliente(String nome_cliente) {
        this.nome_cliente = nome_cliente;
    }

    /**
     * @return the quantidade_compra
     */
    public int getQuantidade_compra() {
        return quantidade_compra;
    }

    /**
     * @param quantidade_compra the quantidade_compra to set
     */
    public void setQuantidade_compra(int quantidade_compra) {
        this.quantidade_compra = quantidade_compra;
    }

    /**
     * @return the total
     */
    public float getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(float total) {
        this.total = total;
    }

    /**
     * @return the forma_pgto
     */
    public String getForma_pgto() {
        return forma_pgto;
    }

    /**
     * @param forma_pgto the forma_pgto to set
     */
    public void setForma_pgto(String forma_pgto) {
        this.forma_pgto = forma_pgto;
    }
}