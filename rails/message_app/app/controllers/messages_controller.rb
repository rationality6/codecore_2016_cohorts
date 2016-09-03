class MessagesController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_message, only: [:destroy, :show, :edit, :update]

  def index
    @messages = Message.all
  end

  def show
    @comments = Comment.new
    @comment = Comment.all
  end

  def new
    @message = Message.new
  end

  def edit
  end

  def update
    if @message.update(message_params)
      redirect_to message_path(@message)
    else
      render :edit
    end
  end

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    respond_to do |format|
      if @message.save
        format.html { redirect_to '/', notice: 'Answer created successfully!' }
        format.js {render :create_success}
          else
        format.html {render 'new'}
        format.js {render :create_failure}
      end
    end
  end

  def destroy
    @message.destroy
    redirect_to root_path
  end

  private

  def find_message
    @message = Message.find params[:id]
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
