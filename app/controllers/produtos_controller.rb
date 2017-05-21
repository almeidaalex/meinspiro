class ProdutosController < ApplicationController

    def index 
        @produtos = Produto.order :nome
    end

    def create
        valores = params.require(:produto).permit :nome, :descricao, :preco, :quantidade
        produto = Produto.create valores
        redirect_to produtos_url
    end

    def busca
        nome = "%#{params[:nome]}%"
        Produtos.where "nome lile ?", nome
    end

    def destroy
        id = params[:id]
        Produto.destroy id
        redirect_to produtos_url
    end
end
