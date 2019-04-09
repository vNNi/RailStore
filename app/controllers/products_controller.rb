class ProductsController < ApplicationController
    def index
        @products = Produto.order :name
    end
end
