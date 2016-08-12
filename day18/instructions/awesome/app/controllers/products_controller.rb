class ProductsController < ApplicationController
    def index
        @products = Product.order(created_at: :desc)
        @page = params[:page] || 0
    end

    def new
        @product = Product.new
    end

    def create
        product_params = params.require(:product).permit([:name, :price])
        @product = Product.new product_params
        if @product.save
            redirect_to product_path(@product)
        else
            render :new
        end
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
