class ProductsController < ApplicationController
    def index
        @product = Product.all
    end

    def show
        @product = Product.find(params[:id])
    end

    def edit
        @product = Product.find(params[:id])
    end

    def destroy
        product = Product.find(params[:id])
        product.destroy
        redirect_to products_path
    end

    def update
        @product = Product.find(params[:id])
        if @product.update params.require(:product).permit([:name, :price])
            redirect_to product_path(@product)
        else
            render :edit
        end
    end
end
