class ReviewsController < ApplicationController

  def create
    @review = Review.new params.require(:review).permit(:body)
    @product = Product.find params[:product_id]
    @review.product = @product

    if @review.save
      redirect_to product_path(@product)
    else
      render 'products/show'
    end
  end

  def destroy
    pro = Product.find params[:product_id]
    r = Review.find params[:id]
    r.destroy
    redirect_to product_path(pro)
  end
end
