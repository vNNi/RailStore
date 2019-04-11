class ProductsController < ApplicationController
    def index
        @products = Produto.order :name
    end
    def create 
        products = params.require(:product).permit(:name, :description, :price, :quantity)
        if(products)
            Produto.create(products)
        elsif
            redirect_to('/products/new')
        end
        redirect_to('/');
    end
    def destroy
        id = params[:id].to_i()
        if(id)
            Produto.destroy(id)
            redirect_to root_path
        elsif
            redirect_to root_path
        end
    end
end
