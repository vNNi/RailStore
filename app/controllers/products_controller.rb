class ProductsController < ApplicationController
    def index
        @products = Produto.order :name
    end
    def create 
        products = params.require(:product).permit(:name, :description, :price, :quantity)
        if(products)
            Produto.create(products);
        elsif
            redirect_to('/products/new');
        end
        redirect_to('/');
    end
end
