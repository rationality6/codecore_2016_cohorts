class QuestionsController < ApplicationController
  # before_action takes in an arguement for a method (ideally private) that gets
  # executed just before the action and it's still within the request/response
  # cycle
  # before_action :find_question, except: [:create, :new, :index]
  before_action :find_question, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :destroy, :update, :new]
  before_action :authorize!, only: [:destroy, :update, :edit]

  QUESTIONS_PER_PAGE = 10

  # GET /questions/new
  def new

    # we need to instantiate a new Question object because it will help us build
    # a form to create a question easily
    # @question = Question.new title: "abc"
    @question = Question.new

    # render :new
    # render "/questions/new"
  end

  def create
    @question        = Question.new question_params
    @question.user   = current_user
    if @question.save
      # render :show

      # all the methods below will work to redirect the user:
      # redirect_to question_path({id: @question.id})
      # redirect_to question_path({id: @question})

      # flash[:notice] = "Question created successfully"
      redirect_to question_path(@question), notice: "Question created successfully"
      # redirect_to @question
    else
      flash[:alert] = "Please fix errors below before saving"
      render :new
    end
  end

  def show
    @answer = Answer.new
  end

  def index
    @questions = Question.order(created_at: :desc).
                          page(params[:page]).
                          per(QUESTIONS_PER_PAGE)
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
    redirect_to questions_path
  end

  private

  def find_question
    @question = Question.find params[:id]
  end

  def question_params
    # {
    #   "utf8": "✓",
    #   "authenticity_token": "...",
    #   "question": {
    #     "title": "asd fasdff",
    #     "body": "asdf asd f"
    #   },
    #   "commit": "Create Question",
    #   "controller": "questions",
    #   "action": "create"
    # }

    # we're using the `strong parameters` feature of Rails here to only allow
    # mass-assigning the attributes that we want to allow the user to set
    params.require(:question).permit([:title, :body, { tag_ids: [] }])
  end

  def authorize!
    redirect_to root_path, alert: 'access defined' unless can? :manage, @question
  end

  def user_vote
    @user_vote ||= @question.vote_for current_user
  end
  helper_method :user_vote

end
