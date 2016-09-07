class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    question = Question.find params[:question_id]
    like = Like.new user: current_user, question: question

    if !(can? :like, question)
      redirect_to root_path, alert: 'access denied'
    elsif like.save
      redirect_to question_path(question), notice: 'Thank you'
    else
      redirect_to question_path(question), alert: like.errors.full_messages.join(', ')
    end
  end

  def destroy
    like = Like.find(params[:id])
    question = Question.find(params[:question_id])

    if can? :destroy, like
      like.destroy
      redirect_to question_path(question), notice: "You have unliked this question."
    else
      redirect_to question_path(question)
    end
  end
end
