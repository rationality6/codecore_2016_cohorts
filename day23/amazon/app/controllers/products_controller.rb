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

end
