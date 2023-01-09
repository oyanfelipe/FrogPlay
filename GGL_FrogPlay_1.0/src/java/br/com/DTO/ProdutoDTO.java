package br.com.DTO;

public class ProdutoDTO {
    private int id_produto;
    private String nome_produto;
    private String produtora;
    private int quantidade_estoque;
    private float preco;

    /**
     * @return the id_produto
     */
    public int getId_produto() {
        return id_produto;
    }

    /**
     * @param id_produto the id_produto to set
     */
    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
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
     * @return the produtora
     */
    public String getProdutora() {
        return produtora;
    }

    /**
     * @param produtora the produtora to set
     */
    public void setProdutora(String produtora) {
        this.produtora = produtora;
    }

    /**
     * @return the quantidade_estoque
     */
    public int getQuantidade_estoque() {
        return quantidade_estoque;
    }

    /**
     * @param quantidade_estoque the quantidade_estoque to set
     */
    public void setQuantidade_estoque(int quantidade_estoque) {
        this.quantidade_estoque = quantidade_estoque;
    }

    /**
     * @return the preco
     */
    public float getPreco() {
        return preco;
    }

    /**
     * @param preco the preco to set
     */
    public void setPreco(float preco) {
        this.preco = preco;
    }
}
