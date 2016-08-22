class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save
      redirect_to product_path(@product), notice: "Product created!"
    else
      flash[:alert] = "product not created, check errors below"
      render :new
    end
  end

  def show
    @review = Review.new
  end

  def index
    @products = Product.order("price ASC")
  end

  def edit
  end

  def update
    if @product.update product_params
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, {department_ids: []})
  end

  def find_product
    @product = Product.find params[:id]
  end
end
