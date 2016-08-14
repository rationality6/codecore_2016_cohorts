class QuestionsController < ApplicationController
  before_action :find_question, only: [:show, :destroy, :edit, :update]

  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new question_params
    if @question.save
      redirect_to question_path(@question), notice: 'Question created successfully'
    else
      flash[:alert] = 'Please fix errors below before saving'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @question.update question_params
      redirect_to question_path(@question)
    else
      render :edit
    end
  end

  def destroy
    @question.destroy
    redirect_to root_path
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit([:title, :body])
  end
end
