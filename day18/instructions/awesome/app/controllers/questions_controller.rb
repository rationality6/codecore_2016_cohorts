class QuestionsController < ApplicationController
    def new
        @question = Question.new
    end

    def create
        question_params = params.require(:question).permit([:title, :body])
        @question = Question.new question_params
        if @question.save
            # render json: params
            redirect_to question_path(@question)
            # redirect_to @question
        else
            render :new
        end

        # render json: params
    end

    def show
        @question = Question.find(params[:id])
    end

    def index
        @questions = Question.order(created_at: :desc)
    end

    def edit
        @question = Question.find(params[:id])
    end

    def update
        @question = Question.find(params[:id])
        if @question.update params.require(:question).permit([:title, :body])
            redirect_to question_path(@question)
        else
            render :edit
        end
    end

    def destroy
        question = Question.find(params[:id])
        question.destroy
        redirect_to questions_path
    end
end
