class ProductsController < ApplicationController
  def index
    @products = Product.order(created_at: :desc)
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def destroy
    pro = Product.find params[:id]
    pro.destroy
  end

  def new
    @product = Product.new
  end

  def create
    pra = params.require(:product).permit(:category_is, :title, :description, :goal)
    @product = Product.new(pra)

    if @product.save
      redirect_to product_path(@product)
    end
  end
end
