class ReviewsController < ApplicationController
  def create
    @review = Review.new(params.require(:review).permit(:star_count,:body))
    @question = Question.find params[:question_id]
    @review.question = @question

    if @review.save
      redirect_to question_path(@question)
    else
      render '/questions/show'
    end

  end

  def destroy
    q = Question.find params[:question_id]
    a = Review.find params[:id]
    a.destroy
    redirect_to question_path(q)
  end
end
